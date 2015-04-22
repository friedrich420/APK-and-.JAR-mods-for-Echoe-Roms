.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1403
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    .line 1404
    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1375
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1378
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mTimer:J

    .line 1383
    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1405
    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$2002(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1407
    if-nez p4, :cond_8c

    .line 1408
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "charon"

    aput-object v3, v2, v5

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, mDaemons:[Ljava/lang/String;

    .line 1412
    :goto_2e
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Daemon[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDaemons:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    new-array v2, v7, [[Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {p1, p4}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, mArguments:[[Ljava/lang/String;

    .line 1416
    iget-object v2, p0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, mSockets:[Landroid/net/LocalSocket;

    .line 1424
    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, mOuterInterface:Ljava/lang/String;

    .line 1427
    :try_start_69
    iget-object v2, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_9a

    .line 1433
    :goto_78
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1434
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1435
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1436
    return-void

    .line 1410
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_8c
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "racoon"

    aput-object v3, v2, v5

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, mDaemons:[Ljava/lang/String;

    goto :goto_2e

    .line 1429
    :catch_9a
    move-exception v0

    .line 1430
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_78
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1368
    iget-object v0, p0, mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1368
    iget-object v0, p0, mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized agentConnectForKnoxInterface()V
    .registers 14

    .prologue
    .line 1754
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->makeLinkProperties()Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 1756
    .local v7, "lp":Landroid/net/LinkProperties;
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$3100(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1758
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1759
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 1762
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 1764
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/net/NetworkMisc;->knoxProfileName:Ljava/lang/String;

    .line 1766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_77

    move-result-wide v10

    .line 1768
    .local v10, "token":J
    :try_start_47
    iget-object v12, p0, this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$3300(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "VPN"

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$3100(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    # setter for: Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v12, v0}, Lcom/android/server/connectivity/Vpn;->access$3202(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_72

    .line 1776
    :try_start_6d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    .line 1778
    monitor-exit p0

    return-void

    .line 1776
    :catchall_72
    move-exception v0

    :try_start_73
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    .line 1754
    .end local v7    # "lp":Landroid/net/LinkProperties;
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "token":J
    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkpoint(Z)V
    .registers 10
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 1504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1505
    .local v0, "now":J
    iget-wide v4, p0, mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 1506
    iput-wide v0, p0, mTimer:J

    .line 1507
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1514
    :goto_13
    return-void

    .line 1508
    :cond_14
    iget-wide v4, p0, mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    .line 1509
    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    .line 1511
    :cond_27
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1512
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clear_arguments()V
    .registers 9

    .prologue
    .line 1494
    iget-object v2, p0, mArguments:[[Ljava/lang/String;

    .local v2, "arr$":[[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_1c

    aget-object v1, v2, v5

    .line 1495
    .local v1, "arguments":[Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 1496
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_e
    if-ge v4, v7, :cond_18

    aget-object v0, v3, v4

    .line 1497
    .local v0, "argument":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 1496
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1494
    .end local v0    # "argument":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_18
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_5

    .line 1501
    .end local v1    # "arguments":[Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private execute()V
    .registers 30

    .prologue
    .line 1846
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "LegacyVpnRunner"

    const-string v3, "Non Knox vpn is getting started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1002(Lcom/android/server/connectivity/Vpn;Z)Z

    .line 1849
    const/16 v21, 0x0

    .line 1852
    .local v21, "initFinished":Z
    const/4 v2, 0x0

    :try_start_18
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v12, v0, mDaemons:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_26
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_85

    aget-object v14, v12, v19

    .line 1856
    .local v14, "daemon":Ljava/lang/String;
    :goto_2e
    invoke-static {v14}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 1857
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3b
    .catchall {:try_start_18 .. :try_end_3a} :catchall_9f

    goto :goto_2e

    .line 2044
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    :catch_3b
    move-exception v16

    .line 2046
    .local v16, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_3f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connecting to VPN network  failed"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2050
    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p0 .. p0}, exit()V
    :try_end_69
    .catchall {:try_start_3f .. :try_end_69} :catchall_9f

    .line 2055
    if-nez v21, :cond_504

    .line 2056
    move-object/from16 v0, p0

    iget-object v12, v0, mDaemons:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_74
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_504

    aget-object v14, v12, v19

    .line 2057
    .restart local v14    # "daemon":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2056
    add-int/lit8 v19, v19, 0x1

    goto :goto_74

    .line 1855
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_82
    add-int/lit8 v19, v19, 0x1

    goto :goto_26

    .line 1862
    .end local v14    # "daemon":Ljava/lang/String;
    :cond_85
    :try_start_85
    new-instance v27, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v27, "state":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 1864
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1865
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_9f} :catch_3b
    .catchall {:try_start_85 .. :try_end_9f} :catchall_9f

    .line 2055
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v27    # "state":Ljava/io/File;
    :catchall_9f
    move-exception v2

    if-nez v21, :cond_51f

    .line 2056
    move-object/from16 v0, p0

    iget-object v12, v0, mDaemons:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_ab
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_51f

    aget-object v14, v12, v19

    .line 2057
    .restart local v14    # "daemon":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2056
    add-int/lit8 v19, v19, 0x1

    goto :goto_ab

    .line 1867
    .end local v14    # "daemon":Ljava/lang/String;
    .restart local v27    # "state":Ljava/io/File;
    :cond_b9
    :try_start_b9
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1868
    const/16 v21, 0x1

    .line 1871
    const/16 v25, 0x0

    .line 1872
    .local v25, "restart":Z
    move-object/from16 v0, p0

    iget-object v12, v0, mArguments:[[Ljava/lang/String;

    .local v12, "arr$":[[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_d0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_e4

    aget-object v11, v12, v19

    .line 1873
    .local v11, "arguments":[Ljava/lang/String;
    if-nez v25, :cond_dc

    if-eqz v11, :cond_e1

    :cond_dc
    const/16 v25, 0x1

    .line 1872
    :goto_de
    add-int/lit8 v19, v19, 0x1

    goto :goto_d0

    .line 1873
    :cond_e1
    const/16 v25, 0x0

    goto :goto_de

    .line 1875
    .end local v11    # "arguments":[Ljava/lang/String;
    :cond_e4
    if-nez v25, :cond_161

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 1878
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Connecting to VPN network "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " failed"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_12e} :catch_3b
    .catchall {:try_start_b9 .. :try_end_12e} :catchall_9f

    .line 2055
    if-nez v21, :cond_147

    .line 2056
    move-object/from16 v0, p0

    iget-object v12, v0, mDaemons:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_139
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_147

    aget-object v14, v12, v19

    .line 2057
    .restart local v14    # "daemon":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2056
    add-int/lit8 v19, v19, 0x1

    goto :goto_139

    .line 2062
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    :cond_147
    if-eqz v21, :cond_159

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_160

    .line 2063
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 2066
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "restart":Z
    .end local v27    # "state":Ljava/io/File;
    :cond_160
    :goto_160
    return-void

    .line 1884
    .local v12, "arr$":[[Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v25    # "restart":Z
    .restart local v27    # "state":Ljava/io/File;
    :cond_161
    :try_start_161
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1887
    const/16 v18, 0x0

    .end local v12    # "arr$":[[Ljava/lang/String;
    .local v18, "i":I
    :goto_16e
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_24b

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v11, v2, v18

    .line 1889
    .restart local v11    # "arguments":[Ljava/lang/String;
    if-nez v11, :cond_182

    .line 1887
    :cond_17f
    add-int/lit8 v18, v18, 0x1

    goto :goto_16e

    .line 1894
    :cond_182
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v14, v2, v18

    .line 1895
    .restart local v14    # "daemon":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1898
    :goto_18b
    invoke-static {v14}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_198

    .line 1899
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_18b

    .line 1903
    :cond_198
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    aput-object v3, v2, v18

    .line 1904
    new-instance v9, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v9, v14, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1aa} :catch_3b
    .catchall {:try_start_161 .. :try_end_1aa} :catchall_9f

    .line 1910
    .local v9, "address":Landroid/net/LocalSocketAddress;
    :goto_1aa
    :try_start_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v18

    invoke-virtual {v2, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b3} :catch_1ea
    .catchall {:try_start_1aa .. :try_end_1b3} :catchall_9f

    .line 1917
    :try_start_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v18

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 1921
    .local v23, "out":Ljava/io/OutputStream;
    move-object v12, v11

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_1ce
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_214

    aget-object v10, v12, v19

    .line 1922
    .local v10, "argument":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    .line 1923
    .local v13, "bytes":[B
    array-length v2, v13

    const v3, 0xffff

    if-lt v2, v3, :cond_1f2

    .line 1924
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1912
    .end local v10    # "argument":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v13    # "bytes":[B
    .end local v23    # "out":Ljava/io/OutputStream;
    :catch_1ea
    move-exception v2

    .line 1915
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_1aa

    .line 1926
    .restart local v10    # "argument":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v13    # "bytes":[B
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_1f2
    array-length v2, v13

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1927
    array-length v2, v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1928
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 1929
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 1930
    # invokes: Lcom/android/server/connectivity/Vpn;->wipeByteArray([B)V
    invoke-static {v13}, Lcom/android/server/connectivity/Vpn;->access$3400([B)V

    .line 1931
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1921
    add-int/lit8 v19, v19, 0x1

    goto :goto_1ce

    .line 1933
    .end local v10    # "argument":Ljava/lang/String;
    .end local v13    # "bytes":[B
    :cond_214
    const/16 v2, 0xff

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1934
    const/16 v2, 0xff

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1935
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 1939
    const-string v2, "charon"

    invoke-virtual {v14, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17f

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_236} :catch_3b
    .catchall {:try_start_1b3 .. :try_end_236} :catchall_9f

    move-result-object v20

    .line 1945
    .local v20, "in":Ljava/io/InputStream;
    :goto_237
    :try_start_237
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_23a} :catch_539
    .catchall {:try_start_237 .. :try_end_23a} :catchall_9f

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17f

    .line 1951
    :goto_23e
    const/4 v2, 0x1

    :try_start_23f
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_237

    .line 1965
    .end local v9    # "address":Landroid/net/LocalSocketAddress;
    .end local v11    # "arguments":[Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v23    # "out":Ljava/io/OutputStream;
    :cond_245
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1957
    :cond_24b
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28c

    .line 1959
    const/16 v18, 0x0

    :goto_253
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_245

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v14, v2, v18

    .line 1961
    .restart local v14    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v18

    if-eqz v2, :cond_289

    invoke-static {v14}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_289

    .line 1962
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1959
    :cond_289
    add-int/lit8 v18, v18, 0x1

    goto :goto_253

    .line 1969
    .end local v14    # "daemon":Ljava/lang/String;
    :cond_28c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 1970
    .local v24, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2a9

    .line 1971
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1975
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v24, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_2e4

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f2

    .line 1980
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1984
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_30e

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_32f

    .line 1985
    :cond_30e
    const/4 v2, 0x3

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1986
    .local v15, "dnsServers":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32f

    .line 1987
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1992
    .end local v15    # "dnsServers":Ljava/lang/String;
    :cond_32f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_34b

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_36e

    .line 1993
    :cond_34b
    const/4 v2, 0x4

    aget-object v2, v24, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 1994
    .local v26, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36e

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2000
    .end local v26    # "searchDomains":Ljava/lang/String;
    :cond_36e
    const/4 v2, 0x5

    aget-object v17, v24, v2

    .line 2001
    .local v17, "endpoint":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_374} :catch_3b
    .catchall {:try_start_23f .. :try_end_374} :catchall_9f

    move-result v2

    if-nez v2, :cond_39a

    .line 2003
    :try_start_377
    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 2004
    .local v8, "addr":Ljava/net/InetAddress;
    instance-of v2, v8, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3ed

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x20

    invoke-direct {v4, v8, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_377 .. :try_end_39a} :catch_40d
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_39a} :catch_3b
    .catchall {:try_start_377 .. :try_end_39a} :catchall_9f

    .line 2017
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_39a
    :goto_39a
    :try_start_39a
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3
    :try_end_39f
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_39f} :catch_3b
    .catchall {:try_start_39a .. :try_end_39f} :catchall_9f

    .line 2019
    :try_start_39f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2022
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_452

    .line 2026
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2038
    :catchall_3ea
    move-exception v2

    monitor-exit v3
    :try_end_3ec
    .catchall {:try_start_39f .. :try_end_3ec} :catchall_3ea

    :try_start_3ec
    throw v2
    :try_end_3ed
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_3ed} :catch_3b
    .catchall {:try_start_3ec .. :try_end_3ed} :catchall_9f

    .line 2006
    .restart local v8    # "addr":Ljava/net/InetAddress;
    :cond_3ed
    :try_start_3ed
    instance-of v2, v8, Ljava/net/Inet6Address;

    if-eqz v2, :cond_436

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x80

    invoke-direct {v4, v8, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3ed .. :try_end_40c} :catch_40d
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_40c} :catch_3b
    .catchall {:try_start_3ed .. :try_end_40c} :catchall_9f

    goto :goto_39a

    .line 2011
    .end local v8    # "addr":Ljava/net/InetAddress;
    :catch_40d
    move-exception v16

    .line 2012
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    :try_start_40e
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception constructing throw route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_40e .. :try_end_434} :catch_3b
    .catchall {:try_start_40e .. :try_end_434} :catchall_9f

    goto/16 :goto_39a

    .line 2009
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "addr":Ljava/net/InetAddress;
    :cond_436
    :try_start_436
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_450
    .catch Ljava/lang/IllegalArgumentException; {:try_start_436 .. :try_end_450} :catch_40d
    .catch Ljava/lang/Exception; {:try_start_436 .. :try_end_450} :catch_3b
    .catchall {:try_start_436 .. :try_end_450} :catchall_9f

    goto/16 :goto_39a

    .line 2030
    .end local v8    # "addr":Ljava/net/InetAddress;
    :cond_452
    :try_start_452
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$3500(Lcom/android/server/connectivity/Vpn;)V

    .line 2035
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mUserHandle:I
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$3600(Lcom/android/server/connectivity/Vpn;)I

    move-result v6

    # invokes: Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$3700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 2038
    monitor-exit v3
    :try_end_48f
    .catchall {:try_start_452 .. :try_end_48f} :catchall_3ea

    .line 2040
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    :try_start_492
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Connecting to VPN network "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " succeeded"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d0
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_4d0} :catch_3b
    .catchall {:try_start_492 .. :try_end_4d0} :catchall_9f

    .line 2055
    if-nez v21, :cond_4e9

    .line 2056
    move-object/from16 v0, p0

    iget-object v12, v0, mDaemons:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v22, v0

    const/16 v19, 0x0

    :goto_4db
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_4e9

    aget-object v14, v12, v19

    .line 2057
    .restart local v14    # "daemon":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2056
    add-int/lit8 v19, v19, 0x1

    goto :goto_4db

    .line 2062
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    :cond_4e9
    if-eqz v21, :cond_4fb

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_160

    .line 2063
    :cond_4fb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_160

    .line 2062
    .end local v17    # "endpoint":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "parameters":[Ljava/lang/String;
    .end local v25    # "restart":Z
    .end local v27    # "state":Ljava/io/File;
    .local v16, "e":Ljava/lang/Exception;
    :cond_504
    if-eqz v21, :cond_516

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_160

    .line 2063
    :cond_516
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_160

    .line 2062
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_51f
    if-eqz v21, :cond_531

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_538

    .line 2063
    :cond_531
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    :cond_538
    throw v2

    .line 1948
    .restart local v9    # "address":Landroid/net/LocalSocketAddress;
    .restart local v11    # "arguments":[Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "daemon":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "i$":I
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v22    # "len$":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    .restart local v25    # "restart":Z
    .restart local v27    # "state":Ljava/io/File;
    :catch_539
    move-exception v2

    goto/16 :goto_23e
.end method

.method private executeKnoxVpn()V
    .registers 28

    .prologue
    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1002(Lcom/android/server/connectivity/Vpn;Z)Z

    .line 1556
    const/16 v19, 0x0

    .line 1560
    .local v19, "initFinished":Z
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v11, v0, mDaemons:[Ljava/lang/String;

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_19
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_76

    aget-object v13, v11, v17

    .line 1564
    .local v13, "daemon":Ljava/lang/String;
    :goto_21
    invoke-static {v13}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1565
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_2e
    .catchall {:try_start_b .. :try_end_2d} :catchall_90

    goto :goto_21

    .line 1730
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :catch_2e
    move-exception v15

    .line 1732
    .local v15, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connecting to VPN network  failed"

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p0 .. p0}, exit()V
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_90

    .line 1741
    if-nez v19, :cond_46f

    .line 1742
    move-object/from16 v0, p0

    iget-object v11, v0, mDaemons:[Ljava/lang/String;

    .restart local v11    # "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_65
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_46f

    aget-object v13, v11, v17

    .line 1743
    .restart local v13    # "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1742
    add-int/lit8 v17, v17, 0x1

    goto :goto_65

    .line 1563
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_73
    add-int/lit8 v17, v17, 0x1

    goto :goto_19

    .line 1569
    .end local v13    # "daemon":Ljava/lang/String;
    :cond_76
    :try_start_76
    new-instance v25, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v25, "state":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 1571
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 1572
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_90} :catch_2e
    .catchall {:try_start_76 .. :try_end_90} :catchall_90

    .line 1741
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .end local v25    # "state":Ljava/io/File;
    :catchall_90
    move-exception v2

    if-nez v19, :cond_48a

    .line 1742
    move-object/from16 v0, p0

    iget-object v11, v0, mDaemons:[Ljava/lang/String;

    .restart local v11    # "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_9c
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_48a

    aget-object v13, v11, v17

    .line 1743
    .restart local v13    # "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1742
    add-int/lit8 v17, v17, 0x1

    goto :goto_9c

    .line 1574
    .end local v13    # "daemon":Ljava/lang/String;
    .restart local v25    # "state":Ljava/io/File;
    :cond_aa
    :try_start_aa
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1575
    const/16 v19, 0x1

    .line 1578
    const/16 v23, 0x0

    .line 1579
    .local v23, "restart":Z
    move-object/from16 v0, p0

    iget-object v11, v0, mArguments:[[Ljava/lang/String;

    .local v11, "arr$":[[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_c1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_d5

    aget-object v10, v11, v17

    .line 1580
    .local v10, "arguments":[Ljava/lang/String;
    if-nez v23, :cond_cd

    if-eqz v10, :cond_d2

    :cond_cd
    const/16 v23, 0x1

    .line 1579
    :goto_cf
    add-int/lit8 v17, v17, 0x1

    goto :goto_c1

    .line 1580
    :cond_d2
    const/16 v23, 0x0

    goto :goto_cf

    .line 1582
    .end local v10    # "arguments":[Ljava/lang/String;
    :cond_d5
    if-nez v23, :cond_152

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 1585
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connecting to VPN network "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " failed"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_11f} :catch_2e
    .catchall {:try_start_aa .. :try_end_11f} :catchall_90

    .line 1741
    if-nez v19, :cond_138

    .line 1742
    move-object/from16 v0, p0

    iget-object v11, v0, mDaemons:[Ljava/lang/String;

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_12a
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_138

    aget-object v13, v11, v17

    .line 1743
    .restart local v13    # "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1742
    add-int/lit8 v17, v17, 0x1

    goto :goto_12a

    .line 1747
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    :cond_138
    if-eqz v19, :cond_14a

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_151

    .line 1748
    :cond_14a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 1751
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .end local v23    # "restart":Z
    .end local v25    # "state":Ljava/io/File;
    :cond_151
    :goto_151
    return-void

    .line 1591
    .local v11, "arr$":[[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v20    # "len$":I
    .restart local v23    # "restart":Z
    .restart local v25    # "state":Ljava/io/File;
    :cond_152
    :try_start_152
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1594
    const/16 v16, 0x0

    .end local v11    # "arr$":[[Ljava/lang/String;
    .local v16, "i":I
    :goto_15f
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_236

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v10, v2, v16

    .line 1596
    .restart local v10    # "arguments":[Ljava/lang/String;
    if-nez v10, :cond_173

    .line 1594
    :cond_170
    add-int/lit8 v16, v16, 0x1

    goto :goto_15f

    .line 1601
    :cond_173
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v13, v2, v16

    .line 1602
    .restart local v13    # "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1605
    :goto_17c
    invoke-static {v13}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_189

    .line 1606
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_17c

    .line 1610
    :cond_189
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    aput-object v3, v2, v16

    .line 1611
    new-instance v8, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v8, v13, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_19b} :catch_2e
    .catchall {:try_start_152 .. :try_end_19b} :catchall_90

    .line 1617
    .local v8, "address":Landroid/net/LocalSocketAddress;
    :goto_19b
    :try_start_19b
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a4} :catch_1db
    .catchall {:try_start_19b .. :try_end_1a4} :catchall_90

    .line 1624
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    .line 1628
    .local v21, "out":Ljava/io/OutputStream;
    move-object v11, v10

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_1bf
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1ff

    aget-object v9, v11, v17

    .line 1629
    .local v9, "argument":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    .line 1630
    .local v12, "bytes":[B
    array-length v2, v12

    const v3, 0xffff

    if-lt v2, v3, :cond_1e3

    .line 1631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1619
    .end local v9    # "argument":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v12    # "bytes":[B
    .end local v21    # "out":Ljava/io/OutputStream;
    :catch_1db
    move-exception v2

    .line 1622
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_19b

    .line 1633
    .restart local v9    # "argument":Ljava/lang/String;
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v12    # "bytes":[B
    .restart local v21    # "out":Ljava/io/OutputStream;
    :cond_1e3
    array-length v2, v12

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1634
    array-length v2, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1635
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 1636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1628
    add-int/lit8 v17, v17, 0x1

    goto :goto_1bf

    .line 1638
    .end local v9    # "argument":Ljava/lang/String;
    .end local v12    # "bytes":[B
    :cond_1ff
    const/16 v2, 0xff

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1639
    const/16 v2, 0xff

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1640
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    .line 1644
    const-string v2, "charon"

    invoke-virtual {v13, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_170

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_221} :catch_2e
    .catchall {:try_start_1a4 .. :try_end_221} :catchall_90

    move-result-object v18

    .line 1649
    .local v18, "in":Ljava/io/InputStream;
    :goto_222
    :try_start_222
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_225} :catch_4a4
    .catchall {:try_start_222 .. :try_end_225} :catchall_90

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_170

    .line 1655
    :goto_229
    const/4 v2, 0x1

    :try_start_22a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    goto :goto_222

    .line 1669
    .end local v8    # "address":Landroid/net/LocalSocketAddress;
    .end local v10    # "arguments":[Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v21    # "out":Ljava/io/OutputStream;
    :cond_230
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1661
    :cond_236
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_277

    .line 1663
    const/16 v16, 0x0

    :goto_23e
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_230

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, mDaemons:[Ljava/lang/String;

    aget-object v13, v2, v16

    .line 1665
    .restart local v13    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v16

    if-eqz v2, :cond_274

    invoke-static {v13}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_274

    .line 1666
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1663
    :cond_274
    add-int/lit8 v16, v16, 0x1

    goto :goto_23e

    .line 1673
    .end local v13    # "daemon":Ljava/lang/String;
    :cond_277
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v22

    .line 1674
    .local v22, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_294

    .line 1675
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1679
    :cond_294
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_2da

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2fb

    .line 1685
    :cond_2da
    const/4 v2, 0x3

    aget-object v2, v22, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1686
    .local v14, "dnsServers":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2fb

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1692
    .end local v14    # "dnsServers":Ljava/lang/String;
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_317

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_33a

    .line 1693
    :cond_317
    const/4 v2, 0x4

    aget-object v2, v22, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 1694
    .local v24, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33a

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1700
    .end local v24    # "searchDomains":Ljava/lang/String;
    :cond_33a
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_33f} :catch_2e
    .catchall {:try_start_22a .. :try_end_33f} :catchall_90

    .line 1702
    :try_start_33f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1705
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkpoint(Z)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_38d

    .line 1709
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1724
    :catchall_38a
    move-exception v2

    monitor-exit v3
    :try_end_38c
    .catchall {:try_start_33f .. :try_end_38c} :catchall_38a

    :try_start_38c
    throw v2
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_38c .. :try_end_38d} :catch_2e
    .catchall {:try_start_38c .. :try_end_38d} :catchall_90

    .line 1713
    :cond_38d
    :try_start_38d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$2702(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1716
    invoke-direct/range {p0 .. p0}, agentConnectForKnoxInterface()V

    .line 1718
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, sendStrongswanDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1721
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1722
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$2802(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1724
    monitor-exit v3
    :try_end_3fa
    .catchall {:try_start_38d .. :try_end_3fa} :catchall_38a

    .line 1726
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    :try_start_3fd
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Connecting to VPN network "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " succeeded"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_43b
    .catch Ljava/lang/Exception; {:try_start_3fd .. :try_end_43b} :catch_2e
    .catchall {:try_start_3fd .. :try_end_43b} :catchall_90

    .line 1741
    if-nez v19, :cond_454

    .line 1742
    move-object/from16 v0, p0

    iget-object v11, v0, mDaemons:[Ljava/lang/String;

    .restart local v11    # "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_446
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_454

    aget-object v13, v11, v17

    .line 1743
    .restart local v13    # "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1742
    add-int/lit8 v17, v17, 0x1

    goto :goto_446

    .line 1747
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    :cond_454
    if-eqz v19, :cond_466

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_151

    .line 1748
    :cond_466
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_151

    .line 1747
    .end local v16    # "i":I
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "parameters":[Ljava/lang/String;
    .end local v23    # "restart":Z
    .end local v25    # "state":Ljava/io/File;
    .restart local v15    # "e":Ljava/lang/Exception;
    :cond_46f
    if-eqz v19, :cond_481

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_151

    .line 1748
    :cond_481
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_151

    .line 1747
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_48a
    if-eqz v19, :cond_49c

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4a3

    .line 1748
    :cond_49c
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    :cond_4a3
    throw v2

    .line 1652
    .restart local v8    # "address":Landroid/net/LocalSocketAddress;
    .restart local v10    # "arguments":[Ljava/lang/String;
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v13    # "daemon":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v17    # "i$":I
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v20    # "len$":I
    .restart local v21    # "out":Ljava/io/OutputStream;
    .restart local v23    # "restart":Z
    .restart local v25    # "state":Ljava/io/File;
    :catch_4a4
    move-exception v2

    goto/16 :goto_229
.end method

.method private getknoxVpnTypeForStrongswanProfile()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1519
    const/4 v3, 0x1

    .line 1520
    .local v3, "profileType":Z
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v7

    if-lt v7, v10, :cond_d9

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1522
    .local v5, "user":I
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1524
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_1c
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    if-eqz v7, :cond_d9

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v7, :cond_d9

    .line 1525
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_54

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getknoxVpnTypeForStrongswanProfile: profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1527
    .local v0, "callingUid":I
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_76

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getknoxVpnTypeForStrongswanProfile is called by uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_76
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1529
    .local v6, "vendorOwningProfile":Ljava/lang/String;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_a6

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getknoxVpnTypeForStrongswanProfile vendorOwningProfile value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_a6
    if-eqz v6, :cond_d9

    .line 1531
    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v0, :cond_b7

    const-string v7, "com.android.vpndialogs"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_d9

    .line 1532
    :cond_b7
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_c4

    const-string v7, "LegacyVpnRunner"

    const-string v8, "Caller is either the strongswan proxy or the vpn dialog app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_c4
    iget-object v7, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_d5} :catch_fe

    move-result v4

    .line 1534
    .local v4, "type":I
    if-nez v4, :cond_f8

    .line 1535
    const/4 v3, 0x1

    .line 1548
    .end local v0    # "callingUid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "type":I
    .end local v5    # "user":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_d9
    :goto_d9
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_f7

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getknoxVpnTypeForStrongswanProfile profileType value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_f7
    return v3

    .line 1536
    .restart local v0    # "callingUid":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "type":I
    .restart local v5    # "user":I
    .restart local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_f8
    if-ne v4, v10, :cond_fc

    .line 1537
    const/4 v3, 0x0

    goto :goto_d9

    .line 1539
    :cond_fc
    const/4 v3, 0x1

    goto :goto_d9

    .line 1544
    .end local v0    # "callingUid":I
    .end local v4    # "type":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :catch_fe
    move-exception v1

    .line 1545
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_d9

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfStrongswanProfileIsKnoxBased "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9
.end method

.method private monitorDaemons()V
    .registers 7

    .prologue
    .line 2074
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2094
    :goto_c
    return-void

    .line 2080
    :cond_d
    const-wide/16 v2, 0x7d0

    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2081
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, mDaemons:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 2082
    iget-object v2, p0, mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3a

    iget-object v2, p0, mDaemons:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_25} :catch_3d
    .catchall {:try_start_f .. :try_end_25} :catchall_57

    move-result v2

    if-eqz v2, :cond_3a

    .line 2090
    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2091
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2092
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_c

    .line 2081
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2087
    .end local v1    # "i":I
    :catch_3d
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3e
    const-string v2, "LegacyVpnRunner"

    const-string v3, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_57

    .line 2090
    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2091
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2092
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_c

    .line 2090
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_57
    move-exception v2

    invoke-direct {p0}, stopLegacyDaemons()V

    .line 2091
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2092
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    throw v2
.end method

.method private declared-synchronized sendStrongSwanInterfaceToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 1781
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_92

    .line 1782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_bb

    move-result-wide v2

    .line 1785
    .local v2, "token":J
    :try_start_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1786
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1787
    const-string v1, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1788
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 1789
    const-string v1, "extra_profile_name"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1791
    :cond_37
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 1792
    const-string v1, "extra_tun_id"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    :cond_4a
    :goto_4a
    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v1, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStrongSwanInterfaceToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_84
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_e .. :try_end_8f} :catchall_b6

    .line 1801
    :try_start_8f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_bb

    .line 1804
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_92
    monitor-exit p0

    return-void

    .line 1793
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "token":J
    :cond_94
    :try_start_94
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4a

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 1794
    const-string v1, "extra_tun_id"

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1795
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Vpn;->access$2802(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b5
    .catchall {:try_start_94 .. :try_end_b5} :catchall_b6

    goto :goto_4a

    .line 1801
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_b6
    move-exception v1

    :try_start_b7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_bb

    .line 1781
    .end local v2    # "token":J
    :catchall_bb
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendStrongswanDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1807
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_a3

    .line 1808
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStrongswanDnsToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "searchdomain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1811
    .local v2, "token":J
    :try_start_41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1812
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    const-string v1, "extra_action"

    const-string v4, "dns_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1814
    const-string v1, "extra_profile_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    if-eqz p2, :cond_69

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_69

    .line 1816
    const-string v1, "dnsList"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1818
    :cond_69
    if-eqz p3, :cond_7c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7c

    .line 1819
    const-string/jumbo v1, "searchDomainList"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1821
    :cond_7c
    const-string v1, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStrongswanDnsToKnoxVpn : Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_41 .. :try_end_a0} :catchall_a4

    .line 1824
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_a3
    return-void

    .line 1824
    .restart local v2    # "token":J
    :catchall_a4
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 1830
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_40

    .line 1831
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$1202(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1832
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1833
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_40

    .line 1834
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1835
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x0

    const v3, 0x1080b3d

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1838
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_40
    return-void
.end method

.method private stopLegacyDaemons()V
    .registers 7

    .prologue
    .line 2097
    const-string v3, "LegacyVpnRunner"

    const-string/jumbo v4, "stopLegacyDaemons: begin"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v3, p0, mDaemons:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_43

    .line 2099
    iget-object v3, p0, mDaemons:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 2100
    .local v0, "daemon":Ljava/lang/String;
    const-string v3, "charon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_34

    .line 2103
    iget-object v3, p0, mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2105
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_22
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3b

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2107
    const-wide/16 v4, 0xc8

    :try_start_2e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_41

    .line 2105
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 2112
    .end local v2    # "j":I
    :cond_34
    iget-object v3, p0, mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2114
    :cond_3b
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2098
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2108
    .restart local v2    # "j":I
    :catch_41
    move-exception v3

    goto :goto_31

    .line 2116
    .end local v0    # "daemon":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_43
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1439
    iget-object v0, p0, mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1440
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-virtual {p0}, exit()V

    .line 1443
    :cond_23
    return-void
.end method

.method public exit()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1447
    invoke-virtual {p0}, interrupt()V

    .line 1448
    iget-object v0, p0, mSockets:[Landroid/net/LocalSocket;

    .local v0, "arr$":[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 1449
    .local v3, "socket":Landroid/net/LocalSocket;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1448
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1451
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :cond_12
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 1454
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3c

    .line 1455
    invoke-direct {p0}, getknoxVpnTypeForStrongswanProfile()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1456
    const/4 v4, 0x2

    invoke-direct {p0, v4}, sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1457
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1460
    :cond_2f
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3c

    .line 1461
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1467
    :cond_3c
    :try_start_3c
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_47} :catch_48

    .line 1469
    :goto_47
    return-void

    .line 1468
    :catch_48
    move-exception v4

    goto :goto_47
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1474
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 1476
    :try_start_a
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_32

    .line 1479
    invoke-direct {p0}, getknoxVpnTypeForStrongswanProfile()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1480
    invoke-direct {p0}, executeKnoxVpn()V

    .line 1488
    :goto_23
    invoke-direct {p0}, monitorDaemons()V

    .line 1489
    invoke-direct {p0}, clear_arguments()V

    .line 1490
    monitor-exit v1

    .line 1491
    return-void

    .line 1482
    :cond_2b
    invoke-direct {p0}, execute()V

    goto :goto_23

    .line 1490
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v0

    .line 1486
    :cond_32
    :try_start_32
    invoke-direct {p0}, execute()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    goto :goto_23
.end method
