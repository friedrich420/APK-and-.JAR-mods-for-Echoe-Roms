.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2

    .prologue
    .line 2710
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockDataForNCM()V
    .registers 4

    .prologue
    .line 3184
    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 3188
    :goto_c
    return-void

    .line 3185
    :catch_d
    move-exception v0

    .line 3186
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_c
.end method

.method protected chooseUpstreamType(Z)V
    .registers 30
    .param p1, "tryCell"    # Z

    .prologue
    .line 2915
    const-string v23, "connectivity"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2916
    .local v5, "b":Landroid/os/IBinder;
    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v6

    .line 2917
    .local v6, "cm":Landroid/net/IConnectivityManager;
    const/16 v20, -0x1

    .line 2921
    .local v20, "upType":I
    const/4 v13, 0x0

    .line 2923
    .local v13, "iface":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2925
    .local v4, "actualIface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2935
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_42
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_77

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_122

    .line 2936
    .local v17, "netType":Ljava/lang/Integer;
    const/4 v14, 0x0

    .line 2938
    .local v14, "info":Landroid/net/NetworkInfo;
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$7300(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6a} :catch_2ac
    .catchall {:try_start_4f .. :try_end_6a} :catchall_122

    move-result-object v14

    .line 2940
    :goto_6b
    if-eqz v14, :cond_42

    :try_start_6d
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_42

    .line 2941
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2965
    .end local v14    # "info":Landroid/net/NetworkInfo;
    .end local v17    # "netType":Ljava/lang/Integer;
    :cond_77
    monitor-exit v24
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_122

    .line 2968
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "chooseUpstreamType("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), preferredApn ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering;->access$8600(Lcom/android/server/connectivity/Tethering;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", got type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/16 v23, 0x4

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_cc

    const/16 v23, 0x5

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_125

    .line 2975
    :cond_cc
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, turnOnUpstreamMobileConnection(I)Z

    .line 2986
    :cond_d3
    :goto_d3
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_131

    .line 3017
    const/16 v19, 0x1

    .line 3018
    .local v19, "tryAgainLater":Z
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_107

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8600(Lcom/android/server/connectivity/Tethering;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, turnOnUpstreamMobileConnection(I)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_107

    .line 3021
    const/16 v19, 0x0

    .line 3023
    :cond_107
    if-eqz v19, :cond_11c

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    const-wide/16 v26, 0x2710

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 3160
    .end local v19    # "tryAgainLater":Z
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    return-void

    .line 2965
    .end local v12    # "i$":Ljava/util/Iterator;
    :catchall_122
    move-exception v23

    :try_start_123
    monitor-exit v24
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    throw v23

    .line 2976
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_125
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_d3

    .line 2983
    invoke-virtual/range {p0 .. p0}, turnOffUpstreamMobileConnection()Z

    goto :goto_d3

    .line 3028
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6700(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v16

    .line 3031
    .local v16, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v16, :cond_197

    .line 3035
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Finding IPv4 upstream interface on: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v23

    sget-object v24, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static/range {v23 .. v24}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v15

    .line 3038
    .local v15, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v15, :cond_1f1

    .line 3039
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v13

    .line 3040
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Found interface "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :goto_193
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 3049
    .end local v15    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_197
    if-eqz v13, :cond_11c

    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v8

    .line 3052
    .local v8, "dnsServers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$8800(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v10

    .line 3054
    .local v10, "dualDnsServers":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    .line 3055
    .local v9, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v9, :cond_239

    .line 3057
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3060
    .local v21, "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    .line 3063
    .local v22, "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d9
    :goto_1d9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1fd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 3064
    .local v7, "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_1d9

    .line 3065
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d9

    .line 3042
    .end local v7    # "dnsAddress":Ljava/net/InetAddress;
    .end local v8    # "dnsServers":[Ljava/lang/String;
    .end local v9    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v10    # "dualDnsServers":[Ljava/lang/String;
    .end local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v15    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_1f1
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 3043
    const-string v23, "Tethering"

    const-string v24, "No IPv4 upstream interface, set iface name for IPv6."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    .line 3068
    .end local v15    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v8    # "dnsServers":[Ljava/lang/String;
    .restart local v9    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v10    # "dualDnsServers":[Ljava/lang/String;
    .restart local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_1fd
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_207

    .line 3069
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    .line 3072
    :cond_207
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_20b
    :goto_20b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_223

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 3073
    .restart local v7    # "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_20b

    .line 3074
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 3079
    .end local v7    # "dnsAddress":Ljava/net/InetAddress;
    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->makeDualServerStrings(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    .line 3083
    .end local v21    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v22    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_239
    if-eqz v9, :cond_11c

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v23

    if-eqz v23, :cond_11c

    .line 3085
    :try_start_241
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$6700(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v18

    .line 3086
    .local v18, "network":Landroid/net/Network;
    if-nez v18, :cond_27d

    .line 3087
    const-string v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No Network for upstream type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v10}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_294} :catch_296

    goto/16 :goto_11c

    .line 3094
    .end local v18    # "network":Landroid/net/Network;
    :catch_296
    move-exception v11

    .line 3095
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v24

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_11c

    .line 2939
    .end local v8    # "dnsServers":[Ljava/lang/String;
    .end local v9    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v10    # "dualDnsServers":[Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v16    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "info":Landroid/net/NetworkInfo;
    .restart local v17    # "netType":Ljava/lang/Integer;
    :catch_2ac
    move-exception v23

    goto/16 :goto_6b
.end method

.method protected enableString(I)Ljava/lang/String;
    .registers 3
    .param p1, "apnType"    # I

    .prologue
    .line 2719
    packed-switch p1, :pswitch_data_c

    .line 2726
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2721
    :pswitch_5
    const-string v0, "enableDUNAlways"

    goto :goto_4

    .line 2724
    :pswitch_8
    const-string v0, "enableHIPRI"

    goto :goto_4

    .line 2719
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "actualIfaceName"    # Ljava/lang/String;

    .prologue
    .line 3166
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying tethered with iface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3168
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mActualUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3169
    iget-object v3, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3173
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3174
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "iface"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    const-string v3, "actualIface"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2c

    .line 3179
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4d
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 2716
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .registers 4

    .prologue
    .line 2840
    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_18

    .line 2853
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2854
    const/4 v1, 0x1

    :goto_17
    return v1

    .line 2841
    :catch_18
    move-exception v0

    .line 2842
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2843
    const/4 v1, 0x0

    goto :goto_17
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 2755
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6804(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 2756
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v0

    if-eq v0, v3, :cond_29

    .line 2757
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$6700(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    invoke-virtual {p0, v2}, enableString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2759
    iget-object v0, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2761
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2766
    :try_start_2
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2767
    .local v0, "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v6, "ncm0"

    iget-object v7, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 2768
    const-string v6, "Tethering"

    const-string/jumbo v7, "skip IP forwarding for ncm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_103

    .line 2779
    :goto_21
    :try_start_21
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v7, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    # setter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$3102(Lcom/android/server/connectivity/Tethering;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2780
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "getSealedState"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v7

    # setter for: Lcom/android/server/connectivity/Tethering;->getSealedState:Z
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$3202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2781
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "getSealedUsbNetState"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v7

    # setter for: Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$3302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2783
    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetheredIfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 2785
    const-string v6, "Tethering"

    const-string/jumbo v7, "turnOnMasterTetherSettings] isWifi true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7300(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v3

    .line 2787
    .local v3, "serverConfig":Landroid/net/DhcpServerConfiguration;
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$7402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2788
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v3, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 2789
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, v3, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 2790
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    iget v8, v3, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2791
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    iget v8, v3, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2792
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, "SPRINT"

    aput-object v8, v6, v7

    .line 2793
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_f4} :catch_13c

    .line 2836
    .end local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .end local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :goto_f4
    return v4

    .line 2770
    .restart local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_f5
    :try_start_f5
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_101} :catch_103

    goto/16 :goto_21

    .line 2774
    .end local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catch_103
    move-exception v1

    .line 2775
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    move v4, v5

    .line 2776
    goto :goto_f4

    .line 2795
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_111
    :try_start_111
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->getSealedState:Z
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_186

    .line 2796
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_16a

    .line 2797
    const-string v6, "Tethering"

    const-string v7, "Set Sealed USB Net DHCP Range"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$7500()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_13b} :catch_13c

    goto :goto_f4

    .line 2807
    :catch_13c
    move-exception v1

    .line 2809
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_13d
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 2810
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_15b} :catch_15c

    goto :goto_f4

    .line 2811
    :catch_15c
    move-exception v2

    .line 2812
    .local v2, "ee":Ljava/lang/Exception;
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    move v4, v5

    .line 2813
    goto :goto_f4

    .line 2800
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ee":Ljava/lang/Exception;
    :cond_16a
    :try_start_16a
    const-string v6, "Tethering"

    const-string v7, "Set Sealed DHCP_DEFAULT_RANGE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V

    goto/16 :goto_f4

    .line 2805
    :cond_186
    iget-object v6, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_199} :catch_13c

    goto/16 :goto_f4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .registers 10
    .param p1, "apnType"    # I

    .prologue
    const/4 v4, 0x0

    .line 2729
    const/4 v3, 0x1

    .line 2730
    .local v3, "retValue":Z
    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    .line 2751
    :cond_5
    :goto_5
    return v4

    .line 2731
    :cond_6
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_11

    invoke-virtual {p0}, turnOffUpstreamMobileConnection()Z

    .line 2732
    :cond_11
    const/4 v2, 0x3

    .line 2733
    .local v2, "result":I
    invoke-virtual {p0, p1}, enableString(I)Ljava/lang/String;

    move-result-object v0

    .line 2734
    .local v0, "enableString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 2735
    iget-object v5, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$6700(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 2737
    packed-switch v2, :pswitch_data_48

    .line 2747
    const/4 v3, 0x0

    :goto_28
    move v4, v3

    .line 2751
    goto :goto_5

    .line 2740
    :pswitch_2a
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2741
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2742
    .local v1, "m":Landroid/os/Message;
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6804(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2743
    iget-object v4, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/32 v6, 0x9c40

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_28

    .line 2737
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method
