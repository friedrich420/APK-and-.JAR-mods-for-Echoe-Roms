.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2344
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    .line 2345
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2346
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2351
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_37a

    .line 2567
    :cond_7
    :goto_7
    return-void

    .line 2353
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_7

    .line 2357
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2358
    .local v10, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v10, :cond_7

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_7

    .line 2362
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_7

    .line 2366
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2367
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_50

    .line 2368
    const-string v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto :goto_7

    .line 2370
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v2, v10, v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_7

    .line 2375
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDefaultNetworkSwitch()V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)V

    goto :goto_7

    .line 2379
    :sswitch_66
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2380
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_80

    .line 2381
    const-string v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto :goto_7

    .line 2384
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update of LinkProperties for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Ljava/lang/String;)V

    .line 2387
    iget-object v11, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2388
    .local v11, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v10

    .line 2389
    :try_start_a9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2390
    monitor-exit v10
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_c9

    .line 2391
    iget-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_7

    .line 2392
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    invoke-static {v1, v10, v11}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const v2, 0x80007

    invoke-virtual {v1, v10, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_7

    .line 2390
    :catchall_c9
    move-exception v1

    :try_start_ca
    monitor-exit v10
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v1

    .line 2399
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "oldLp":Landroid/net/LinkProperties;
    :sswitch_cc
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2400
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_e7

    .line 2401
    const-string v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2404
    :cond_e7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 2405
    .local v8, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v1, v10, v8}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 2409
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_f6
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2410
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_111

    .line 2411
    const-string v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2414
    :cond_111
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    .line 2415
    .local v14, "score":Ljava/lang/Integer;
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_7

    .line 2419
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v14    # "score":Ljava/lang/Integer;
    :sswitch_126
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2420
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_141

    .line 2421
    const-string v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2425
    :cond_141
    :try_start_141
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_158} :catch_15a

    goto/16 :goto_7

    .line 2426
    :catch_15a
    move-exception v7

    .line 2428
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2433
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_173
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2434
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_18e

    .line 2435
    const-string v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2439
    :cond_18e
    :try_start_18e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1a5} :catch_1a7

    goto/16 :goto_7

    .line 2440
    :catch_1a7
    move-exception v7

    .line 2442
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2447
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2448
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v10, :cond_1db

    .line 2449
    const-string v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2452
    :cond_1db
    iget-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_1ea

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_1ea

    .line 2453
    const-string v1, "ERROR: created network explicitly selected."

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2455
    :cond_1ea
    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    goto/16 :goto_7

    .line 2459
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_1f1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2460
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_VALIDATED"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2461
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_25f

    const/16 v16, 0x1

    .line 2462
    .local v16, "valid":Z
    :goto_20b
    if-eqz v16, :cond_247

    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Ljava/lang/String;)V

    .line 2464
    iget-boolean v13, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->validated:Z

    .line 2465
    .local v13, "previouslyValidated":Z
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    .line 2466
    .local v12, "previousScore":I
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->validated:Z

    .line 2467
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/ConnectivityService;

    if-nez v13, :cond_262

    const/4 v1, 0x1

    :goto_237
    # invokes: Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    invoke-static {v2, v10, v1}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2469
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-eq v1, v12, :cond_247

    .line 2470
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v10}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2473
    .end local v12    # "previousScore":I
    .end local v13    # "previouslyValidated":Z
    :cond_247
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    move/from16 v0, v16

    # invokes: Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    invoke-static {v1, v10, v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2475
    iget-object v2, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x81007

    if-eqz v16, :cond_264

    const/4 v1, 0x1

    :goto_258
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_7

    .line 2461
    .end local v16    # "valid":Z
    :cond_25f
    const/16 v16, 0x0

    goto :goto_20b

    .line 2467
    .restart local v12    # "previousScore":I
    .restart local v13    # "previouslyValidated":Z
    .restart local v16    # "valid":Z
    :cond_262
    const/4 v1, 0x0

    goto :goto_237

    .line 2475
    .end local v12    # "previousScore":I
    .end local v13    # "previouslyValidated":Z
    :cond_264
    const/4 v1, 0x2

    goto :goto_258

    .line 2483
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "valid":Z
    :sswitch_266
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2484
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_LINGER_COMPLETE"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2485
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v10}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    .line 2490
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_281
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_298

    .line 2491
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_7

    .line 2493
    :cond_298
    const/4 v10, 0x0

    .line 2494
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 2495
    :try_start_2a2
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v10, v0

    .line 2496
    monitor-exit v2
    :try_end_2b7
    .catchall {:try_start_2a2 .. :try_end_2b7} :catchall_2c0

    .line 2497
    if-nez v10, :cond_2c3

    .line 2498
    const-string v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2496
    :catchall_2c0
    move-exception v1

    :try_start_2c1
    monitor-exit v2
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2c0

    throw v1

    .line 2501
    :cond_2c3
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iget-object v4, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget-object v5, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_7

    .line 2507
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2e3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 2508
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    .line 2513
    .local v15, "state":Landroid/net/NetworkInfo$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityChange for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/EventLogTags;->writeConnectivityStateChanged(III)V

    .line 2521
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v1

    if-eqz v1, :cond_364

    .line 2532
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;I)Landroid/net/LinkProperties;

    move-result-object v9

    .line 2534
    .local v9, "lp":Landroid/net/LinkProperties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_STATE_CHANGED: connected to provisioning network, lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Ljava/lang/String;)V

    .line 2552
    .end local v9    # "lp":Landroid/net/LinkProperties;
    :cond_35a
    :goto_35a
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7

    .line 2547
    :cond_364
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v15, v1, :cond_35a

    .line 2548
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v15, v1, :cond_35a

    .line 2549
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v15, v1, :cond_35a

    goto :goto_35a

    .line 2556
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v15    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_371
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    goto/16 :goto_7

    .line 2351
    nop

    :sswitch_data_37a
    .sparse-switch
        0x11000 -> :sswitch_8
        0x11003 -> :sswitch_12
        0x11004 -> :sswitch_2c
        0x70000 -> :sswitch_2e3
        0x70001 -> :sswitch_371
        0x81001 -> :sswitch_cc
        0x81002 -> :sswitch_36
        0x81003 -> :sswitch_66
        0x81004 -> :sswitch_f6
        0x81005 -> :sswitch_126
        0x81006 -> :sswitch_173
        0x81008 -> :sswitch_1c0
        0x82002 -> :sswitch_1f1
        0x82005 -> :sswitch_266
        0x8200b -> :sswitch_281
        0x83ffe -> :sswitch_5e
    .end sparse-switch
.end method
