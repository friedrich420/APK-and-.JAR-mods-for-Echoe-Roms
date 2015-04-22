.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final BIND_VPN_SERVICE:Ljava/lang/String; = "android.permission.BIND_VPN_SERVICE"

.field private static final DBG:Z

.field private static final INVALID_PACKAGE_UID:I = -0x1

.field private static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field private static final NETWORKTYPE:Ljava/lang/String; = "Knox_VPN"

.field private static final NOTIFICATION_SIZE:I = 0x48

.field private static final PER_APP_VPN:Z = false

.field private static final REMOVE:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "EnterpriseVpn"

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field private static final VPN_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private isMetaDataEnabled:Z

.field private mAllowIPv4:Z

.field private mAllowIPv6:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLabel:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    .line 167
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .registers 23
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "netService"    # Landroid/os/INetworkManagementService;
    .param p5, "connService"    # Landroid/net/IConnectivityManager;
    .param p6, "userId"    # I

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mPersonaManager:Landroid/os/PersonaManager;

    .line 135
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, mPackage:Ljava/lang/String;

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mBitmap:Landroid/graphics/Bitmap;

    .line 140
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, mLabel:Ljava/lang/String;

    .line 141
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRouteInfo:Z

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, isMetaDataEnabled:Z

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/connectivity/EnterpriseVpn$4;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 173
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 174
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, mPackage:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mNetd:Landroid/os/INetworkManagementService;

    .line 176
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, mConnectivityService:Landroid/net/IConnectivityManager;

    .line 177
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, mUserId:I

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mLooper:Landroid/os/Looper;

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 181
    .local v14, "token":J
    :try_start_60
    move-object/from16 v0, p0

    iget-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v4, v0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v2, v1}, getAppUid(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mOwnerUID:I

    .line 183
    const-string v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOwnerUID value is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, mOwnerUID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget v2, v0, mOwnerUID:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b7

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectivityService:Landroid/net/IConnectivityManager;

    move-object/from16 v0, p0

    iget v4, v0, mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget v4, v0, mOwnerUID:I

    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_b7} :catch_131
    .catchall {:try_start_60 .. :try_end_b7} :catchall_153

    .line 192
    :cond_b7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    :goto_ba
    new-instance v3, Lcom/android/server/connectivity/EnterpriseVpn$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 204
    .local v3, "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v5, "localeFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    if-nez p6, :cond_106

    .line 211
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    :cond_106
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v4, 0x11

    const/4 v6, 0x0

    const-string v7, "Knox_VPN"

    const-string v8, ""

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 233
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 236
    return-void

    .line 189
    .end local v3    # "localeChangedReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "localeFilter":Landroid/content/IntentFilter;
    :catch_131
    move-exception v12

    .line 190
    .local v12, "e":Ljava/lang/Exception;
    :try_start_132
    const-string v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to register mObserver : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_132 .. :try_end_14e} :catchall_153

    .line 192
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_ba

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_153
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, onUserAdded(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/EnterpriseVpn;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-object v0, p0, mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 113
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-boolean v0, p0, mRouteInfo:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/EnterpriseVpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/EnterpriseVpn;

    .prologue
    .line 113
    iget-object v0, p0, mPackage:Ljava/lang/String;

    return-object v0
.end method

.method private agentConnect(Ljava/lang/String;)V
    .registers 22
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    new-instance v9, Landroid/net/LinkProperties;

    invoke-direct {v9}, Landroid/net/LinkProperties;-><init>()V

    .line 452
    .local v9, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_3f

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 456
    .local v14, "dnsServer":Ljava/lang/String;
    invoke-static {v14}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 457
    .local v12, "address":Ljava/net/InetAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 458
    instance-of v2, v12, Ljava/net/Inet4Address;

    if-eqz v2, :cond_39

    .line 459
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mAllowIPv4:Z

    goto :goto_1c

    .line 461
    :cond_39
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mAllowIPv6:Z

    goto :goto_1c

    .line 467
    .end local v12    # "address":Ljava/net/InetAddress;
    .end local v14    # "dnsServer":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_3f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v13, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_6c

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 470
    .local v15, "domain":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 473
    .end local v15    # "domain":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_6c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v11, Landroid/net/NetworkMisc;

    invoke-direct {v11}, Landroid/net/NetworkMisc;-><init>()V

    .line 479
    .local v11, "networkMisc":Landroid/net/NetworkMisc;
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 480
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, mProfileName:Ljava/lang/String;

    iput-object v2, v11, Landroid/net/NetworkMisc;->knoxProfileName:Ljava/lang/String;

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 485
    .local v18, "token":J
    :try_start_9f
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$3;

    move-object/from16 v0, p0

    iget-object v4, v0, mLooper:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    const-string v6, "Knox_VPN"

    move-object/from16 v0, p0

    iget-object v7, v0, mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_bd
    .catchall {:try_start_9f .. :try_end_bd} :catchall_c1

    .line 493
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 503
    return-void

    .line 493
    :catchall_c1
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 515
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 516
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 517
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 507
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-eqz p2, :cond_1a

    .line 509
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "EnterpriseVpn"

    const-string v1, "agentDisconnect() : send "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_17
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 512
    :cond_1a
    return-void
.end method

.method private enforceControlPermission()V
    .registers 8

    .prologue
    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v6, 0x3e8

    if-ne v3, v6, :cond_9

    .line 688
    :goto_8
    return-void

    .line 676
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 677
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 680
    .local v4, "token":J
    :try_start_15
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 681
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 682
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_3b
    .catchall {:try_start_15 .. :try_end_2a} :catchall_40

    if-ne v1, v3, :cond_30

    .line 688
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_33
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    :catch_3b
    move-exception v3

    .line 688
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_40
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 921
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 924
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v2

    .line 928
    .local v2, "result":I
    :goto_a
    return v2

    .line 925
    .end local v2    # "result":I
    :catch_b
    move-exception v0

    .line 926
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_a
.end method

.method private declared-synchronized getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    monitor-enter p0

    :try_start_1
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "EnterpriseVpn"

    const-string v3, "getDomainsByProfileName()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_c
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_4c

    move-result-object v1

    .line 877
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_12
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 878
    invoke-direct {p0}, getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_2d
    .catchall {:try_start_12 .. :try_end_21} :catchall_4c

    move-result-object v2

    .line 885
    :goto_22
    monitor-exit p0

    return-object v2

    .line 880
    :cond_24
    :try_start_24
    invoke-direct {p0}, getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2d
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4c

    move-result-object v2

    goto :goto_22

    .line 882
    :catch_2d
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_4c

    .line 885
    const/4 v2, 0x0

    goto :goto_22

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_11

    .line 265
    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 267
    :cond_11
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 264
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .registers 2

    .prologue
    .line 652
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 581
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 582
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 585
    :cond_11
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getPremiumVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 272
    iget-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1a

    .line 273
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 274
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_14
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 279
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1a
    iget-object v1, p0, mPremiumVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v3, -0x1

    .line 634
    .local v3, "uid":I
    :try_start_1
    invoke-direct {p0}, getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 635
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 636
    .local v4, "token":J
    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 637
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2b

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for info :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2b
    if-eqz v1, :cond_3a

    .line 639
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_38

    const-string v6, "EnterpriseVpn"

    const-string v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_38
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 642
    :cond_3a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_63

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "application uid for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_64

    .line 648
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "token":J
    :cond_63
    :goto_63
    return v3

    .line 644
    :catch_64
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getUIDForPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v3, -0x1

    goto :goto_63
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 889
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "EnterpriseVpn"

    const-string v4, "onUserAdded()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_b
    monitor-enter p0

    .line 892
    :try_start_c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 893
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 894
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_2d

    move-result v3

    if-eqz v3, :cond_22

    .line 896
    :try_start_1c
    iget-object v3, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_24
    .catchall {:try_start_1c .. :try_end_22} :catchall_2d

    .line 901
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit p0

    .line 902
    return-void

    .line 897
    :catch_24
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_2d
    move-exception v3

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 905
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "EnterpriseVpn"

    const-string v4, "onUserRemoved()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_b
    monitor-enter p0

    .line 908
    :try_start_c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 909
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 910
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_2c

    move-result v3

    if-eqz v3, :cond_21

    .line 912
    :try_start_1e
    invoke-virtual {p0, p1}, hideNotification(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_23
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 917
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit p0

    .line 918
    return-void

    .line 913
    :catch_23
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseVpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 917
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_2c
    move-exception v3

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
    .line 611
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDnsToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dnsList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 614
    .local v2, "token":J
    :try_start_2b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v1, "extra_action"

    const-string v4, "dns_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v1, "extra_profile_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    if-eqz p2, :cond_4a

    .line 619
    const-string v1, "dnsList"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 621
    :cond_4a
    if-eqz p3, :cond_54

    .line 622
    const-string/jumbo v1, "searchDomainList"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 624
    :cond_54
    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDnsToKnoxVpn : Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_2b .. :try_end_74} :catchall_78

    .line 627
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    return-void

    .line 627
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_78
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendInterfaceStateToKnoxVpn(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 592
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2a

    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn : profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 596
    .local v2, "token":J
    :try_start_2e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v1, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "extra_profile_name"

    iget-object v4, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "extra_tun_id"

    iget-object v4, p0, mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_72

    const-string v1, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInterfaceStateToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_72
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_7d

    .line 605
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    return-void

    .line 605
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_7d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "EnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_27
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_38

    .line 257
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 259
    :cond_38
    return-void
.end method


# virtual methods
.method public agentDisconnect()V
    .registers 5

    .prologue
    .line 520
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 521
    .local v0, "temp":Z
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_22

    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnect() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_22
    if-eqz v0, :cond_2e

    .line 523
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v1, v2}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 526
    :cond_2e
    return-void
.end method

.method public closeInterface()V
    .registers 3

    .prologue
    .line 805
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "EnterpriseVpn"

    const-string v1, "closeInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_b
    iget-object v0, p0, mInterface:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 807
    iget-object v0, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v0}, jniReset(Ljava/lang/String;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, mInterface:Ljava/lang/String;

    .line 810
    :cond_17
    return-void
.end method

.method public createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 697
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104054e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040550

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "text":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080b3f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 710
    .local v0, "notification":Landroid/app/Notification;
    return-object v0
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 30
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 320
    .local v17, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_af

    move-result-object v18

    .line 321
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 323
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    invoke-interface/range {v24 .. v27}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_3e
    .catchall {:try_start_16 .. :try_end_34} :catchall_af

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_42

    .line 325
    const/16 v19, 0x0

    .line 446
    :goto_3c
    monitor-exit p0

    return-object v19

    .line 327
    :catch_3e
    move-exception v8

    .line 328
    .local v8, "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_3c

    .line 332
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_42
    :try_start_42
    new-instance v15, Landroid/content/Intent;

    const-string v24, "android.net.VpnService"

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_af

    move-result-wide v20

    .line 337
    .local v20, "token":J
    :try_start_62
    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 338
    .local v22, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v24

    if-nez v24, :cond_82

    const-string v24, "no_config_vpn"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b2

    .line 339
    :cond_82
    new-instance v24, Ljava/lang/SecurityException;

    const-string v25, "Restricted users cannot establish VPNs"

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_8a} :catch_8a
    .catchall {:try_start_62 .. :try_end_8a} :catchall_aa

    .line 351
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :catch_8a
    move-exception v8

    .line 352
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_8b
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_aa

    .line 354
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_aa
    move-exception v24

    :try_start_ab
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_af

    .line 319
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "token":J
    :catchall_af
    move-exception v24

    monitor-exit p0

    throw v24

    .line 342
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "token":J
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_b2
    :try_start_b2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 343
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_ed

    .line 344
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot find "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 347
    :cond_ed
    const-string v24, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_124

    .line 348
    new-instance v24, Ljava/lang/SecurityException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not require "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_124} :catch_8a
    .catchall {:try_start_b2 .. :try_end_124} :catchall_aa

    .line 354
    :cond_124
    :try_start_124
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_147

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-eqz v24, :cond_147

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_14f

    .line 358
    :cond_147
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRouteInfo:Z

    .line 363
    :cond_14f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mProfileName:Ljava/lang/String;

    .line 364
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, mLabel:Ljava/lang/String;

    .line 365
    const/16 v23, -0x1

    .line 366
    .local v23, "width":I
    const/4 v11, -0x1

    .line 367
    .local v11, "height":I
    const/4 v10, -0x1

    .line 368
    .local v10, "fixed_size":I
    const/4 v13, 0x0

    .line 371
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-nez v24, :cond_178

    .line 388
    :cond_178
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, isMetaDataEnabled:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, jniCreate(IZ)I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_191
    .catchall {:try_start_124 .. :try_end_191} :catchall_af

    move-result-object v19

    .line 391
    .local v19, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_192
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v25, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, jniGetName(I)Ljava/lang/String;

    move-result-object v16

    .line 393
    .local v16, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1ba
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_205

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 396
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1e0} :catch_1e1
    .catchall {:try_start_192 .. :try_end_1e0} :catchall_af

    goto :goto_1ba

    .line 435
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "interfaze":Ljava/lang/String;
    :catch_1e1
    move-exception v8

    .line 436
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1e2
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception in creating tun interface"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fe
    .catchall {:try_start_1e2 .. :try_end_1fe} :catchall_af

    .line 438
    :try_start_1fe
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_201} :catch_3c2
    .catchall {:try_start_1fe .. :try_end_201} :catchall_af

    .line 442
    :goto_201
    const/16 v19, 0x0

    goto/16 :goto_3c

    .line 398
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "interfaze":Ljava/lang/String;
    :cond_205
    :try_start_205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_223

    .line 399
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "At least one address must be specified"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 402
    :cond_223
    new-instance v7, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V

    .line 403
    .local v7, "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, mUserId:I

    move/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_26c

    .line 404
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot bind "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 406
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v24, v0

    if-eqz v24, :cond_283

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 409
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2a8

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2a8

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, jniReset(Ljava/lang/String;)V

    .line 413
    :cond_2a8
    move-object/from16 v0, p0

    iput-object v7, v0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 414
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mInterface:Ljava/lang/String;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 418
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAllowIPv4:Z

    .line 421
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "hsengiv: mAllowIPv4 value is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAllowIPv4:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAllowIPv6:Z

    .line 423
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "hsengiv: mAllowIPv4 value is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAllowIPv6:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, agentConnect(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 429
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    if-eqz v24, :cond_36c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_389

    .line 431
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, mProfileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, sendDnsToKnoxVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 433
    :cond_389
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, sendInterfaceStateToKnoxVpn(I)V
    :try_end_392
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_392} :catch_1e1
    .catchall {:try_start_205 .. :try_end_392} :catchall_af

    .line 445
    :try_start_392
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Established by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " on "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 439
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/EnterpriseVpn$Connection;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "interfaze":Ljava/lang/String;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3c2
    move-exception v9

    .line 440
    .local v9, "ex":Ljava/lang/Exception;
    const-string v24, "EnterpriseVpn"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception in closing tun interface"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3df
    .catchall {:try_start_392 .. :try_end_3df} :catchall_af

    goto/16 :goto_201
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataStateInIP()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaUserIds()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > mUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v0, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 861
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_6d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6d

    .line 862
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_53

    const-string v4, "EnterpriseVpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPersonaUserIds > persona size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 864
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 867
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_6d
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_78

    const-string v4, "EnterpriseVpn"

    const-string v5, "getPersonaUserIds > Does not created any persona!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_78
    return-object v0
.end method

.method public hideNotification()V
    .registers 10

    .prologue
    .line 815
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "EnterpriseVpn"

    const-string v7, "hideNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_b
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 818
    .local v3, "nm":Landroid/app/NotificationManager;
    if-eqz v3, :cond_68

    .line 819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 820
    .local v4, "identity":J
    invoke-virtual {p0}, getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 821
    .local v1, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    if-eqz v1, :cond_65

    .line 823
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 824
    .local v0, "domain":I
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_59

    const-string v6, "EnterpriseVpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideNotification > domain : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_59
    const/4 v6, 0x0

    add-int/lit16 v7, v0, 0x3e9

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2d

    .line 828
    .end local v0    # "domain":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_65
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    .end local v1    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "identity":J
    :cond_68
    return-void
.end method

.method public hideNotification(I)V
    .registers 8
    .param p1, "domain"    # I

    .prologue
    .line 833
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideNotification > domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 836
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz v2, :cond_3a

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 838
    .local v0, "identity":J
    const/4 v3, 0x0

    add-int/lit16 v4, p1, 0x3e9

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 839
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    .end local v0    # "identity":J
    :cond_3a
    return-void
.end method

.method public declared-synchronized prepare()Z
    .registers 4

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, enforceControlPermission()V

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "prepareResult":Z
    iget-object v1, p0, mInterface:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 294
    iget-object v1, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    if-eqz v1, :cond_17

    .line 295
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 298
    :cond_17
    const/4 v1, 0x2

    invoke-direct {p0, v1}, sendInterfaceStateToKnoxVpn(I)V

    .line 299
    invoke-virtual {p0}, closeInterface()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 301
    const/4 v0, 0x1

    .line 303
    :cond_22
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v2, "disconnected"

    invoke-direct {p0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 304
    monitor-exit p0

    return v0

    .line 291
    .end local v0    # "prepareResult":Z
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refreshNotification(ZI)V
    .registers 11
    .param p1, "optionAdd"    # Z
    .param p2, "domain"    # I

    .prologue
    .line 844
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_27

    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshNotification > domain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", optionAdd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 847
    .local v2, "identity":J
    :try_start_2b
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 849
    .local v1, "nm":Landroid/app/NotificationManager;
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {v5, v6, p1, p2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v4

    .line 850
    .local v4, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    add-int/lit16 v6, p2, 0x3e9

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4c} :catch_50

    .line 854
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    return-void

    .line 851
    :catch_50
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseVpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public setMetaDataStateInIP(Z)V
    .registers 2
    .param p1, "metaState"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, isMetaDataEnabled:Z

    .line 242
    return-void
.end method

.method public showNotification(Lcom/android/internal/net/VpnConfig;Z)V
    .registers 19
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "optionAdd"    # Z

    .prologue
    .line 714
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_2d

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > profileName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , optionAdd : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 718
    .local v9, "nm":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3d

    if-nez v9, :cond_45

    .line 719
    :cond_3d
    const-string v12, "EnterpriseVpn"

    const-string v13, "Error : can not init"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_44
    :goto_44
    return-void

    .line 723
    :cond_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 724
    if-eqz v9, :cond_44

    if-eqz p1, :cond_44

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 727
    .local v6, "identity":J
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_61

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > KNOX 2.0 enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_61
    move-object/from16 v0, p0

    iget-boolean v12, v0, mRouteInfo:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c2

    .line 729
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_74

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > vpn type is system"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_74
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v0, v1, v13}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 731
    .local v10, "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, mUserId:I

    add-int/lit16 v13, v13, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v15, v0, mUserId:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 732
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_be

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > domain : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mUserId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .end local v10    # "notification":Landroid/app/Notification;
    :cond_be
    :goto_be
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    .line 734
    :cond_c2
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_ce

    const-string v12, "EnterpriseVpn"

    const-string/jumbo v13, "showNotification > vpn type is per-app"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_ce
    :try_start_ce
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 737
    .local v3, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_14e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_14e

    .line 738
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_e4
    :goto_e4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 739
    .local v8, "item":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 740
    .local v2, "domain":I
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 741
    .restart local v10    # "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    add-int/lit16 v13, v2, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 742
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_e4

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > keyicon notified to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_12e} :catch_12f

    goto :goto_e4

    .line 759
    .end local v2    # "domain":I
    .end local v3    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "item":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    :catch_12f
    move-exception v4

    .line 760
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 751
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14e
    :try_start_14e
    invoke-virtual/range {p0 .. p0}, getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 752
    .local v11, "personaIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_15e
    :goto_15e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 754
    .local v8, "item":I
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v8}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v10

    .line 755
    .restart local v10    # "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    add-int/lit16 v13, v8, 0x3e9

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v12, v13, v10, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 756
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_15e

    const-string v12, "EnterpriseVpn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNotification > keyicon notified to user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_1a7} :catch_12f

    goto :goto_15e
.end method

.method public declared-synchronized updateNotification()V
    .registers 15

    .prologue
    .line 770
    monitor-enter p0

    :try_start_1
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_20

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_20
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 773
    .local v6, "nm":Landroid/app/NotificationManager;
    if-eqz v6, :cond_9c

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 775
    .local v4, "identity":J
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104054e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 776
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040550

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 778
    .local v8, "text":Ljava/lang/String;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_4e

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > KNOX 2.0 enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_4e
    iget-boolean v10, p0, mRouteInfo:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9e

    .line 780
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_5f

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is system"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_5f
    iget-object v10, p0, mContext:Landroid/content/Context;

    iget v11, p0, mUserId:I

    invoke-static {v10, v11}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 782
    .local v7, "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    iget v11, p0, mUserId:I

    add-int/lit16 v11, v11, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    iget v13, p0, mUserId:I

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 783
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_99

    const-string v10, "EnterpriseVpn"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateNotification > domain : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, mUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v7    # "notification":Landroid/app/Notification;
    :cond_99
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9c
    .catchall {:try_start_1 .. :try_end_9c} :catchall_de

    .line 797
    .end local v4    # "identity":J
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_9c
    monitor-exit p0

    return-void

    .line 785
    .restart local v4    # "identity":J
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_9e
    :try_start_9e
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_aa

    const-string v10, "EnterpriseVpn"

    const-string/jumbo v11, "updateNotification > vpn type is per-app"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_aa
    iget-object v10, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-direct {p0, v10}, getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 787
    .local v1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_99

    .line 788
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 789
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 790
    .local v0, "domain":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {p0, v10}, createNotification(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    .line 791
    .restart local v7    # "notification":Landroid/app/Notification;
    const/4 v10, 0x0

    add-int/lit16 v11, v0, 0x3e9

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v10, v11, v7, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_dd
    .catchall {:try_start_9e .. :try_end_dd} :catchall_de

    goto :goto_b8

    .line 770
    .end local v0    # "domain":I
    .end local v1    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "identity":J
    .end local v6    # "nm":Landroid/app/NotificationManager;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :catchall_de
    move-exception v10

    monitor-exit p0

    throw v10
.end method
