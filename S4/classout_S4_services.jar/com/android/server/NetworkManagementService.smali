.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z = false

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final MODE_ALLOW_ALL:I = 0x3

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field private static final SamsungHotspotVSIE:I = 0x80

.field private static final SamsungOUI:Ljava/lang/String; = "001632"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementService"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private mCscMaxClient:I

.field private final mDaemonHandler:Landroid/os/Handler;

.field private final mFgHandler:Landroid/os/Handler;

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mMobileActivityFromRadio:Z

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQuotaLock:Ljava/lang/Object;

.field private mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private final mThread:Ljava/lang/Thread;

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 215
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mQuotaLock:Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveQuotas:Ljava/util/HashMap;

    .line 224
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveAlerts:Ljava/util/HashMap;

    .line 226
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mIdleTimerLock:Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mActiveIdleTimers:Ljava/util/HashMap;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, mMobileActivityFromRadio:Z

    .line 247
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    iput v0, p0, mLastPowerStateFromRadio:I

    .line 249
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 259
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 260
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mFgHandler:Landroid/os/Handler;

    .line 264
    const-string/jumbo v0, "simulator"

    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 265
    iput-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 266
    iput-object v2, p0, mThread:Ljava/lang/Thread;

    .line 267
    iput-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    .line 268
    iput-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 310
    :goto_7c
    return-void

    .line 277
    :cond_7d
    const/4 v6, 0x0

    .line 279
    .local v6, "wl":Landroid/os/PowerManager$WakeLock;
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string v4, "NetdConnector"

    const/16 v5, 0xa0

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 282
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, mThread:Ljava/lang/Thread;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mDaemonHandler:Landroid/os/Handler;

    .line 286
    new-instance v0, Lcom/android/server/NetworkManagementService$1;

    const-wide v4, 0x7fffffffffffffffL

    iget-object v1, p0, mDaemonHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;JLandroid/os/Looper;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 296
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 297
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_d5

    .line 298
    iget-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x2000

    invoke-virtual {v9, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 303
    :cond_d5
    :try_start_d5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_MaxClient4MobileAp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mCscMaxClient:I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e5} :catch_ed

    .line 309
    :goto_e5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    goto :goto_7c

    .line 304
    :catch_ed
    move-exception v8

    .line 305
    .local v8, "e":Ljava/lang/Exception;
    iput v3, p0, mCscMaxClient:I

    goto :goto_e5
.end method

.method static synthetic access$100(Lcom/android/server/NetworkManagementService;IIJZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .prologue
    .line 143
    invoke-direct/range {p0 .. p5}, notifyInterfaceClassActivity(IIJZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/RouteInfo;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 143
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 143
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 143
    iput-object p1, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 143
    invoke-direct {p0}, prepareNativeDaemon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 143
    iget-object v0, p0, mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v0, "netd"

    invoke-static {p0, v0}, create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v1, Lcom/android/server/NetworkManagementService;

    invoke-direct {v1, p0, p1}, <init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 317
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, v1, mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 319
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 321
    return-object v1
.end method

.method private static enforceSystemUid()V
    .registers 3

    .prologue
    .line 2466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2467
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 2468
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2470
    :cond_10
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1462
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1463
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1464
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1467
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_27
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    .line 340
    :goto_8
    return-object v0

    .line 338
    :cond_9
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 340
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    goto :goto_8

    .line 341
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getInterfaceGlobalAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;
    .registers 9
    .param p1, "intf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 1475
    .local v0, "allAddr":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1476
    .local v2, "ia":Ljava/net/InterfaceAddress;
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SITELOCAL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LINKLOCAL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1479
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1482
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_75
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1837
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 1843
    :pswitch_7
    const-string v0, "open"

    :goto_9
    return-object v0

    .line 1839
    :pswitch_a
    const-string/jumbo v0, "wpa-psk"

    goto :goto_9

    .line 1841
    :pswitch_e
    const-string/jumbo v0, "wpa2-psk"

    goto :goto_9

    .line 1837
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method private modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mobileInterface"    # Ljava/lang/String;
    .param p3, "tunnelingInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1486
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "epdg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 1489
    .local v2, "mobileNetworkInterface":Ljava/net/NetworkInterface;
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 1491
    .local v3, "tunnelingNetworkInterface":Ljava/net/NetworkInterface;
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyEpdg epdg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-nez v2, :cond_69

    .line 1493
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobileNetworkInterface is null, passed mobileNetworkInterface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v4, "NetworkManagementService"

    const-string v5, "not calling netd to add related routes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_68
    return-void

    .line 1495
    :cond_69
    if-nez v3, :cond_8c

    .line 1496
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tunnelingNetworkInterface is null, passed tunnelingNetworkInterface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v4, "NetworkManagementService"

    const-string v5, "Not calling netd to add related routes"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 1500
    :cond_8c
    :try_start_8c
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyEpdg sending cmd:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_a9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_8c .. :try_end_a9} :catch_aa

    goto :goto_68

    .line 1502
    :catch_aa
    move-exception v1

    .line 1503
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 2636
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2642
    return-void

    .line 2639
    :catch_22
    move-exception v0

    .line 2640
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1557
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v8, "nat"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-direct {v1, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1562
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const/4 v6, 0x0

    .line 1564
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    :try_start_14
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_17
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_17} :catch_25

    move-result-object v6

    .line 1571
    :goto_18
    if-nez v6, :cond_4e

    .line 1572
    const-string v8, "0"

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1587
    :cond_1f
    :try_start_1f
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_24} :catch_a0

    .line 1591
    return-void

    .line 1565
    :catch_25
    move-exception v7

    .line 1566
    .local v7, "se":Ljava/net/SocketException;
    const-string v8, "NetworkManagementService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "modifyNat, cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",got Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v6, 0x0

    goto :goto_18

    .line 1576
    .end local v7    # "se":Ljava/net/SocketException;
    :cond_4e
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1578
    .local v5, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1579
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1580
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v9

    invoke-static {v8, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1582
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_65

    .line 1588
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    :catch_a0
    move-exception v2

    .line 1589
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8
.end method

.method private modifyPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetInterface"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 2916
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "interface"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2917
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 2919
    .local v3, "targetNetworkInterface":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_3e

    .line 2921
    :try_start_16
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 2922
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2924
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyPrivatePacket cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_3e} :catch_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16 .. :try_end_3e} :catch_44

    .line 2932
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    :cond_3e
    :goto_3e
    return-void

    .line 2926
    :catch_3f
    move-exception v1

    .line 2927
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_3e

    .line 2928
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_44
    move-exception v1

    .line 2929
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "netId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1100
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "route"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1106
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1108
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_64

    .line 1123
    :cond_38
    :goto_38
    :try_start_38
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_3d} :catch_5e

    .line 1127
    return-void

    .line 1110
    :sswitch_3e
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1111
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_38

    .line 1115
    :sswitch_50
    const-string/jumbo v2, "unreachable"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_38

    .line 1118
    :sswitch_57
    const-string/jumbo v2, "throw"

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_38

    .line 1124
    :catch_5e
    move-exception v1

    .line 1125
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 1108
    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_3e
        0x7 -> :sswitch_50
        0x9 -> :sswitch_57
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 607
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 609
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 611
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 609
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 617
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 619
    return-void

    .line 617
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 613
    :catch_24
    move-exception v2

    goto :goto_14

    .line 612
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 589
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 591
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 593
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 591
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 599
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 601
    return-void

    .line 599
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 595
    :catch_24
    move-exception v2

    goto :goto_14

    .line 594
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 399
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 401
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 399
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 407
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 409
    return-void

    .line 407
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 403
    :catch_24
    move-exception v2

    goto :goto_14

    .line 402
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceClassActivity(IIJZ)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "powerState"    # I
    .param p3, "tsNanos"    # J
    .param p5, "fromRadio"    # Z

    .prologue
    const/4 v1, 0x1

    .line 457
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    .line 458
    .local v2, "isMobile":Z
    if-eqz v2, :cond_1c

    .line 459
    if-nez p5, :cond_47

    .line 460
    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    if-eqz v5, :cond_f

    .line 464
    iget p2, p0, mLastPowerStateFromRadio:I

    .line 469
    :cond_f
    :goto_f
    iget v5, p0, mLastPowerStateFromRadio:I

    if-eq v5, p2, :cond_1c

    .line 470
    iput p2, p0, mLastPowerStateFromRadio:I

    .line 472
    :try_start_15
    invoke-direct {p0}, getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, p2, p3, p4}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_7a

    .line 478
    :cond_1c
    :goto_1c
    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    if-eq p2, v5, :cond_24

    sget v5, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    if-ne p2, v5, :cond_4a

    .line 481
    .local v1, "isActive":Z
    :cond_24
    :goto_24
    if-eqz v2, :cond_2c

    if-nez p5, :cond_2c

    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    if-nez v5, :cond_51

    .line 486
    :cond_2c
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 488
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    if-ge v0, v3, :cond_4c

    .line 490
    :try_start_35
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkManagementEventObserver;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_44} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_44} :catch_76
    .catchall {:try_start_35 .. :try_end_44} :catchall_6c

    .line 488
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 467
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :cond_47
    iput-boolean v1, p0, mMobileActivityFromRadio:Z

    goto :goto_f

    .line 478
    :cond_4a
    const/4 v1, 0x0

    goto :goto_24

    .line 497
    .restart local v0    # "i":I
    .restart local v1    # "isActive":Z
    .restart local v3    # "length":I
    :cond_4c
    iget-object v5, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 501
    .end local v0    # "i":I
    .end local v3    # "length":I
    :cond_51
    const/4 v4, 0x0

    .line 502
    .local v4, "report":Z
    iget-object v6, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 503
    :try_start_55
    iget-object v5, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 506
    const/4 v1, 0x1

    .line 508
    :cond_5e
    iget-boolean v5, p0, mNetworkActive:Z

    if-eq v5, v1, :cond_65

    .line 509
    iput-boolean v1, p0, mNetworkActive:Z

    .line 510
    move v4, v1

    .line 512
    :cond_65
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_73

    .line 513
    if-eqz v4, :cond_6b

    .line 514
    invoke-direct {p0}, reportNetworkActive()V

    .line 516
    :cond_6b
    return-void

    .line 497
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catchall_6c
    move-exception v5

    iget-object v6, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v5

    .line 512
    .end local v0    # "i":I
    .end local v3    # "length":I
    .restart local v4    # "report":Z
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v6
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v5

    .line 493
    .end local v4    # "report":Z
    .restart local v0    # "i":I
    .restart local v3    # "length":I
    :catch_76
    move-exception v5

    goto :goto_44

    .line 492
    :catch_78
    move-exception v5

    goto :goto_44

    .line 473
    .end local v0    # "i":I
    .end local v1    # "isActive":Z
    .end local v3    # "length":I
    :catch_7a
    move-exception v5

    goto :goto_1c
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 625
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 627
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 629
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 627
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 636
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 638
    return-void

    .line 636
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 632
    :catch_24
    move-exception v2

    goto :goto_14

    .line 631
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 379
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 381
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 383
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 381
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 389
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 391
    return-void

    .line 389
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 385
    :catch_24
    move-exception v2

    goto :goto_14

    .line 384
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v2, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v2, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 422
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 424
    :try_start_13
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_2e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_27

    .line 422
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 430
    :cond_21
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 432
    return-void

    .line 430
    :catchall_27
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 426
    :catch_2e
    move-exception v2

    goto :goto_1e

    .line 425
    :catch_30
    move-exception v2

    goto :goto_1e
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 360
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 362
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 364
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 362
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 370
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 372
    return-void

    .line 370
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 366
    :catch_24
    move-exception v2

    goto :goto_14

    .line 365
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 440
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 442
    :try_start_9
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 440
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 448
    :cond_17
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 450
    return-void

    .line 448
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 444
    :catch_24
    move-exception v2

    goto :goto_14

    .line 443
    :catch_26
    move-exception v2

    goto :goto_14
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 644
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 646
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_2e

    .line 648
    :try_start_9
    const-string/jumbo v2, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 649
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 646
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 651
    :cond_20
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p2}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2b} :catch_3b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_34

    goto :goto_1d

    .line 653
    :catch_2c
    move-exception v2

    goto :goto_1d

    .line 658
    :cond_2e
    iget-object v2, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 660
    return-void

    .line 658
    :catchall_34
    move-exception v2

    iget-object v3, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 654
    :catch_3b
    move-exception v2

    goto :goto_1d
.end method

.method private prepareNativeDaemon()V
    .registers 15

    .prologue
    .line 523
    const/4 v9, 0x0

    iput-boolean v9, p0, mBandwidthControlEnabled:Z

    .line 526
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    .line 527
    .local v4, "hasKernelSupport":Z
    if-eqz v4, :cond_a6

    .line 528
    const-string v9, "NetworkManagementService"

    const-string v10, "enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_17
    iget-object v9, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "bandwidth"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "enable"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 531
    const/4 v9, 0x1

    iput-boolean v9, p0, mBandwidthControlEnabled:Z
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_29} :catch_9c

    .line 539
    :goto_29
    const-string v10, "net.qtaguid_enabled"

    iget-boolean v9, p0, mBandwidthControlEnabled:Z

    if-eqz v9, :cond_af

    const-string v9, "1"

    :goto_31
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-boolean v9, p0, mBandwidthControlEnabled:Z

    if-eqz v9, :cond_3f

    .line 543
    :try_start_38
    invoke-direct {p0}, getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_160

    .line 549
    :cond_3f
    :goto_3f
    iget-object v11, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v11

    .line 550
    :try_start_42
    iget-object v9, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 551
    .local v7, "size":I
    if-lez v7, :cond_b2

    .line 552
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active quota rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    .line 554
    .local v1, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, mActiveQuotas:Ljava/util/HashMap;

    .line 555
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 556
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_79

    .line 579
    .end local v1    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "size":I
    :catchall_99
    move-exception v9

    monitor-exit v11
    :try_end_9b
    .catchall {:try_start_42 .. :try_end_9b} :catchall_99

    throw v9

    .line 532
    :catch_9c
    move-exception v2

    .line 533
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "NetworkManagementService"

    const-string/jumbo v10, "problem enabling bandwidth controls"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 536
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_a6
    const-string v9, "NetworkManagementService"

    const-string v10, "not enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 539
    :cond_af
    const-string v9, "0"

    goto :goto_31

    .line 560
    .restart local v7    # "size":I
    :cond_b2
    :try_start_b2
    iget-object v9, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 561
    if-lez v7, :cond_109

    .line 562
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active alert rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, mActiveAlerts:Ljava/util/HashMap;

    .line 564
    .local v0, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, mActiveAlerts:Ljava/util/HashMap;

    .line 565
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_e9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_109

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 566
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_e9

    .line 570
    .end local v0    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_109
    iget-object v9, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 571
    if-lez v7, :cond_14e

    .line 572
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active uid rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v8, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 574
    .local v8, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v9, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 575
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13a
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_14e

    .line 576
    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    invoke-virtual {p0, v9, v10}, setUidNetworkRules(IZ)V

    .line 575
    add-int/lit8 v5, v5, 0x1

    goto :goto_13a

    .line 579
    .end local v5    # "i":I
    .end local v8    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_14e
    monitor-exit v11
    :try_end_14f
    .catchall {:try_start_b2 .. :try_end_14f} :catchall_99

    .line 582
    iget-boolean v9, p0, mFirewallEnabled:Z

    if-nez v9, :cond_159

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_15e

    :cond_159
    const/4 v9, 0x1

    :goto_15a
    invoke-virtual {p0, v9}, setFirewallEnabled(Z)V

    .line 583
    return-void

    .line 582
    :cond_15e
    const/4 v9, 0x0

    goto :goto_15a

    .line 544
    .end local v7    # "size":I
    :catch_160
    move-exception v9

    goto/16 :goto_3f
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    const/4 v1, 0x0

    .line 1131
    .local v1, "fstream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4a
    .catchall {:try_start_6 .. :try_end_b} :catchall_3c

    .line 1135
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1136
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1141
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1142
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2a
    .catchall {:try_start_b .. :try_end_29} :catchall_47

    goto :goto_1a

    .line 1144
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v6

    move-object v1, v2

    .line 1147
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    :goto_2c
    if-eqz v1, :cond_31

    .line 1149
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_43

    .line 1154
    :cond_31
    :goto_31
    return-object v4

    .line 1147
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_32
    if-eqz v2, :cond_4c

    .line 1149
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    move-object v1, v2

    .line 1150
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catch_39
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31

    .line 1147
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_3c
    move-exception v6

    :goto_3d
    if-eqz v1, :cond_42

    .line 1149
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_45

    .line 1150
    :cond_42
    :goto_42
    throw v6

    :catch_43
    move-exception v6

    goto :goto_31

    :catch_45
    move-exception v7

    goto :goto_42

    .line 1147
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :catchall_47
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3d

    .line 1144
    :catch_4a
    move-exception v6

    goto :goto_2c

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_4c
    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private reportNetworkActive()V
    .registers 5

    .prologue
    .line 2527
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2529
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2531
    :try_start_9
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_24
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    .line 2529
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2537
    :cond_17
    iget-object v2, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2539
    return-void

    .line 2537
    :catchall_1d
    move-exception v2

    iget-object v3, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 2533
    :catch_24
    move-exception v2

    goto :goto_14

    .line 2532
    :catch_26
    move-exception v2

    goto :goto_14
.end method


# virtual methods
.method public addEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3044
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "lookup"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 3051
    return-void

    .line 3047
    :catch_24
    move-exception v0

    .line 3048
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addEnterpriseMasq(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2970
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "masq"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 2977
    return-void

    .line 2973
    :catch_21
    move-exception v0

    .line 2974
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .prologue
    .line 1941
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v3, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1946
    :try_start_c
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1947
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1e

    .line 1949
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1950
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_5d

    .line 1973
    :goto_1d
    return-void

    .line 1954
    :cond_1e
    :try_start_1e
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "add"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_3e} :catch_60
    .catchall {:try_start_1e .. :try_end_3e} :catchall_5d

    .line 1959
    :try_start_3e
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1963
    const/4 v2, 0x0

    iput-boolean v2, p0, mNetworkActive:Z

    .line 1965
    :cond_51
    iget-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v4, p0, p3}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1972
    monitor-exit v3

    goto :goto_1d

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_5d
    move-exception v2

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_5d

    throw v2

    .line 1956
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_60
    move-exception v0

    .line 1957
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_61
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5d
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2758
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const-string v2, "add"

    const-string v3, "local"

    invoke-direct {p0, v2, v3, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2761
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2762
    const-string v2, "add"

    const-string v3, "local"

    invoke-direct {p0, v2, v3, v1}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_b

    .line 2765
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_25
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2627
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .prologue
    .line 2646
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v3, "network"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "legacy"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2651
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 2652
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2654
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 2655
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2659
    :cond_73
    :try_start_73
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_78
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_73 .. :try_end_78} :catch_79

    .line 2663
    return-void

    .line 2660
    :catch_79
    move-exception v1

    .line 2661
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public addRejectDefault(Ljava/lang/String;)V
    .registers 8
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    .line 2948
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reject"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2955
    return-void

    .line 2951
    :catch_22
    move-exception v0

    .line 2952
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1091
    const-string v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1092
    return-void
.end method

.method public addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    .registers 13
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "metric"    # I
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2871
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2875
    const-string v5, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed - iface is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :goto_19
    return v4

    .line 2879
    :cond_1a
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "route"

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "add"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2880
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2881
    const-string v6, "def"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2886
    :goto_33
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 2887
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_75

    .line 2888
    const-string/jumbo v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2893
    :goto_41
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2894
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2896
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2897
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2900
    :cond_60
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2903
    :try_start_67
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_67 .. :try_end_6c} :catch_7c

    move-result-object v3

    .local v3, "rsp":Lcom/android/server/NativeDaemonEvent;
    move v4, v5

    .line 2912
    goto :goto_19

    .line 2883
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :cond_6f
    const-string v6, "dst"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_33

    .line 2890
    .restart local v2    # "gateway":Ljava/net/InetAddress;
    :cond_75
    const-string/jumbo v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_41

    .line 2904
    :catch_7c
    move-exception v1

    .line 2905
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public addUpstreamV6Interface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :try_start_27
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 943
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_44} :catch_45

    .line 947
    return-void

    .line 944
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_45
    move-exception v1

    .line 945
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Cannot add upstream interface"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2288
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2290
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 2291
    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v2, v5

    .line 2292
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2293
    const/4 v0, 0x3

    .line 2295
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    array-length v5, p2

    if-ge v4, v5, :cond_4b

    .line 2296
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2297
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_36

    array-length v5, v2

    if-ne v1, v5, :cond_4c

    .line 2299
    :cond_36
    :try_start_36
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_41} :catch_45

    .line 2303
    const/4 v0, 0x3

    .line 2295
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2300
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_45
    move-exception v3

    .line 2301
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2306
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4b
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4c
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_42
.end method

.method public allowProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2736
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "allow"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    .line 2743
    return-void

    .line 2740
    :catch_26
    move-exception v0

    .line 2741
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2775
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 2776
    .local v1, "route":Landroid/net/RouteInfo;
    const-string v2, "append"

    const-string v3, "local"

    invoke-direct {p0, v2, v3, v1}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_4

    .line 2778
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_18
    return-void
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .prologue
    .line 1627
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "attach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_48} :catch_49

    .line 1637
    return-void

    .line 1634
    :catch_49
    move-exception v0

    .line 1635
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public blockEnterpriseUids([ILjava/lang/String;)V
    .registers 11
    .param p1, "uids"    # [I
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3110
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "enterprise"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "block"

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3112
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const-string v4, "add"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3113
    invoke-virtual {v0, p2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3114
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3116
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    array-length v4, p1

    if-ge v2, v4, :cond_43

    .line 3117
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3118
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_40

    .line 3119
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 3122
    :cond_43
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockEnterpriseUids: add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :try_start_64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3126
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_71

    .line 3131
    :goto_70
    return-void

    .line 3127
    :catch_71
    move-exception v1

    .line 3128
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NetworkManagementService"

    const-string v5, "Exception occured"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70
.end method

.method public clearDefaultNetId()V
    .registers 7

    .prologue
    .line 2678
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "clear"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 2685
    return-void

    .line 2682
    :catch_1e
    move-exception v0

    .line 2683
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1061
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearaddrs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1067
    return-void

    .line 1064
    :catch_1c
    move-exception v0

    .line 1065
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearPermission([I)V
    .registers 10
    .param p1, "uids"    # [I

    .prologue
    .line 2713
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2716
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "permission"

    aput-object v6, v2, v5

    .line 2717
    const/4 v5, 0x1

    const-string/jumbo v6, "user"

    aput-object v6, v2, v5

    .line 2718
    const/4 v5, 0x2

    const-string v6, "clear"

    aput-object v6, v2, v5

    .line 2719
    const/4 v0, 0x3

    .line 2721
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, p1

    if-ge v4, v5, :cond_4a

    .line 2722
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2723
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_35

    array-length v5, v2

    if-ne v1, v5, :cond_4b

    .line 2725
    :cond_35
    :try_start_35
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_40} :catch_44

    .line 2729
    const/4 v0, 0x3

    .line 2721
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 2726
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_44
    move-exception v3

    .line 2727
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2732
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4a
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4b
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_41
.end method

.method public controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "targetInterface"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 2936
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :try_start_9
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlPrivatePacket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    invoke-direct {p0, p3, p1, p2}, modifyPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_38} :catch_39

    .line 2943
    return-void

    .line 2940
    :catch_39
    move-exception v0

    .line 2941
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createPhysicalNetwork(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2593
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "create"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 2600
    return-void

    .line 2597
    :catch_20
    move-exception v0

    .line 2598
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualNetwork(IZZ)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "hasDNS"    # Z
    .param p3, "secure"    # Z

    .prologue
    .line 2604
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "network"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "create"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "vpn"

    aput-object v5, v4, v1

    const/4 v5, 0x3

    if-eqz p2, :cond_34

    const-string v1, "1"

    :goto_27
    aput-object v1, v4, v5

    const/4 v5, 0x4

    if-eqz p3, :cond_37

    const-string v1, "1"

    :goto_2e
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2612
    return-void

    .line 2607
    :cond_34
    const-string v1, "0"

    goto :goto_27

    :cond_37
    const-string v1, "0"
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_2e

    .line 2609
    :catch_3a
    move-exception v0

    .line 2610
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delSrcRoute([BI)Z
    .registers 12
    .param p1, "ip"    # [B
    .param p2, "routeId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2836
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    :try_start_b
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_e} :catch_3b

    move-result-object v2

    .line 2847
    .local v2, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "route"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "del"

    aput-object v8, v7, v5

    const-string/jumbo v8, "src"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2849
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_46

    .line 2850
    const-string/jumbo v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2855
    :goto_2d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2858
    :try_start_34
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_39} :catch_4d

    move-result-object v3

    .line 2866
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "ipAddr":Ljava/net/InetAddress;
    :goto_3a
    return v4

    .line 2842
    :catch_3b
    move-exception v1

    .line 2843
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v4, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed due to invalid src ip"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2844
    goto :goto_3a

    .line 2852
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v2    # "ipAddr":Ljava/net/InetAddress;
    :cond_46
    const-string/jumbo v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_2d

    .line 2859
    :catch_4d
    move-exception v1

    .line 2860
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed: "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2861
    goto :goto_3a
.end method

.method public denyProtect(I)V
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 2747
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "protect"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "deny"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    .line 2754
    return-void

    .line 2751
    :catch_26
    move-exception v0

    .line 2752
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .registers 8
    .param p1, "tty"    # Ljava/lang/String;

    .prologue
    .line 1641
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "pppd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "detach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 1647
    return-void

    .line 1644
    :catch_1d
    move-exception v0

    .line 1645
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;

    .prologue
    .line 1521
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :try_start_9
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableEpdg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_30} :catch_31

    .line 1528
    return-void

    .line 1525
    :catch_31
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 1087
    return-void

    .line 1084
    :catch_21
    move-exception v0

    .line 1085
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1605
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :try_start_9
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 1611
    return-void

    .line 1608
    :catch_f
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2551
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    const-string v5, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2557
    const-string v5, "Bandwidth control enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mBandwidthControlEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2558
    const-string v5, "mMobileActivityFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mMobileActivityFromRadio:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2559
    const-string v5, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, mLastPowerStateFromRadio:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2560
    const-string v5, "mNetworkActive="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mNetworkActive:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2562
    iget-object v6, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2563
    :try_start_41
    const-string v5, "Active quota ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    const-string v5, "Active alert ifaces: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_84

    .line 2567
    iget-object v6, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    .line 2568
    :try_start_61
    const-string v5, "UID reject on quota ifaces: ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2569
    iget-object v5, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 2570
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6d
    if-ge v1, v4, :cond_87

    .line 2571
    iget-object v5, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2572
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_81

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_61 .. :try_end_81} :catchall_e6

    .line 2570
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 2565
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_84
    move-exception v5

    :try_start_85
    monitor-exit v6
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v5

    .line 2574
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_87
    :try_start_87
    const-string v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_e6

    .line 2577
    iget-object v6, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2578
    :try_start_90
    const-string v5, "Idle timers:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    iget-object v5, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2580
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2582
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v5, "    timeout="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2583
    const-string v5, " type="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2584
    const-string v5, " networkCount="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_9f

    .line 2586
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_e3
    move-exception v5

    monitor-exit v6
    :try_end_e5
    .catchall {:try_start_90 .. :try_end_e5} :catchall_e3

    throw v5

    .line 2575
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_e6
    move-exception v5

    :try_start_e7
    monitor-exit v6
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v5

    .line 2586
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "size":I
    :cond_e9
    :try_start_e9
    monitor-exit v6
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e3

    .line 2588
    const-string v5, "Firewall enabled: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, mFirewallEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2589
    return-void
.end method

.method public enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "mobileInterface"    # Ljava/lang/String;
    .param p2, "tunnelingInterface"    # Ljava/lang/String;

    .prologue
    .line 1510
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :try_start_9
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableEpdg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, modifyEpdg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_30} :catch_31

    .line 1517
    return-void

    .line 1514
    :catch_31
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1071
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "enable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 1077
    return-void

    .line 1074
    :catch_21
    move-exception v0

    .line 1075
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1595
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :try_start_9
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_e} :catch_f

    .line 1601
    return-void

    .line 1598
    :catch_f
    move-exception v0

    .line 1599
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flushNetworkDnsCache(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2332
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "flushnet"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_20} :catch_21

    .line 2338
    return-void

    .line 2335
    :catch_21
    move-exception v0

    .line 2336
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getAccessPointNumConnectedSta()I
    .registers 8

    .prologue
    .line 1650
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :try_start_12
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "get_sta_num"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_22} :catch_31

    move-result-object v1

    .line 1662
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1664
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1658
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_31
    move-exception v0

    .line 1659
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getAccessPointStaList()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1690
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :try_start_12
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "get_sta_list"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_22} :catch_2d

    move-result-object v1

    .line 1702
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1704
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1698
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2d
    move-exception v0

    .line 1699
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1439
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dns"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_26

    move-result-object v1

    return-object v1

    .line 1443
    :catch_26
    move-exception v0

    .line 1444
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v11, "NetworkManagementService"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_9
    iget-object v9, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "interface"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "getcfg"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_7a

    move-result-object v3

    .line 975
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 978
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 982
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_2a
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 983
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_38} :catch_60

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 987
    .local v7, "prefixLength":I
    :try_start_3a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_41} :catch_80
    .catch Ljava/util/NoSuchElementException; {:try_start_3a .. :try_end_41} :catch_60

    move-result-object v0

    .line 993
    :goto_42
    :try_start_42
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_49} :catch_89
    .catch Ljava/util/NoSuchElementException; {:try_start_42 .. :try_end_49} :catch_60

    move-result v7

    .line 998
    :goto_4a
    :try_start_4a
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 999
    :goto_52
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_92

    .line 1000
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/util/NoSuchElementException; {:try_start_4a .. :try_end_5f} :catch_60

    goto :goto_52

    .line 1002
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_60
    move-exception v6

    .line 1003
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid response from daemon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 971
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_7a
    move-exception v2

    .line 972
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 988
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_80
    move-exception v4

    .line 989
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_81
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse ipaddr"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 994
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_89
    move-exception v5

    .line 995
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse prefixLength"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/util/NoSuchElementException; {:try_start_81 .. :try_end_91} :catch_60

    goto :goto_4a

    .line 1005
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_92
    return-object v1
.end method

.method public getIpForwardingEnabled()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_19} :catch_2a

    move-result-object v1

    .line 1305
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1306
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1300
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2a
    move-exception v0

    .line 1301
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 7

    .prologue
    .line 2026
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 2029
    :catch_14
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 2006
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 2009
    :catch_10
    move-exception v0

    .line 2010
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 5

    .prologue
    .line 2016
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    .line 2019
    :catch_10
    move-exception v0

    .line 2020
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 19

    .prologue
    .line 2197
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string v14, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v15, "NetworkManagementService"

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    new-instance v11, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-direct {v11, v14, v15, v13}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2201
    .local v11, "stats":Landroid/net/NetworkStats;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v14, "bandwidth"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "gettetherstats"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 2203
    .local v6, "events":[Lcom/android/server/NativeDaemonEvent;
    move-object v2, v6

    .local v2, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2b
    if-ge v7, v10, :cond_c3

    aget-object v5, v2, v7

    .line 2204
    .local v5, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v13

    const/16 v14, 0x72

    if-eq v13, v14, :cond_3a

    .line 2203
    :goto_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 2207
    :cond_3a
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_15 .. :try_end_43} :catch_a2

    .line 2209
    .local v12, "tok":Ljava/util/StringTokenizer;
    :try_start_43
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 2210
    .local v8, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 2212
    .local v9, "ifaceOut":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2213
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v9, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2214
    const/4 v13, -0x5

    iput v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2215
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 2216
    const/4 v13, 0x0

    iput v13, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2217
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2218
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2219
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2220
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2221
    invoke-virtual {v11, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_86
    .catch Ljava/util/NoSuchElementException; {:try_start_43 .. :try_end_86} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_86} :catch_a8
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_43 .. :try_end_86} :catch_a2

    goto :goto_37

    .line 2222
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v8    # "ifaceIn":Ljava/lang/String;
    .end local v9    # "ifaceOut":Ljava/lang/String;
    :catch_87
    move-exception v3

    .line 2223
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_88
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_a2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_88 .. :try_end_a2} :catch_a2

    .line 2228
    .end local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a2
    move-exception v3

    .line 2229
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v13

    throw v13

    .line 2224
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v6    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "tok":Ljava/util/StringTokenizer;
    :catch_a8
    move-exception v3

    .line 2225
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_a9
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "problem parsing tethering stats: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_c3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a9 .. :try_end_c3} :catch_a2

    .line 2231
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v12    # "tok":Ljava/util/StringTokenizer;
    :cond_c3
    return-object v11
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 2187
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    :try_start_9
    iget-object v1, p0, mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    .line 2190
    :catch_13
    move-exception v0

    .line 2191
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "sPort"    # I
    .param p3, "dPort"    # I

    .prologue
    const/4 v10, 0x1

    .line 2343
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    :try_start_a
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "bandwidth"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "videocallstats"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "get"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_30} :catch_8b

    move-result-object v2

    .line 2352
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xdd

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2355
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2356
    .local v4, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2357
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2359
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 2361
    .local v3, "stats":Landroid/net/NetworkStats;
    :try_start_4e
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 2362
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    iput-object p1, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 2363
    const/16 v5, -0x64

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2364
    const/4 v5, 0x0

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 2365
    const/4 v5, 0x0

    iput v5, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 2366
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 2367
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 2368
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 2369
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 2370
    invoke-virtual {v3, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_8a} :catch_91

    .line 2371
    return-object v3

    .line 2348
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "stats":Landroid/net/NetworkStats;
    .end local v4    # "tok":Ljava/util/StringTokenizer;
    :catch_8b
    move-exception v0

    .line 2349
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2372
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    .restart local v4    # "tok":Ljava/util/StringTokenizer;
    :catch_91
    move-exception v0

    .line 2373
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "problem parsing video call stats for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .registers 24
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v21, "NetworkManagementService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v17, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string v19, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_cb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1165
    .local v18, "s":Ljava/lang/String;
    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    .line 1168
    const/16 v19, 0x0

    aget-object v11, v5, v19

    .line 1170
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1171
    const/16 v19, 0x1

    aget-object v2, v5, v19

    .line 1172
    .local v2, "dest":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v7, v5, v19

    .line 1173
    .local v7, "gate":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v6, v5, v19

    .line 1174
    .local v6, "flags":Ljava/lang/String;
    const/16 v19, 0x7

    aget-object v13, v5, v19

    .line 1177
    .local v13, "mask":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_5b
    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 1179
    .local v3, "destAddr":Ljava/net/InetAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v15

    .line 1182
    .local v15, "prefixLength":I
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1185
    .local v12, "linkAddress":Landroid/net/LinkAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 1188
    .local v9, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1189
    .local v16, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9f} :catch_a0

    goto :goto_20

    .line 1190
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v9    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_a0
    move-exception v4

    .line 1191
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1200
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v13    # "mask":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_cb
    const-string v19, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d9
    :goto_d9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_161

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1201
    .restart local v18    # "s":Ljava/lang/String;
    const-string v19, "\\s+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1202
    .restart local v5    # "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d9

    .line 1203
    const/16 v19, 0x9

    aget-object v19, v5, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1204
    .restart local v11    # "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d9

    .line 1205
    const/16 v19, 0x0

    aget-object v2, v5, v19

    .line 1206
    .restart local v2    # "dest":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v5, v19

    .line 1207
    .local v14, "prefix":Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v7, v5, v19

    .line 1211
    .restart local v7    # "gate":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_114
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 1215
    .restart local v15    # "prefixLength":I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1216
    .restart local v3    # "destAddr":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1218
    .restart local v12    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 1220
    .local v8, "gateAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1221
    .restart local v16    # "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_135} :catch_136

    goto :goto_d9

    .line 1222
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v8    # "gateAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_136
    move-exception v4

    .line 1223
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 1229
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_161
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/RouteInfo;

    return-object v19
.end method

.method public getV6DnsForwarders()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1451
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dns6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_26

    move-result-object v1

    return-object v1

    .line 1455
    :catch_26
    move-exception v0

    .line 1456
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .prologue
    .line 2181
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    iget-boolean v0, p0, mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted()Z
    .registers 8

    .prologue
    .line 2496
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "clatd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_19} :catch_2b

    move-result-object v1

    .line 2505
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2506
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 2501
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2b
    move-exception v0

    .line 2502
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .prologue
    .line 2413
    invoke-static {}, enforceSystemUid()V

    .line 2414
    iget-boolean v0, p0, mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .prologue
    .line 2521
    iget-object v1, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2522
    :try_start_3
    iget-boolean v0, p0, mNetworkActive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 2523
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isTetheringStarted()Z
    .registers 8

    .prologue
    .line 1349
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_2c

    move-result-object v1

    .line 1359
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1360
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1354
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2c
    move-exception v0

    .line 1355
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "join"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;

    .prologue
    .line 1546
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "join_multicast"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 1553
    return-void

    .line 1550
    :catch_20
    move-exception v0

    .line 1551
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 925
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v1

    return-object v1

    .line 929
    :catch_20
    move-exception v0

    .line 930
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 1391
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_26

    move-result-object v1

    return-object v1

    .line 1396
    :catch_26
    move-exception v0

    .line 1397
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1615
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "list_ttys"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_19} :catch_1b

    move-result-object v1

    return-object v1

    .line 1619
    :catch_1b
    move-exception v0

    .line 1620
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public makeEnterpriseChains(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "chainId"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .prologue
    .line 2992
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    if-eqz p2, :cond_2a

    .line 2995
    :try_start_b
    const-string v1, "NetworkManagementService"

    const-string v2, "adding chain rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "createchains"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3005
    :goto_29
    return-void

    .line 2998
    :cond_2a
    const-string v1, "NetworkManagementService"

    const-string v2, "deleting chain rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "createchains"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_49} :catch_4a

    goto :goto_29

    .line 3001
    :catch_4a
    move-exception v0

    .line 3002
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkManagementService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public markEnterpriseUids([ILjava/lang/String;)V
    .registers 11
    .param p1, "uids"    # [I
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3066
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "enterprise"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mark"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "add"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3068
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3069
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    array-length v4, p1

    if-ge v2, v4, :cond_43

    .line 3070
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3071
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_40

    .line 3072
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 3075
    :cond_43
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    :try_start_48
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "markEnterpriseUids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3079
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_70} :catch_71

    .line 3084
    :goto_70
    return-void

    .line 3080
    :catch_71
    move-exception v1

    .line 3081
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2544
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 2545
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2547
    :cond_9
    return-void
.end method

.method public readWhiteList()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1721
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "read_whitelist"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_24} :catch_25

    .line 1732
    return v6

    .line 1728
    :catch_25
    move-exception v0

    .line 1729
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 2511
    iget-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2512
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 346
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 348
    return-void
.end method

.method public removeEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3055
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "lookup"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_25

    .line 3062
    return-void

    .line 3058
    :catch_25
    move-exception v0

    .line 3059
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeEnterpriseMasq(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2981
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "masq"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2988
    return-void

    .line 2984
    :catch_22
    move-exception v0

    .line 2985
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1977
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget-object v3, p0, mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1982
    :try_start_c
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1983
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1e

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    if-lez v2, :cond_20

    .line 1984
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_56

    .line 2002
    :goto_1f
    return-void

    .line 1988
    :cond_20
    :try_start_20
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "remove"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_45} :catch_59
    .catchall {:try_start_20 .. :try_end_45} :catchall_56

    .line 1993
    :try_start_45
    iget-object v2, p0, mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    iget-object v2, p0, mDaemonHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NetworkManagementService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/NetworkManagementService$3;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2001
    monitor-exit v3

    goto :goto_1f

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_56
    move-exception v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_56

    throw v2

    .line 1990
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_59
    move-exception v0

    .line 1991
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_5a
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_56
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2113
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2133
    :goto_d
    return-void

    .line 2119
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2120
    :try_start_11
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2122
    monitor-exit v2

    goto :goto_d

    .line 2132
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 2127
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "removeinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2128
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_36} :catch_38
    .catchall {:try_start_1e .. :try_end_36} :catchall_1b

    .line 2132
    :try_start_36
    monitor-exit v2

    goto :goto_d

    .line 2129
    :catch_38
    move-exception v0

    .line 2130
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_1b
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2769
    const-string/jumbo v0, "remove"

    const-string v1, "local"

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 2632
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2059
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2081
    :goto_d
    return-void

    .line 2065
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2066
    :try_start_11
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2068
    monitor-exit v2

    goto :goto_d

    .line 2080
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v1

    .line 2071
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    .line 2076
    :try_start_28
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "removeiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_3b} :catch_3d
    .catchall {:try_start_28 .. :try_end_3b} :catchall_1b

    .line 2080
    :try_start_3b
    monitor-exit v2

    goto :goto_d

    .line 2077
    :catch_3d
    move-exception v0

    .line 2078
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_1b
.end method

.method public removeNetwork(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2616
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "destroy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 2623
    return-void

    .line 2620
    :catch_20
    move-exception v0

    .line 2621
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeRejectDefault(Ljava/lang/String;)V
    .registers 8
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    .line 2959
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reject"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_22} :catch_23

    .line 2966
    return-void

    .line 2962
    :catch_23
    move-exception v0

    .line 2963
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1096
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1097
    return-void
.end method

.method public removeUpstreamV6Interface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :try_start_28
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 958
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_46
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_46} :catch_47

    .line 962
    return-void

    .line 959
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_47
    move-exception v1

    .line 960
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Cannot remove upstream interface"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 2310
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    const/16 v5, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    .line 2312
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "users"

    aput-object v6, v2, v5

    .line 2313
    const/4 v5, 0x1

    const-string/jumbo v6, "remove"

    aput-object v6, v2, v5

    .line 2314
    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2315
    const/4 v0, 0x3

    .line 2317
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    array-length v5, p2

    if-ge v4, v5, :cond_4c

    .line 2318
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2319
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_37

    array-length v5, v2

    if-ne v1, v5, :cond_4d

    .line 2321
    :cond_37
    :try_start_37
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_42} :catch_46

    .line 2325
    const/4 v0, 0x3

    .line 2317
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 2322
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_46
    move-exception v3

    .line 2323
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2328
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4c
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4d
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_43
.end method

.method public replaceDefaultRoute(Ljava/lang/String;[B)Z
    .registers 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "gateway"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1253
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1258
    const-string v5, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed - iface is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_18
    return v4

    .line 1262
    :cond_19
    :try_start_19
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1c} :catch_57

    move-result-object v2

    .line 1268
    .local v2, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "route replace def"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1270
    .local v0, "cmd":Ljava/lang/StringBuilder;
    instance-of v5, v2, Ljava/net/Inet4Address;

    if-eqz v5, :cond_61

    .line 1271
    const-string v5, " v4 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :try_start_4b
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4b .. :try_end_54} :catch_67

    move-result-object v3

    .line 1289
    .local v3, "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    goto :goto_18

    .line 1263
    .end local v0    # "cmd":Ljava/lang/StringBuilder;
    .end local v2    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v3    # "rsp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_57
    move-exception v1

    .line 1264
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v5, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed - cannot determine INET family from null gw"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1273
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Ljava/lang/StringBuilder;
    .restart local v2    # "gatewayAddr":Ljava/net/InetAddress;
    :cond_61
    const-string v5, " v6 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1280
    :catch_67
    move-exception v1

    .line 1281
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "NetworkManagementService"

    const-string/jumbo v6, "route cmd failed: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "ip"    # [B
    .param p3, "gateway"    # [B
    .param p4, "routeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2783
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2788
    const-string v6, "NetworkManagementService"

    const-string/jumbo v7, "route cmd failed - iface is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :goto_19
    return v5

    .line 2793
    :cond_1a
    :try_start_1a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1d} :catch_71

    move-result-object v3

    .line 2799
    .local v3, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "route"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "replace"

    aput-object v9, v8, v5

    const-string/jumbo v9, "src"

    aput-object v9, v8, v6

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2801
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_7b

    .line 2802
    const-string/jumbo v7, "v4"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2806
    :goto_3d
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2807
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2808
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2811
    :try_start_4e
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 2813
    .local v2, "gatewayAddr":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_5a

    instance-of v7, v2, Ljava/net/Inet4Address;

    if-nez v7, :cond_62

    :cond_5a
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_69

    instance-of v7, v2, Ljava/net/Inet6Address;

    if-eqz v7, :cond_69

    .line 2816
    :cond_62
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_69
    .catch Ljava/net/UnknownHostException; {:try_start_4e .. :try_end_69} :catch_82

    .line 2823
    .end local v2    # "gatewayAddr":Ljava/net/InetAddress;
    :cond_69
    :goto_69
    :try_start_69
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_69 .. :try_end_6e} :catch_8c

    move-result-object v4

    .local v4, "rsp":Lcom/android/server/NativeDaemonEvent;
    move v5, v6

    .line 2831
    goto :goto_19

    .line 2794
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "ipAddr":Ljava/net/InetAddress;
    .end local v4    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :catch_71
    move-exception v1

    .line 2795
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, "NetworkManagementService"

    const-string/jumbo v7, "route cmd failed because of unknown src ip"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2804
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "ipAddr":Ljava/net/InetAddress;
    :cond_7b
    const-string/jumbo v7, "v6"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3d

    .line 2818
    :catch_82
    move-exception v1

    .line 2819
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    const-string v7, "NetworkManagementService"

    const-string/jumbo v8, "route cmd did not obtain valid gw; adding route without gw"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 2824
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_8c
    move-exception v1

    .line 2825
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "NetworkManagementService"

    const-string/jumbo v7, "route cmd failed: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 15
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1871
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    if-nez p1, :cond_24

    .line 1874
    :try_start_f
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "softap"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "set"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1937
    :goto_23
    return-void

    .line 1877
    :cond_24
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_142

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v6, :cond_36

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-ne v6, v9, :cond_142

    .line 1879
    :cond_36
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1880
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_13d

    .line 1881
    const/16 v6, 0xa

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1895
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4d
    :goto_4d
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxClient = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifiConfig.vendorIE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-nez v6, :cond_173

    .line 1899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DD05001632"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1905
    .local v3, "vendorIE":Ljava/lang/String;
    :goto_a5
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendorIE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v6, 0x0

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 1923
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "softap"

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "set"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_1a2

    :goto_100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/16 v4, 0x8

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0x9

    aput-object v3, v8, v4

    const/16 v4, 0xa

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xb

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xc

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_135
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_135} :catch_137

    goto/16 :goto_23

    .line 1934
    .end local v3    # "vendorIE":Ljava/lang/String;
    :catch_137
    move-exception v0

    .line 1935
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1883
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_13d
    const/4 v6, 0x5

    :try_start_13e
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_4d

    .line 1884
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_142
    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16d

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v6, :cond_154

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-ne v6, v9, :cond_16d

    .line 1886
    :cond_154
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_15e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13e .. :try_end_15e} :catch_137

    move-result-object v1

    .line 1888
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_15f
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v6

    if-ne v6, v4, :cond_4d

    .line 1889
    const/4 v6, 0x1

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_168} :catch_16a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_15f .. :try_end_168} :catch_137

    goto/16 :goto_4d

    .line 1890
    :catch_16a
    move-exception v6

    goto/16 :goto_4d

    .line 1893
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_16d
    :try_start_16d
    iget v6, p0, mCscMaxClient:I

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_4d

    .line 1900
    :cond_173
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-lez v6, :cond_19e

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_19e

    .line 1901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DD05001632"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_a5

    .line 1903
    .end local v3    # "vendorIE":Ljava/lang/String;
    :cond_19e
    const-string v3, ""
    :try_end_1a0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_16d .. :try_end_1a0} :catch_137

    .restart local v3    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_a5

    :cond_1a2
    move v4, v5

    .line 1923
    goto/16 :goto_100
.end method

.method public setAccessPointDisassocSta(Ljava/lang/String;)I
    .registers 9
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1707
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "disassoc_sta"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_26} :catch_27

    .line 1718
    return v6

    .line 1714
    :catch_27
    move-exception v0

    .line 1715
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultInterfaceForDns(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2236
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setdefaultif"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 2242
    return-void

    .line 2239
    :catch_1e
    move-exception v0

    .line 2240
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultNetId(I)V
    .registers 8
    .param p1, "netId"    # I

    .prologue
    .line 2667
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "network"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    .line 2674
    return-void

    .line 2671
    :catch_26
    move-exception v0

    .line 2672
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1403
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    if-eqz p1, :cond_3f

    iget v5, p1, Landroid/net/Network;->netId:I

    .line 1406
    .local v5, "netId":I
    :goto_e
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v8, "tether"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "dns"

    aput-object v10, v9, v7

    const/4 v7, 0x1

    const-string/jumbo v10, "set"

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-direct {v1, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2d
    if-ge v3, v4, :cond_41

    aget-object v6, v0, v3

    .line 1409
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1408
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "netId":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_3f
    move v5, v7

    .line 1405
    goto :goto_e

    .line 1413
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "netId":I
    :cond_41
    :try_start_41
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_46
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_46} :catch_47

    .line 1417
    return-void

    .line 1414
    :catch_47
    move-exception v2

    .line 1415
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 2246
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "setifdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_1f

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_1f
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_27
    if-ge v4, v5, :cond_3f

    aget-object v6, v1, v4

    .line 2252
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2253
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 2254
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2251
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2259
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3f
    :try_start_3f
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_44} :catch_45

    .line 2263
    return-void

    .line 2260
    :catch_45
    move-exception v3

    .line 2261
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 2267
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "setnetdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_23

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_23
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2272
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2b
    if-ge v4, v5, :cond_43

    aget-object v6, v1, v4

    .line 2273
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2274
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_40

    .line 2275
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2272
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 2280
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v6    # "s":Ljava/lang/String;
    :cond_43
    :try_start_43
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_43 .. :try_end_48} :catch_49

    .line 2284
    return-void

    .line 2281
    :catch_49
    move-exception v3

    .line 2282
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 2443
    invoke-static {}, enforceSystemUid()V

    .line 2444
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2445
    if-eqz p3, :cond_2a

    const-string v1, "allow"

    .line 2447
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_egress_dest_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_29} :catch_2d

    .line 2451
    return-void

    .line 2445
    .end local v1    # "rule":Ljava/lang/String;
    :cond_2a
    const-string v1, "deny"

    goto :goto_c

    .line 2448
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 2449
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2431
    invoke-static {}, enforceSystemUid()V

    .line 2432
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2433
    if-eqz p2, :cond_23

    const-string v1, "allow"

    .line 2435
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_egress_source_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_22} :catch_26

    .line 2439
    return-void

    .line 2433
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string v1, "deny"

    goto :goto_c

    .line 2436
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 2437
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 2402
    invoke-static {}, enforceSystemUid()V

    .line 2404
    :try_start_3
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_17

    const-string v1, "enable"

    :goto_f
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2405
    iput-boolean p1, p0, mFirewallEnabled:Z

    .line 2409
    return-void

    .line 2404
    :cond_17
    const-string v1, "disable"
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 2406
    :catch_1a
    move-exception v0

    .line 2407
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 2419
    invoke-static {}, enforceSystemUid()V

    .line 2420
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2421
    if-eqz p2, :cond_23

    const-string v1, "allow"

    .line 2423
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_interface_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_22} :catch_26

    .line 2427
    return-void

    .line 2421
    .end local v1    # "rule":Ljava/lang/String;
    :cond_23
    const-string v1, "deny"

    goto :goto_c

    .line 2424
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 2425
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRule(IZ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 2455
    invoke-static {}, enforceSystemUid()V

    .line 2456
    iget-boolean v2, p0, mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2457
    if-eqz p2, :cond_27

    const-string v1, "allow"

    .line 2459
    .local v1, "rule":Ljava/lang/String;
    :goto_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "set_uid_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_26} :catch_2a

    .line 2463
    return-void

    .line 2457
    .end local v1    # "rule":Ljava/lang/String;
    :cond_27
    const-string v1, "deny"

    goto :goto_c

    .line 2460
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 2461
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setGlobalAlert(J)V
    .registers 10
    .param p1, "alertBytes"    # J

    .prologue
    .line 2137
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2148
    :goto_d
    return-void

    .line 2144
    :cond_e
    :try_start_e
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "setglobalalert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_d

    .line 2145
    :catch_26
    move-exception v0

    .line 2146
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .prologue
    .line 2085
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2109
    :goto_d
    return-void

    .line 2092
    :cond_e
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2093
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setting alert requires existing quota on iface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2096
    :cond_1f
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2097
    :try_start_22
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2098
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2108
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_49

    throw v1

    .line 2103
    :cond_4c
    :try_start_4c
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2104
    iget-object v1, p0, mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_6f} :catch_71
    .catchall {:try_start_4c .. :try_end_6f} :catchall_49

    .line 2108
    :try_start_6f
    monitor-exit v2

    goto :goto_d

    .line 2105
    :catch_71
    move-exception v0

    .line 2106
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_49
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 1010
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    .line 1012
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 1013
    :cond_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Null LinkAddress given"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1016
    :cond_1d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "interface"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "setcfg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1020
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_4e

    .line 1024
    .end local v2    # "flag":Ljava/lang/String;
    :cond_5e
    :try_start_5e
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5e .. :try_end_63} :catch_64

    .line 1028
    return-void

    .line 1025
    :catch_64
    move-exception v1

    .line 1026
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1034
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1035
    invoke-virtual {p0, p1, v0}, setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1036
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1048
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "ipv6privacyextensions"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_23

    const-string v1, "enable"

    :goto_1d
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1055
    return-void

    .line 1050
    :cond_23
    const-string v1, "disable"
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 1052
    :catch_26
    move-exception v0

    .line 1053
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 2036
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    iget-boolean v1, p0, mBandwidthControlEnabled:Z

    if-nez v1, :cond_e

    .line 2055
    :goto_d
    return-void

    .line 2042
    :cond_e
    iget-object v2, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2043
    :try_start_11
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2044
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has quota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2054
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_38

    throw v1

    .line 2049
    :cond_3b
    :try_start_3b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2050
    iget-object v1, p0, mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_5e} :catch_60
    .catchall {:try_start_3b .. :try_end_5e} :catchall_38

    .line 2054
    :try_start_5e
    monitor-exit v2

    goto :goto_d

    .line 2051
    :catch_60
    move-exception v0

    .line 2052
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_38
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1040
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1042
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1043
    invoke-virtual {p0, p1, v0}, setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1044
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 1311
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_1b

    const-string v1, "enable"

    :goto_15
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1317
    return-void

    .line 1313
    :cond_1b
    const-string v1, "disable"
    :try_end_1d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 1314
    :catch_1e
    move-exception v0

    .line 1315
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMaxClient(I)I
    .registers 9
    .param p1, "num"    # I

    .prologue
    const/4 v6, 0x0

    .line 1735
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :try_start_13
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "set_maxclient"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 1746
    return v6

    .line 1742
    :catch_2c
    move-exception v0

    .line 1743
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .prologue
    .line 1234
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setmtu"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_25

    move-result-object v1

    .line 1242
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 1239
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_25
    move-exception v0

    .line 1240
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uids"    # [I

    .prologue
    .line 2689
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    const/16 v5, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    .line 2692
    .local v2, "argv":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string/jumbo v6, "permission"

    aput-object v6, v2, v5

    .line 2693
    const/4 v5, 0x1

    const-string/jumbo v6, "user"

    aput-object v6, v2, v5

    .line 2694
    const/4 v5, 0x2

    const-string/jumbo v6, "set"

    aput-object v6, v2, v5

    .line 2695
    const/4 v5, 0x3

    aput-object p1, v2, v5

    .line 2696
    const/4 v0, 0x4

    .line 2698
    .local v0, "argc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v5, p2

    if-ge v4, v5, :cond_4e

    .line 2699
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argc":I
    .local v1, "argc":I
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2700
    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_39

    array-length v5, v2

    if-ne v1, v5, :cond_4f

    .line 2702
    :cond_39
    :try_start_39
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "network"

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_44} :catch_48

    .line 2706
    const/4 v0, 0x4

    .line 2698
    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 2703
    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :catch_48
    move-exception v3

    .line 2704
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2709
    .end local v1    # "argc":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "argc":I
    :cond_4e
    return-void

    .end local v0    # "argc":I
    .restart local v1    # "argc":I
    :cond_4f
    move v0, v1

    .end local v1    # "argc":I
    .restart local v0    # "argc":I
    goto :goto_45
.end method

.method public setTxPower(I)I
    .registers 9
    .param p1, "txPower"    # I

    .prologue
    const/4 v2, 0x0

    .line 1750
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    :try_start_13
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "softap"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v6, "set_tx_power"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    if-nez p1, :cond_2f

    const/4 v1, 0x4

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_2e} :catch_31

    .line 1761
    return v2

    :cond_2f
    move v1, v2

    .line 1756
    goto :goto_25

    .line 1758
    :catch_31
    move-exception v0

    .line 1759
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setUidNetworkRules(IZ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 2152
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    iget-boolean v2, p0, mBandwidthControlEnabled:Z

    if-nez v2, :cond_e

    .line 2177
    :goto_d
    return-void

    .line 2158
    :cond_e
    iget-object v3, p0, mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2159
    :try_start_11
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2160
    .local v1, "oldRejectOnQuota":Z
    if-ne v1, p2, :cond_1f

    .line 2162
    monitor-exit v3

    goto :goto_d

    .line 2176
    .end local v1    # "oldRejectOnQuota":Z
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v2

    .line 2166
    .restart local v1    # "oldRejectOnQuota":Z
    :cond_1f
    :try_start_1f
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "bandwidth"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p2, :cond_41

    const-string v2, "addnaughtyapps"

    :goto_2b
    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2168
    if-eqz p2, :cond_45

    .line 2169
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_3f} :catch_4b
    .catchall {:try_start_1f .. :try_end_3f} :catchall_1c

    .line 2176
    :goto_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_1c

    goto :goto_d

    .line 2166
    :cond_41
    :try_start_41
    const-string/jumbo v2, "removenaughtyapps"

    goto :goto_2b

    .line 2171
    :cond_45
    iget-object v2, p0, mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_4a} :catch_4b
    .catchall {:try_start_41 .. :try_end_4a} :catchall_1c

    goto :goto_3f

    .line 2173
    :catch_4b
    move-exception v0

    .line 2174
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_4c
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_1c
.end method

.method public setv6DnsForwarders([Ljava/lang/String;)V
    .registers 12
    .param p1, "dns"    # [Ljava/lang/String;

    .prologue
    .line 1422
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "tether"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "dns6"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "set"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_22
    if-ge v3, v4, :cond_34

    aget-object v5, v0, v3

    .line 1426
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1425
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1430
    .end local v5    # "s":Ljava/lang/String;
    :cond_34
    :try_start_34
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_39} :catch_3a

    .line 1434
    return-void

    .line 1431
    :catch_3a
    move-exception v2

    .line 1432
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 1247
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "NetworkManagementService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 15
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1769
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :try_start_d
    const-string v6, "AP"

    invoke-virtual {p0, p2, v6}, wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    if-nez p1, :cond_3a

    .line 1773
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "softap"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "set"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1830
    :goto_28
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "softap"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "startap"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1834
    return-void

    .line 1776
    :cond_3a
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v6, :cond_4c

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-ne v6, v9, :cond_158

    .line 1778
    :cond_4c
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1779
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_153

    .line 1780
    const/16 v6, 0xa

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 1792
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_63
    :goto_63
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxClient = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifiConfig.vendorIE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-nez v6, :cond_183

    .line 1796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DD05001632"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1802
    .local v3, "vendorIE":Ljava/lang/String;
    :goto_bb
    const-string v6, "NetworkManagementService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendorIE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v6, 0x0

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 1820
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "softap"

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "set"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p1}, getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v10, :cond_1b2

    :goto_116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    const/16 v4, 0x8

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0x9

    aput-object v3, v8, v4

    const/16 v4, 0xa

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xb

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xc

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_14b} :catch_14d

    goto/16 :goto_28

    .line 1831
    .end local v3    # "vendorIE":Ljava/lang/String;
    :catch_14d
    move-exception v0

    .line 1832
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1782
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_153
    const/4 v6, 0x5

    :try_start_154
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_63

    .line 1783
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_158
    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v6, :cond_16a

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-ne v6, v9, :cond_63

    .line 1785
    :cond_16a
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_174
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_154 .. :try_end_174} :catch_14d

    move-result-object v1

    .line 1787
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_175
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v6

    if-ne v6, v4, :cond_63

    .line 1788
    const/4 v6, 0x1

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_17e} :catch_180
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_175 .. :try_end_17e} :catch_14d

    goto/16 :goto_63

    .line 1789
    :catch_180
    move-exception v6

    goto/16 :goto_63

    .line 1797
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_183
    :try_start_183
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-lez v6, :cond_1ae

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_1ae

    .line 1798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DD05001632"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_bb

    .line 1800
    .end local v3    # "vendorIE":Ljava/lang/String;
    :cond_1ae
    const-string v3, ""
    :try_end_1b0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_183 .. :try_end_1b0} :catch_14d

    .restart local v3    # "vendorIE":Ljava/lang/String;
    goto/16 :goto_bb

    :cond_1b2
    move v4, v5

    .line 1820
    goto/16 :goto_116
.end method

.method public startClatd(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2474
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 2481
    return-void

    .line 2478
    :catch_1d
    move-exception v0

    .line 2479
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I

    .prologue
    .line 2379
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "videocallstats"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_30} :catch_31

    .line 2386
    return-void

    .line 2383
    :catch_31
    move-exception v0

    .line 2384
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 12
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .prologue
    .line 1321
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "tether"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "start"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_27

    aget-object v2, v0, v4

    .line 1327
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1331
    .end local v2    # "d":Ljava/lang/String;
    :cond_27
    :try_start_27
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 1335
    return-void

    .line 1332
    :catch_2d
    move-exception v3

    .line 1333
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .registers 8
    .param p1, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 1860
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stopap"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1863
    const-string v1, "STA"

    invoke-virtual {p0, p1, v1}, wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 1867
    return-void

    .line 1864
    :catch_20
    move-exception v0

    .line 1865
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopClatd()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2485
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 2492
    return-void

    .line 2489
    :catch_1a
    move-exception v0

    .line 2490
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "inport"    # I
    .param p3, "outport"    # I

    .prologue
    .line 2390
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "videocallstats"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_30} :catch_31

    .line 2397
    return-void

    .line 2394
    :catch_31
    move-exception v0

    .line 2395
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopTethering()V
    .registers 7

    .prologue
    .line 1339
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 1345
    return-void

    .line 1342
    :catch_1b
    move-exception v0

    .line 1343
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, prepareNativeDaemon()V

    .line 331
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1365
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "interface"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_3b

    .line 1371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v2, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-virtual {p0, p1, v1}, addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1376
    return-void

    .line 1368
    .end local v1    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catch_3b
    move-exception v0

    .line 1369
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public unblockEnterpriseUids([ILjava/lang/String;)V
    .registers 11
    .param p1, "uids"    # [I
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3135
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "enterprise"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "block"

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3137
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const-string/jumbo v4, "remove"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3138
    invoke-virtual {v0, p2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3139
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3141
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v4, p1

    if-ge v2, v4, :cond_44

    .line 3142
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3143
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_41

    .line 3144
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 3147
    :cond_44
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unblockEnterpriseUids: remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :try_start_66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3151
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_72} :catch_73

    .line 3156
    :goto_72
    return-void

    .line 3152
    :catch_73
    move-exception v1

    .line 3153
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NetworkManagementService"

    const-string v5, "Exception occured"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72
.end method

.method public unmarkEnterpriseUids([ILjava/lang/String;)V
    .registers 11
    .param p1, "uids"    # [I
    .param p2, "mark"    # Ljava/lang/String;

    .prologue
    .line 3088
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v6, "NetworkManagementService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "enterprise"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mark"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "remove"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3090
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3091
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v4, p1

    if-ge v2, v4, :cond_44

    .line 3092
    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3093
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_41

    .line 3094
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 3097
    :cond_44
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    :try_start_49
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmarkEnterpriseUids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3101
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_72} :catch_73

    .line 3106
    :goto_72
    return-void

    .line 3102
    :catch_73
    move-exception v1

    .line 3103
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .prologue
    .line 2516
    iget-object v0, p0, mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2517
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 352
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 354
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1380
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_22} :catch_26

    .line 1386
    invoke-virtual {p0, p1}, removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1387
    return-void

    .line 1383
    :catch_26
    move-exception v0

    .line 1384
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateEnterpriseBlockChain(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "chainId"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .prologue
    .line 3026
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    if-eqz p2, :cond_2a

    .line 3029
    :try_start_b
    const-string v1, "NetworkManagementService"

    const-string v2, "adding block chain to output rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "blockchain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3039
    :goto_29
    return-void

    .line 3032
    :cond_2a
    const-string v1, "NetworkManagementService"

    const-string/jumbo v2, "removing block chain to output rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "blockchain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_4a} :catch_4b

    goto :goto_29

    .line 3035
    :catch_4b
    move-exception v0

    .line 3036
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateEnterpriseMarkChain(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "chainId"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "add"    # Z

    .prologue
    .line 3009
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    if-eqz p3, :cond_31

    .line 3012
    :try_start_b
    const-string v1, "NetworkManagementService"

    const-string v2, "adding mark chain to output rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "markchain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3022
    :goto_30
    return-void

    .line 3015
    :cond_31
    const-string v1, "NetworkManagementService"

    const-string v2, "deleting mark chain to output rule"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "markchain"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_57
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_57} :catch_58

    goto :goto_30

    .line 3018
    :catch_58
    move-exception v0

    .line 3019
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "enable"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1534
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "ra"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_23} :catch_24

    .line 1541
    return-void

    .line 1538
    :catch_24
    move-exception v0

    .line 1539
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public updateRejectUidRangeRule(ZII)V
    .registers 10
    .param p1, "reject"    # Z
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I

    .prologue
    .line 3160
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    if-eqz p1, :cond_2f

    .line 3163
    :try_start_b
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reject"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "adduidrange"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3170
    :goto_2e
    return-void

    .line 3165
    :cond_2f
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "enterprise"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reject"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "removeuidrange"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_53} :catch_54

    goto :goto_2e

    .line 3167
    :catch_54
    move-exception v0

    .line 3168
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1850
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    :try_start_9
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "softap"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwreload"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 1856
    return-void

    .line 1853
    :catch_20
    move-exception v0

    .line 1854
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1671
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :try_start_12
    const-string/jumbo v2, "wps_ap_pin_set"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "wps_ap_pin_client"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "wps_check_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1678
    :cond_2d
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_3e} :catch_59

    move-result-object v1

    .line 1685
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    :goto_3f
    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1686
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1680
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_49
    :try_start_49
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "softap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_57
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_57} :catch_59

    move-result-object v1

    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_3f

    .line 1682
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_59
    move-exception v0

    .line 1683
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
