.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .registers 2

    .prologue
    .line 2365
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 7

    .prologue
    .line 2384
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 2391
    :try_start_6
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_72

    .line 2398
    :goto_11
    :try_start_11
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget-object v5, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_REMOVED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/connectivity/Tethering;->access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_70

    .line 2409
    :goto_37
    :try_start_37
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const-string v2, "false"

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4c} :catch_52

    .line 2415
    :goto_4c
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2417
    :cond_51
    return-void

    .line 2410
    :catch_52
    move-exception v0

    .line 2411
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception update RA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2403
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_70
    move-exception v1

    goto :goto_37

    .line 2392
    :catch_72
    move-exception v1

    goto :goto_11
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 2369
    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_3f

    .line 2377
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2379
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2380
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4100(Lcom/android/server/connectivity/Tethering;)V

    .line 2381
    :goto_3e
    return-void

    .line 2370
    :catch_3f
    move-exception v0

    .line 2371
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2374
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_3e
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x7

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v6, 0x1

    .line 2422
    const-string v5, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TetheredState.processMessage what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/4 v4, 0x1

    .line 2424
    .local v4, "retValue":Z
    const/4 v1, 0x0

    .line 2425
    .local v1, "error":Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_2b4

    .line 2601
    :pswitch_28
    const/4 v4, 0x0

    :cond_29
    :goto_29
    move v5, v4

    .line 2604
    :goto_2a
    return v5

    .line 2437
    :pswitch_2b
    invoke-direct {p0}, cleanupUpstream()V

    .line 2439
    :try_start_2e
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3d} :catch_a0

    .line 2445
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2447
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_56

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_a7

    .line 2451
    :cond_56
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v5, :cond_6b

    .line 2452
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v5, v9}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 2453
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v5, v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2458
    :cond_6b
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_78

    .line 2459
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;)V

    .line 2462
    :cond_78
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2466
    :cond_83
    :goto_83
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Untethered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2440
    :catch_a0
    move-exception v0

    .line 2441
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v5, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto :goto_29

    .line 2463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a7
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_83

    .line 2464
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_83

    .line 2470
    :pswitch_b8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    move-object v2, v5

    check-cast v2, Ljava/util/HashMap;

    .line 2471
    .local v2, "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "iface"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2472
    .local v3, "newUpstreamIfaceName":Ljava/lang/String;
    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const-string v5, "actualIface"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    .line 2474
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-nez v5, :cond_db

    if-eqz v3, :cond_29

    .line 2477
    :cond_db
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v5, :cond_145

    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 2479
    :try_start_eb
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    const-string/jumbo v7, "true"

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_101} :catch_103

    goto/16 :goto_29

    .line 2482
    :catch_103
    move-exception v0

    .line 2483
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception update RA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    invoke-direct {p0}, cleanupUpstream()V

    .line 2486
    :try_start_123
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_132} :catch_2b0

    .line 2488
    :goto_132
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v5, v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2489
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    move v5, v6

    .line 2490
    goto/16 :goto_2a

    .line 2494
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_145
    invoke-direct {p0}, cleanupUpstream()V

    .line 2495
    if-eqz v3, :cond_19c

    .line 2499
    :try_start_14a
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v3}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    sget v8, Landroid/system/OsConstants;->AF_INET:I

    sget-object v9, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->UPSTREAM_IFACE_ADDED:Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    invoke-static {v5, v3, v7, v8, v9}, Lcom/android/server/connectivity/Tethering;->access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_168} :catch_1a2

    .line 2519
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 2540
    :cond_174
    :try_start_174
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    const-string/jumbo v7, "true"

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Landroid/os/INetworkManagementService;->joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_186} :catch_1e1

    .line 2547
    :goto_186
    :try_start_186
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    const-string/jumbo v7, "true"

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mActualUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Landroid/os/INetworkManagementService;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_19c} :catch_1ff

    .line 2567
    :cond_19c
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v3, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto/16 :goto_29

    .line 2505
    :catch_1a2
    move-exception v0

    .line 2506
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception enabling Nat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :try_start_1bf
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1ce} :catch_2ad

    .line 2511
    :goto_1ce
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v5, v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2512
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    move v5, v6

    .line 2513
    goto/16 :goto_2a

    .line 2541
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e1
    move-exception v0

    .line 2542
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception join multicast group: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_186

    .line 2548
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1ff
    move-exception v0

    .line 2549
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception update RA: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    invoke-direct {p0}, cleanupUpstream()V

    .line 2552
    :try_start_21f
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_22e} :catch_2ab

    .line 2554
    :goto_22e
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v5, v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2555
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    move v5, v6

    .line 2556
    goto/16 :goto_2a

    .line 2575
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "newUpstreamIfaceName":Ljava/lang/String;
    :pswitch_241
    const/4 v1, 0x1

    .line 2578
    :pswitch_242
    invoke-direct {p0}, cleanupUpstream()V

    .line 2580
    :try_start_245
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_254} :catch_25e

    .line 2586
    if-eqz v1, :cond_266

    .line 2587
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_29

    .line 2581
    :catch_25e
    move-exception v0

    .line 2582
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v5, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_29

    .line 2591
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_266
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tether lost upstream connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$4100(Lcom/android/server/connectivity/Tethering;)V

    .line 2593
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v5, :cond_29e

    .line 2594
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v5, v9}, Lcom/android/server/connectivity/Tethering;->access$3800(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v5

    if-nez v5, :cond_29e

    .line 2595
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v5, v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2598
    :cond_29e
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$6400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_29

    .line 2553
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ifaceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "newUpstreamIfaceName":Ljava/lang/String;
    :catch_2ab
    move-exception v5

    goto :goto_22e

    .line 2509
    :catch_2ad
    move-exception v5

    goto/16 :goto_1ce

    .line 2487
    :catch_2b0
    move-exception v5

    goto/16 :goto_132

    .line 2425
    nop

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_242
        :pswitch_28
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_241
        :pswitch_241
        :pswitch_241
        :pswitch_241
        :pswitch_241
        :pswitch_241
        :pswitch_b8
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method
