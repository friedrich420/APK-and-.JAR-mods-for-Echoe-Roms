.class public Lcom/android/server/connectivity/Vpn;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOGD:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "VPN"

.field private static final PER_APP_VPN:Z = false

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "Vpn"


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private isMetaDataEnabled:Z

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private volatile mEnableTeardown:Z

.field private mInterface:Ljava/lang/String;

.field private mKnoxOldInterface:Ljava/lang/String;

.field private mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;

.field private mOwnerUID:I

.field private mPackage:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mRouteInfo:Z

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserHandle:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mVpnUsers:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .registers 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v1, p0, mEnableTeardown:Z

    .line 166
    iput-boolean v7, p0, isMetaDataEnabled:Z

    .line 171
    iput-object v4, p0, mVpnUsers:Ljava/util/List;

    .line 173
    iput-object v4, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-boolean v1, p0, mRouteInfo:Z

    .line 184
    iput-object v4, p0, mKnoxOldInterface:Ljava/lang/String;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, KNOXVPN_FEATURE:I

    .line 187
    iput v1, p0, KNOXVPN_MDM_ENABLED:I

    .line 188
    const/4 v0, 0x2

    iput v0, p0, KNOXVPN_CONTAINER_ENABLED:I

    .line 892
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 193
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 194
    iput-object p3, p0, mNetd:Landroid/os/INetworkManagementService;

    .line 195
    iput-object p4, p0, mConnService:Landroid/net/IConnectivityManager;

    .line 196
    iput p5, p0, mUserHandle:I

    .line 197
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 199
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, mPackage:Ljava/lang/String;

    .line 200
    iget-object v0, p0, mPackage:Ljava/lang/String;

    iget v1, p0, mUserHandle:I

    invoke-direct {p0, v0, v1}, getAppUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mOwnerUID:I

    .line 203
    :try_start_39
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_82

    .line 207
    :goto_3e
    if-nez p5, :cond_60

    .line 209
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_60
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x11

    const-string v2, "VPN"

    const-string v4, ""

    invoke-direct {v0, v1, v7, v2, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 234
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 235
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 236
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 237
    return-void

    .line 204
    :catch_82
    move-exception v6

    .line 205
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-boolean v0, p0, mRouteInfo:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/Vpn;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, mRouteInfo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-boolean v0, p0, isMetaDataEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mStatusIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 134
    iput-object p1, p0, mStatusIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 134
    iput-object p1, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    invoke-direct {p0}, agentDisconnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-boolean v0, p0, mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 134
    iput-object p1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, copyStringArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    invoke-direct {p0}, getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 134
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, mProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mKnoxOldInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, mKnoxOldInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 134
    iput-object p1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3400([B)V
    .registers 1
    .param p0, "x0"    # [B

    .prologue
    .line 134
    invoke-static {p0}, wipeByteArray([B)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Vpn;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    invoke-direct {p0}, agentConnect()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget v0, p0, mUserHandle:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 134
    iput-object p1, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    iget-object v0, p0, mVpnUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 134
    iput-object p1, p0, mVpnUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, hideNotification(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 134
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    return v0
.end method

.method private addVpnUserLocked(I)V
    .registers 25
    .param p1, "userHandle"    # I

    .prologue
    .line 728
    invoke-direct/range {p0 .. p0}, isRunningLocked()Z

    move-result v20

    if-nez v20, :cond_e

    .line 729
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "VPN is not active"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 732
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_123

    .line 734
    const/4 v13, -0x1

    .local v13, "start":I
    const/4 v14, -0x1

    .line 735
    .local v14, "stop":I
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_69

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 736
    .local v15, "uid":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_51

    .line 737
    move v13, v15

    .line 742
    :cond_4f
    :goto_4f
    move v14, v15

    .line 743
    goto :goto_38

    .line 738
    :cond_51
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_4f

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v14}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    move v13, v15

    goto :goto_4f

    .line 744
    .end local v15    # "uid":I
    :cond_69
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v14}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "start":I
    .end local v14    # "stop":I
    :cond_7f
    :goto_7f
    invoke-direct/range {p0 .. p0}, prepareStatusIntent()V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[Legacy VPN]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_122

    .line 767
    const/4 v4, 0x0

    .line 768
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 770
    .local v16, "token":J
    const/4 v5, 0x0

    .line 772
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_96
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 773
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2080

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 774
    invoke-virtual {v4, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 776
    .local v11, "label":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 777
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    if-lez v20, :cond_118

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    if-lez v20, :cond_118

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 780
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050006

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 782
    .local v8, "height":I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 783
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 784
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 785
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_118} :catch_1b2
    .catchall {:try_start_96 .. :try_end_118} :catchall_1bb

    .line 791
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v8    # "height":I
    .end local v19    # "width":I
    :cond_118
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v5, v1}, showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 795
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "label":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "token":J
    :cond_122
    return-void

    .line 745
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a3

    .line 747
    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v18

    .line 748
    .local v18, "userRange":Landroid/net/UidRange;
    move-object/from16 v0, v18

    iget v13, v0, Landroid/net/UidRange;->start:I

    .line 749
    .restart local v13    # "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_153
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 750
    .restart local v15    # "uid":I
    if-ne v15, v13, :cond_168

    .line 751
    add-int/lit8 v13, v13, 0x1

    goto :goto_153

    .line 753
    :cond_168
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    add-int/lit8 v22, v15, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v13, v15, 0x1

    goto :goto_153

    .line 757
    .end local v15    # "uid":I
    :cond_17f
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v13, v0, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Landroid/net/UidRange;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/UidRange;->stop:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v13, v1}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7f

    .line 760
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "start":I
    .end local v18    # "userRange":Landroid/net/UidRange;
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7f

    .line 788
    .restart local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "token":J
    :catch_1b2
    move-exception v7

    .line 789
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1b3
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Invalid application"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1bb
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_1bb

    .line 791
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_1bb
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method private agentConnect()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc

    .line 513
    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 515
    .local v7, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 516
    :cond_13
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 521
    :goto_18
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 522
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v9, Landroid/net/NetworkMisc;

    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    .line 525
    .local v9, "networkMisc":Landroid/net/NetworkMisc;
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    iput-boolean v0, v9, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 529
    .local v12, "token":J
    :try_start_34
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    iget-object v2, p0, mLooper:Landroid/os/Looper;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "VPN"

    iget-object v5, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    iput-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_86

    .line 537
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    iget v0, p0, mUserHandle:I

    invoke-direct {p0, v0}, addVpnUserLocked(I)V

    .line 542
    iget v0, p0, mUserHandle:I

    if-nez v0, :cond_90

    .line 543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 546
    :try_start_57
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_8b

    move-result-object v14

    .line 548
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 551
    .local v11, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 552
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, addVpnUserLocked(I)V

    goto :goto_68

    .line 518
    .end local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "token":J
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_80
    iget-object v0, p0, mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_18

    .line 537
    .restart local v9    # "networkMisc":Landroid/net/NetworkMisc;
    .restart local v12    # "token":J
    :catchall_86
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 548
    :catchall_8b
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 556
    :cond_90
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v0, p0, mVpnUsers:Ljava/util/List;

    iget-object v2, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/UidRange;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V

    .line 557
    return-void
.end method

.method private agentDisconnect()V
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 574
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0, v0, v1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 577
    :cond_12
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkAgent;)V
    .registers 4
    .param p1, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    .line 568
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 569
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1}, agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V

    .line 570
    return-void
.end method

.method private agentDisconnect(Landroid/net/NetworkInfo;Landroid/net/NetworkAgent;)V
    .registers 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "networkAgent"    # Landroid/net/NetworkAgent;

    .prologue
    const/4 v1, 0x0

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 561
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, v0, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    if-eqz p2, :cond_f

    .line 563
    invoke-virtual {p2, p1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 565
    :cond_f
    return-void
.end method

.method private copyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "toCopy"    # Ljava/lang/String;

    .prologue
    .line 2141
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2142
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 2143
    .local v1, "copy":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 2144
    const/4 v3, 0x0

    aput-char v3, v0, v2

    .line 2143
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2146
    :cond_13
    return-object v1
.end method

.method private copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "toCopy"    # [Ljava/lang/String;

    .prologue
    .line 2156
    if-eqz p1, :cond_14

    .line 2157
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 2158
    .local v0, "copy":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 2159
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2158
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2163
    .end local v0    # "copy":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_14
    const/4 v0, 0x0

    :cond_15
    return-object v0
.end method

.method private enforceControlPermission()V
    .registers 9

    .prologue
    .line 934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_9

    .line 954
    :goto_8
    return-void

    .line 937
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 938
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 941
    .local v4, "token":J
    :try_start_15
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 942
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "com.android.vpndialogs"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 943
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_30

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_50
    .catchall {:try_start_15 .. :try_end_2a} :catchall_55

    if-ne v1, v6, :cond_30

    .line 954
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .line 947
    :cond_30
    :try_start_30
    const-string v6, "com.android.systemui"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 948
    .local v3, "sysUiApp":Landroid/content/pm/ApplicationInfo;
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_45

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_50
    .catchall {:try_start_30 .. :try_end_3f} :catchall_55

    if-ne v1, v6, :cond_45

    .line 954
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :cond_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "sysUiApp":Landroid/content/pm/ApplicationInfo;
    :goto_48
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Unauthorized Caller"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 951
    :catch_50
    move-exception v6

    .line 954
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    :catchall_55
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .registers 5
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1122
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_8

    .line 1123
    return-object v1

    .line 1127
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAppUid(Ljava/lang/String;I)I
    .registers 7
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 440
    const-string v3, "[Legacy VPN]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 441
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 450
    :goto_c
    return v2

    .line 443
    :cond_d
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 446
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_13
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_18

    move-result v2

    .local v2, "result":I
    goto :goto_c

    .line 447
    .end local v2    # "result":I
    :catch_18
    move-exception v0

    .line 448
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_c
.end method

.method private getAppsUids(Ljava/util/List;I)Ljava/util/SortedSet;
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 719
    .local v3, "uids":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    .local v0, "app":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, getAppUid(Ljava/lang/String;I)I

    move-result v2

    .line 721
    .local v2, "uid":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 723
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_24
    return-object v3
.end method

.method private getKnoxVpnFeature()I
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x2

    iput v0, p0, KNOXVPN_FEATURE:I

    .line 244
    iget v0, p0, KNOXVPN_FEATURE:I

    return v0
.end method

.method private getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 3

    .prologue
    .line 987
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 988
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_17

    .line 989
    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 996
    :cond_17
    :goto_17
    iget-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v0

    .line 994
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    goto :goto_17
.end method

.method private hideNotification(I)V
    .registers 8
    .param p1, "user"    # I

    .prologue
    const/4 v1, 0x0

    .line 1038
    iput-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 1039
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1042
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_22

    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1045
    .local v2, "token":J
    const/4 v1, 0x0

    const v4, 0x1080b3d

    :try_start_17
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 1047
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    .end local v2    # "token":J
    :cond_22
    return-void

    .line 1047
    .restart local v2    # "token":J
    :catchall_23
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isRunningLocked()Z
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, mVpnUsers:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isVpnConnectionSecure([Ljava/lang/String;)Z
    .registers 7
    .param p1, "racoon"    # [Ljava/lang/String;

    .prologue
    .line 2121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2122
    .local v2, "token":J
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2124
    const/4 v0, 0x1

    .line 2125
    .local v0, "result":Z
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1d

    .line 2126
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v1

    iput-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 2128
    :cond_1d
    iget-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-eqz v1, :cond_27

    .line 2129
    iget-object v1, p0, mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    invoke-virtual {v1, p1}, Landroid/app/enterprise/VpnPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z

    move-result v0

    .line 2131
    :cond_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2132
    return v0
.end method

.method private isVpnUserPreConsented(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 435
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v1, 0x2f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private native jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(IZ)I
.end method

.method private native jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .registers 15

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x0

    .line 458
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v9, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    .line 459
    .local v1, "allowIPv4":Z
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v2, v9, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    .line 461
    .local v2, "allowIPv6":Z
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 463
    .local v7, "lp":Landroid/net/LinkProperties;
    iget-object v9, p0, mInterface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 465
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v9, :cond_40

    .line 466
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 467
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 468
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 469
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 470
    goto :goto_22

    .line 473
    .end local v0    # "address":Landroid/net/LinkAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_40
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v9, :cond_6c

    .line 474
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 475
    .local v8, "route":Landroid/net/RouteInfo;
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 476
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 477
    .local v0, "address":Ljava/net/InetAddress;
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 478
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 479
    goto :goto_4e

    .line 482
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "route":Landroid/net/RouteInfo;
    :cond_6c
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v9, :cond_94

    .line 483
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 484
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 485
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 486
    instance-of v9, v0, Ljava/net/Inet4Address;

    or-int/2addr v1, v9

    .line 487
    instance-of v9, v0, Ljava/net/Inet6Address;

    or-int/2addr v2, v9

    .line 488
    goto :goto_7a

    .line 491
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v4    # "dnsServer":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_94
    if-nez v1, :cond_a5

    .line 492
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 494
    :cond_a5
    if-nez v2, :cond_b6

    .line 495
    new-instance v9, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    sget-object v11, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v10, v11, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v9, v10, v13}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 499
    :cond_b6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v3, "buffer":Ljava/lang/StringBuilder;
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v9, :cond_df

    .line 501
    iget-object v9, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_c9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 502
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c9

    .line 505
    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_df
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 509
    return-object v7
.end method

.method private onUserAdded(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    .line 833
    monitor-enter p0

    .line 834
    :try_start_2
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 835
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 836
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_59

    move-result v4

    if-eqz v4, :cond_38

    .line 838
    :try_start_12
    invoke-direct {p0, p1}, addVpnUserLocked(I)V

    .line 839
    iget-object v4, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v4, :cond_38

    .line 841
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v4

    if-lt v4, v5, :cond_3a

    .line 842
    iget-boolean v4, p0, mRouteInfo:Z

    if-ne v4, v5, :cond_38

    .line 843
    invoke-direct {p0, p1}, uidRangesForUser(I)Ljava/util/List;

    move-result-object v2

    .line 844
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v5, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRange;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    invoke-virtual {v5, v4}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_50
    .catchall {:try_start_12 .. :try_end_38} :catchall_59

    .line 857
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_59

    .line 858
    return-void

    .line 849
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, uidRangesForUser(I)Ljava/util/List;

    move-result-object v2

    .line 850
    .restart local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v5, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRange;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/UidRange;

    invoke-virtual {v5, v4}, Landroid/net/NetworkAgent;->addUidRanges([Landroid/net/UidRange;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_50
    .catchall {:try_start_3a .. :try_end_4f} :catchall_59

    goto :goto_38

    .line 853
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :catch_50
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v4, "Vpn"

    const-string v5, "Failed to add restricted user to owner"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 857
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_59
    move-exception v4

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v4
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 864
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 865
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_21

    move-result v3

    if-eqz v3, :cond_16

    .line 867
    :try_start_13
    invoke-direct {p0, p1}, removeVpnUserLocked(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18
    .catchall {:try_start_13 .. :try_end_16} :catchall_21

    .line 872
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 873
    return-void

    .line 868
    :catch_18
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_21
    move-exception v3

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v3
.end method

.method private prepareStatusIntent()V
    .registers 5

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 977
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget v3, p0, mUserHandle:I

    invoke-static {v2, v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mStatusIntent:Landroid/app/PendingIntent;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 979
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    return-void

    .line 979
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeVpnUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    .line 811
    invoke-direct {p0}, isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 812
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_f
    invoke-direct {p0, p1}, uidRangesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 815
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_32

    .line 817
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    if-lt v1, v2, :cond_3b

    .line 818
    iget-boolean v1, p0, mRouteInfo:Z

    if-ne v1, v2, :cond_32

    .line 819
    iget-object v2, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    .line 827
    :cond_32
    :goto_32
    iget-object v1, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 828
    const/4 v1, 0x0

    iput-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 829
    return-void

    .line 824
    :cond_3b
    iget-object v2, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/UidRange;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v2, v1}, Landroid/net/NetworkAgent;->removeUidRanges([Landroid/net/UidRange;)V

    goto :goto_32
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 1021
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1022
    const-string v4, "Vpn"

    const-string/jumbo v5, "showNotification : LOCKDOWN_VPN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_14
    :goto_14
    return-void

    .line 1025
    :cond_15
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1026
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_14

    .line 1027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1029
    .local v2, "token":J
    :try_start_25
    iget-object v4, p0, mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2, v4}, createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1030
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    const v5, 0x1080b3d

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3b

    .line 1032
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .end local v1    # "notification":Landroid/app/Notification;
    :catchall_3b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, stopLegacyVpn()V

    .line 1313
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1315
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_1b

    .line 1318
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1320
    :cond_1b
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1321
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 1322
    monitor-exit p0

    return-void

    .line 1309
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uidRangesForUser(I)Ljava/util/List;
    .registers 8
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {p1}, Landroid/net/UidRange;->createForUser(I)Landroid/net/UidRange;

    move-result-object v3

    .line 801
    .local v3, "userRange":Landroid/net/UidRange;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    iget-object v4, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 803
    .local v1, "range":Landroid/net/UidRange;
    iget v4, v1, Landroid/net/UidRange;->start:I

    iget v5, v3, Landroid/net/UidRange;->start:I

    if-lt v4, v5, :cond_f

    iget v4, v1, Landroid/net/UidRange;->stop:I

    iget v5, v3, Landroid/net/UidRange;->stop:I

    if-gt v4, v5, :cond_f

    .line 804
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 807
    .end local v1    # "range":Landroid/net/UidRange;
    :cond_2b
    return-object v2
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 6
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v0, "Vpn"

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

    .line 283
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_34

    .line 285
    iget-object v0, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 287
    :cond_34
    return-void
.end method

.method private static wipeByteArray([B)V
    .registers 3
    .param p0, "byteArray"    # [B

    .prologue
    .line 2150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_a

    .line 2151
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2153
    :cond_a
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, mOwnerUID:I

    if-ne v1, v2, :cond_11

    iget-object v1, p0, mInterface:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_28

    if-nez v1, :cond_14

    .line 1085
    :cond_11
    const/4 v0, 0x0

    .line 1091
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 1087
    :cond_14
    :try_start_14
    iget-object v1, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, jniAddAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1088
    .local v0, "success":Z
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_12

    .line 1089
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_28

    goto :goto_12

    .line 1084
    .end local v0    # "success":Z
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 13
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1001
    if-nez p1, :cond_47

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104054e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "title":Ljava/lang/String;
    :goto_d
    iget-object v3, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v3, :cond_55

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040550

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "text":Ljava/lang/String;
    :goto_1c
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080b3d

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1015
    .local v0, "notification":Landroid/app/Notification;
    return-object v0

    .line 1001
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_47
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104054f

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 1003
    .restart local v2    # "title":Ljava/lang/String;
    :cond_55
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040551

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 28
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 589
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 590
    .local v12, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, mOwnerUID:I

    move/from16 v23, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_88

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1f

    .line 591
    const/16 v20, 0x0

    .line 709
    :goto_1d
    monitor-exit p0

    return-object v20

    .line 594
    :cond_1f
    :try_start_1f
    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.net.VpnService"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_88

    move-result-wide v18

    .line 599
    .local v18, "token":J
    :try_start_3f
    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    .line 600
    .local v21, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v22

    if-nez v22, :cond_5b

    const-string v22, "no_config_vpn"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8b

    .line 601
    :cond_5b
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Restricted users cannot establish VPNs"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_63} :catch_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_83

    .line 612
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :catch_63
    move-exception v7

    .line 613
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_64
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_83

    .line 615
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_83
    move-exception v22

    :try_start_84
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    .line 589
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "mgr":Landroid/os/UserManager;
    .end local v18    # "token":J
    :catchall_88
    move-exception v22

    monitor-exit p0

    throw v22

    .line 604
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "mgr":Landroid/os/UserManager;
    .restart local v18    # "token":J
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_8b
    :try_start_8b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 606
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-nez v9, :cond_c6

    .line 607
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 609
    :cond_c6
    const-string v22, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_fd

    .line 610
    new-instance v22, Ljava/lang/SecurityException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not require "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_fd} :catch_63
    .catchall {:try_start_8b .. :try_end_fd} :catchall_83

    .line 615
    :cond_fd
    :try_start_fd
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    move-object/from16 v0, p0

    iget-object v13, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 620
    .local v13, "oldConfig":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p0

    iget-object v15, v0, mInterface:Ljava/lang/String;

    .line 621
    .local v15, "oldInterface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 622
    .local v14, "oldConnection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkAgent:Landroid/net/NetworkAgent;

    move-object/from16 v16, v0

    .line 623
    .local v16, "oldNetworkAgent":Landroid/net/NetworkAgent;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnUsers:Ljava/util/List;

    move-object/from16 v17, v0

    .line 627
    .local v17, "oldUsers":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    invoke-direct/range {p0 .. p0}, getKnoxVpnFeature()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_154

    .line 628
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-eqz v22, :cond_14c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1dd

    .line 629
    :cond_14c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRouteInfo:Z

    .line 637
    :cond_154
    :goto_154
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, isMetaDataEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, jniCreate(IZ)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_16d
    .catchall {:try_start_fd .. :try_end_16d} :catchall_88

    move-result-object v20

    .line 639
    .local v20, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_16e
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v23, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, jniGetName(I)Ljava/lang/String;

    move-result-object v11

    .line 643
    .local v11, "interfaze":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v5, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_196
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 645
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_1bc} :catch_1bd
    .catchall {:try_start_16e .. :try_end_1bc} :catchall_88

    goto :goto_196

    .line 697
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "interfaze":Ljava/lang/String;
    :catch_1bd
    move-exception v7

    .line 698
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_1be
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 699
    invoke-direct/range {p0 .. p0}, agentDisconnect()V

    .line 701
    move-object/from16 v0, p0

    iput-object v13, v0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 702
    move-object/from16 v0, p0

    iput-object v14, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 703
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mVpnUsers:Ljava/util/List;

    .line 704
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mNetworkAgent:Landroid/net/NetworkAgent;

    .line 705
    move-object/from16 v0, p0

    iput-object v15, v0, mInterface:Ljava/lang/String;

    .line 706
    throw v7

    .line 631
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v20    # "tun":Landroid/os/ParcelFileDescriptor;
    :cond_1dd
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRouteInfo:Z
    :try_end_1e5
    .catchall {:try_start_1be .. :try_end_1e5} :catchall_88

    goto/16 :goto_154

    .line 647
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "interfaze":Ljava/lang/String;
    .restart local v20    # "tun":Landroid/os/ParcelFileDescriptor;
    :cond_1e7
    :try_start_1e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_203

    .line 648
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "At least one address must be specified"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 650
    :cond_203
    new-instance v6, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 651
    .local v6, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, mUserHandle:I

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v10, v6, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v22

    if-nez v22, :cond_24c

    .line 653
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot bind "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 656
    :cond_24c
    move-object/from16 v0, p0

    iput-object v6, v0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 657
    move-object/from16 v0, p0

    iput-object v11, v0, mInterface:Ljava/lang/String;

    .line 659
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mProfileName:Ljava/lang/String;

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 665
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 668
    invoke-direct/range {p0 .. p0}, getKnoxVpnFeature()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2a4

    .line 669
    move-object/from16 v0, p0

    iget-boolean v0, v0, isMetaDataEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2a4

    .line 670
    const-string v22, "net.vpn.markbase"

    const-string/jumbo v23, "true"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_2a4
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, mVpnUsers:Ljava/util/List;

    .line 678
    invoke-direct/range {p0 .. p0}, agentConnect()V

    .line 680
    if-eqz v14, :cond_2bf

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 686
    :cond_2bf
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, agentDisconnect(Landroid/net/NetworkAgent;)V

    .line 687
    if-eqz v15, :cond_2d3

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2d3

    .line 688
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, jniReset(Ljava/lang/String;)V
    :try_end_2d3
    .catch Ljava/lang/RuntimeException; {:try_start_1e7 .. :try_end_2d3} :catch_1bd
    .catchall {:try_start_1e7 .. :try_end_2d3} :catchall_88

    .line 692
    :cond_2d3
    :try_start_2d3
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v22

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_2e0
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2e0} :catch_310
    .catch Ljava/lang/RuntimeException; {:try_start_2d3 .. :try_end_2e0} :catch_1bd
    .catchall {:try_start_2d3 .. :try_end_2e0} :catchall_88

    .line 708
    :try_start_2e0
    const-string v22, "Vpn"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Established by "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " on "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30e
    .catchall {:try_start_2e0 .. :try_end_30e} :catchall_88

    goto/16 :goto_1d

    .line 693
    :catch_310
    move-exception v7

    .line 694
    .local v7, "e":Ljava/io/IOException;
    :try_start_311
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_334
    .catch Ljava/lang/RuntimeException; {:try_start_311 .. :try_end_334} :catch_1bd
    .catchall {:try_start_311 .. :try_end_334} :catchall_88
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_7

    .line 1355
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1357
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .prologue
    .line 1341
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, enforceControlPermission()V

    .line 1342
    iget-object v1, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 1350
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 1344
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1345
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1346
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1347
    iget-object v1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1348
    iget-object v1, p0, mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_2b

    goto :goto_9

    .line 1341
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMetaDataStateInIP()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, isMetaDataEnabled:Z

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 2

    .prologue
    .line 879
    invoke-direct {p0}, enforceControlPermission()V

    .line 880
    iget-object v0, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public getVpnType()Z
    .registers 2

    .prologue
    .line 1107
    iget-boolean v0, p0, mRouteInfo:Z

    return v0
.end method

.method public hideNotificationForLockdown()V
    .registers 3

    .prologue
    .line 1079
    const-string v0, "Vpn"

    const-string v1, "hideNotificationForLockdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget v0, p0, mUserHandle:I

    invoke-direct {p0, v0}, hideNotification(I)V

    .line 1081
    return-void
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 890
    :goto_6
    monitor-exit p0

    return-void

    .line 886
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 887
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 309
    monitor-enter p0

    if-eqz p1, :cond_31

    :try_start_4
    iget-object v6, p0, mPackage:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 312
    const-string v6, "[Legacy VPN]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-direct {p0, p1}, isVpnUserPreConsented(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2c

    move-result-wide v2

    .line 318
    .local v2, "token":J
    const/4 v6, 0x0

    :try_start_1f
    invoke-virtual {p0, v6, p1}, prepare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    .line 320
    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2c

    .line 403
    .end local v2    # "token":J
    :cond_25
    :goto_25
    monitor-exit p0

    return v5

    .line 320
    .restart local v2    # "token":J
    :catchall_27
    move-exception v5

    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .line 309
    .end local v2    # "token":J
    :catchall_2c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 324
    :cond_2f
    const/4 v5, 0x0

    goto :goto_25

    .line 328
    :cond_31
    if-eqz p2, :cond_25

    :try_start_33
    iget-object v6, p0, mPackage:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    const-string v6, "[Legacy VPN]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 334
    :cond_43
    invoke-direct {p0}, enforceControlPermission()V

    .line 337
    iget-object v6, p0, mInterface:Ljava/lang/String;

    if-eqz v6, :cond_8e

    .line 338
    iget-object v6, p0, mVpnUsers:Ljava/util/List;

    if-eqz v6, :cond_68

    .line 339
    iget-object v6, p0, mVpnUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UidRange;

    .line 340
    .local v4, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v4}, Landroid/net/UidRange;->getStartUser()I

    move-result v6

    invoke-direct {p0, v6}, hideNotification(I)V

    goto :goto_54

    .line 344
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "uidRange":Landroid/net/UidRange;
    :cond_68
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    if-lt v6, v5, :cond_10f

    .line 345
    iget-boolean v6, p0, mRouteInfo:Z

    if-ne v6, v5, :cond_78

    .line 346
    const/4 v6, 0x0

    iput-object v6, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 347
    invoke-direct {p0}, agentDisconnect()V

    .line 349
    :cond_78
    iget-boolean v6, p0, isMetaDataEnabled:Z

    if-eqz v6, :cond_83

    .line 350
    const-string v6, "net.vpn.markbase"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_83
    :goto_83
    iget-object v6, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v6}, jniReset(Ljava/lang/String;)V

    .line 359
    const/4 v6, 0x0

    iput-object v6, p0, mInterface:Ljava/lang/String;

    .line 360
    const/4 v6, 0x0

    iput-object v6, p0, mVpnUsers:Ljava/util/List;

    .line 364
    :cond_8e
    iget-object v6, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_90
    .catchall {:try_start_33 .. :try_end_90} :catchall_2c

    if-eqz v6, :cond_117

    .line 366
    :try_start_92
    iget-object v6, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn$Connection;->access$200(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v6

    const v7, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a4} :catch_181
    .catchall {:try_start_92 .. :try_end_a4} :catchall_2c

    .line 371
    :goto_a4
    :try_start_a4
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 372
    const/4 v6, 0x0

    iput-object v6, p0, mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 378
    :cond_ae
    :goto_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b1
    .catchall {:try_start_a4 .. :try_end_b1} :catchall_2c

    move-result-wide v2

    .line 380
    .restart local v2    # "token":J
    :try_start_b2
    iget-object v6, p0, mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->denyProtect(I)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b9} :catch_124
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_14e

    .line 384
    :try_start_b9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    :goto_bc
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object p2, p0, mPackage:Ljava/lang/String;

    .line 389
    iget v6, p0, mUserHandle:I

    invoke-direct {p0, p2, v6}, getAppUid(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, mOwnerUID:I

    .line 390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_ed
    .catchall {:try_start_b9 .. :try_end_ed} :catchall_2c

    move-result-wide v2

    .line 392
    :try_start_ee
    iget-object v6, p0, mConnService:Landroid/net/IConnectivityManager;

    iget v7, p0, mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getChainingEnabledForProfile(I)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 393
    iget-object v6, p0, mNetd:Landroid/os/INetworkManagementService;

    iget v7, p0, mOwnerUID:I

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_ff} :catch_153
    .catchall {:try_start_ee .. :try_end_ff} :catchall_17c

    .line 398
    :cond_ff
    :try_start_ff
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    :goto_102
    const/4 v6, 0x0

    iput-object v6, p0, mConfig:Lcom/android/internal/net/VpnConfig;

    .line 402
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v7, "prepare"

    invoke-direct {p0, v6, v7}, updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 355
    .end local v2    # "token":J
    :cond_10f
    const/4 v6, 0x0

    iput-object v6, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 356
    invoke-direct {p0}, agentDisconnect()V

    goto/16 :goto_83

    .line 373
    :cond_117
    iget-object v6, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v6, :cond_ae

    .line 374
    iget-object v6, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 375
    const/4 v6, 0x0

    iput-object v6, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_123
    .catchall {:try_start_ff .. :try_end_123} :catchall_2c

    goto :goto_ae

    .line 381
    .restart local v2    # "token":J
    :catch_124
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    :try_start_125
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to disallow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_125 .. :try_end_149} :catchall_14e

    .line 384
    :try_start_149
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_bc

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_14e
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_153
    .catchall {:try_start_149 .. :try_end_153} :catchall_2c

    .line 395
    :catch_153
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_154
    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to allow UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mOwnerUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to call protect() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_154 .. :try_end_178} :catchall_17c

    .line 398
    :try_start_178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_102

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_17c
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_181
    .catchall {:try_start_178 .. :try_end_181} :catchall_2c

    .line 368
    .end local v2    # "token":J
    :catch_181
    move-exception v6

    goto/16 :goto_a4
.end method

.method public declared-synchronized removeAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, p0, mOwnerUID:I

    if-ne v1, v2, :cond_11

    iget-object v1, p0, mInterface:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_28

    if-nez v1, :cond_14

    .line 1096
    :cond_11
    const/4 v0, 0x0

    .line 1102
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 1098
    :cond_14
    :try_start_14
    iget-object v1, p0, mInterface:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, jniDelAddress(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1099
    .local v0, "success":Z
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_12

    .line 1100
    iget-object v1, p0, mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-direct {p0}, makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_28

    goto :goto_12

    .line 1095
    .end local v0    # "success":Z
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setEnableTeardown(Z)V
    .registers 2
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, mEnableTeardown:Z

    .line 276
    return-void
.end method

.method public setMetaDataStateInIP(Z)V
    .registers 5
    .param p1, "metaState"    # Z

    .prologue
    .line 252
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_25

    .line 253
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside setMetaDataStateInIP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_23
    iput-boolean p1, p0, isMetaDataEnabled:Z

    .line 256
    :cond_25
    return-void
.end method

.method public setPackageAuthorization(Z)V
    .registers 10
    .param p1, "authorized"    # Z

    .prologue
    .line 411
    invoke-direct {p0}, enforceControlPermission()V

    .line 413
    iget-object v4, p0, mPackage:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string v4, "[Legacy VPN]"

    iget-object v5, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 428
    :cond_11
    :goto_11
    return-void

    .line 417
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 419
    .local v2, "token":J
    :try_start_16
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 421
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2f

    iget v6, p0, mOwnerUID:I

    iget-object v7, p0, mPackage:Ljava/lang/String;

    if-eqz p1, :cond_30

    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_32
    .catchall {:try_start_16 .. :try_end_2c} :catchall_51

    .line 426
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    .line 421
    :cond_30
    const/4 v4, 0x1

    goto :goto_29

    .line 423
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    :catch_32
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set app ops for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_51

    .line 426
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public showNotificationForLockdown(II)V
    .registers 11
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 1053
    const-string v5, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showNotificationForLockdown :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget v4, p0, mUserHandle:I

    .line 1058
    .local v4, "user":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, mStatusIntent:Landroid/app/PendingIntent;

    .line 1059
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1060
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_7e

    .line 1061
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1063
    .local v2, "token":J
    :try_start_39
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040555

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1071
    .local v1, "notification":Landroid/app/Notification;
    const/4 v5, 0x0

    const v6, 0x1080b3d

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_7b
    .catchall {:try_start_39 .. :try_end_7b} :catchall_7f

    .line 1073
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "token":J
    :cond_7e
    return-void

    .line 1073
    .restart local v2    # "token":J
    :catchall_7f
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .registers 27
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;

    .prologue
    .line 1135
    invoke-direct/range {p0 .. p0}, enforceControlPermission()V

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1137
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "KeyStore isn\'t unlocked"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1139
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    .line 1140
    .local v13, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget v2, v0, mUserHandle:I

    invoke-virtual {v13, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 1141
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "no_config_vpn"

    invoke-virtual {v13, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1142
    :cond_2f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Restricted users cannot establish VPNs"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_37
    invoke-static/range {p3 .. p3}, findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v12

    .line 1146
    .local v12, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 1147
    .local v10, "gateway":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v11

    .line 1150
    .local v11, "iface":Ljava/lang/String;
    const-string v15, ""

    .line 1151
    .local v15, "privateKey":Ljava/lang/String;
    const-string v19, ""

    .line 1152
    .local v19, "userCert":Ljava/lang/String;
    const-string v8, ""

    .line 1153
    .local v8, "caCert":Ljava/lang/String;
    const-string v17, ""

    .line 1154
    .local v17, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1157
    .local v20, "value":[B
    if-nez v20, :cond_f6

    const/16 v19, 0x0

    .line 1159
    .end local v20    # "value":[B
    :cond_91
    :goto_91
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1161
    .restart local v20    # "value":[B
    if-nez v20, :cond_102

    const/4 v8, 0x0

    .line 1163
    .end local v20    # "value":[B
    :cond_bb
    :goto_bb
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e6

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v20

    .line 1165
    .restart local v20    # "value":[B
    if-nez v20, :cond_10c

    const/16 v17, 0x0

    .line 1167
    .end local v20    # "value":[B
    :cond_e6
    :goto_e6
    if-eqz v15, :cond_ee

    if-eqz v19, :cond_ee

    if-eqz v8, :cond_ee

    if-nez v17, :cond_118

    .line 1168
    :cond_ee
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot load credentials"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1157
    .restart local v20    # "value":[B
    :cond_f6
    new-instance v19, Ljava/lang/String;

    .end local v19    # "userCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_91

    .line 1161
    .restart local v19    # "userCert":Ljava/lang/String;
    :cond_102
    new-instance v8, Ljava/lang/String;

    .end local v8    # "caCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    invoke-direct {v8, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_bb

    .line 1165
    .restart local v8    # "caCert":Ljava/lang/String;
    :cond_10c
    new-instance v17, Ljava/lang/String;

    .end local v17    # "serverCert":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_e6

    .line 1172
    .end local v20    # "value":[B
    .restart local v17    # "serverCert":Ljava/lang/String;
    :cond_118
    const/16 v16, 0x0

    .line 1173
    .local v16, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_43c

    .line 1198
    :goto_121
    :pswitch_121
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_44a

    .line 1258
    :goto_128
    :pswitch_128
    move-object/from16 v21, v16

    .line 1259
    .local v21, "vpnParameters":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, isVpnConnectionSecure([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b4

    .line 1261
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

    const-string v22, "Connecting to VPN network "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, " failed - unsecure"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1306
    :goto_16b
    return-void

    .line 1175
    .end local v21    # "vpnParameters":[Ljava/lang/String;
    :pswitch_16c
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v11, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "udppsk"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "1701"

    aput-object v3, v16, v2

    .line 1179
    .restart local v16    # "racoon":[Ljava/lang/String;
    goto :goto_121

    .line 1181
    :pswitch_195
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v11, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "udprsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v15, v16, v2

    const/4 v2, 0x4

    aput-object v19, v16, v2

    const/4 v2, 0x5

    aput-object v8, v16, v2

    const/4 v2, 0x6

    aput-object v17, v16, v2

    const/4 v2, 0x7

    const-string v3, "1701"

    aput-object v3, v16, v2

    .line 1185
    .restart local v16    # "racoon":[Ljava/lang/String;
    goto/16 :goto_121

    .line 1187
    :pswitch_1be
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v11, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "hybridrsa"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    aput-object v8, v16, v2

    const/4 v2, 0x4

    aput-object v17, v16, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v16, v2

    const/16 v2, 0x8

    aput-object v10, v16, v2

    .restart local v16    # "racoon":[Ljava/lang/String;
    goto/16 :goto_121

    .line 1200
    :pswitch_1f2
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "xauthpsk"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    .line 1204
    .restart local v16    # "racoon":[Ljava/lang/String;
    const-string v2, "Vpn"

    const-string v3, "charon: type = IPSEC_XAUTH_PSK"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 1207
    :pswitch_229
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "xauthrsa"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    aput-object v15, v16, v2

    const/4 v2, 0x3

    aput-object v19, v16, v2

    const/4 v2, 0x4

    aput-object v8, v16, v2

    const/4 v2, 0x5

    aput-object v17, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v16, v2

    .line 1211
    .restart local v16    # "racoon":[Ljava/lang/String;
    const-string v2, "Vpn"

    const-string v3, "charon: type = IPSEC_XAUTH_PSK"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 1214
    :pswitch_25f
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "ikev2psk"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v3, v16, v2

    .line 1218
    .restart local v16    # "racoon":[Ljava/lang/String;
    const-string v2, "Vpn"

    const-string v3, "charon: type = IPSEC_IKEV2_PSK"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 1221
    :pswitch_287
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v16    # "racoon":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "ikev2rsa"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    aput-object v15, v16, v2

    const/4 v2, 0x3

    aput-object v19, v16, v2

    const/4 v2, 0x4

    aput-object v8, v16, v2

    const/4 v2, 0x5

    aput-object v17, v16, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    aput-object v3, v16, v2

    .line 1225
    .restart local v16    # "racoon":[Ljava/lang/String;
    const-string v2, "Vpn"

    const-string v3, "charon: type = IPSEC_IKEV2_RSA"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 1270
    .restart local v21    # "vpnParameters":[Ljava/lang/String;
    :cond_2b4
    const/4 v14, 0x0

    .line 1271
    .local v14, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_458

    .line 1292
    :goto_2bc
    new-instance v9, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v9}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1293
    .local v9, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1294
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1295
    iput-object v11, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1296
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1298
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30b

    .line 1300
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1302
    :cond_30b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32b

    .line 1303
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, copyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1305
    :cond_32b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1, v14}, startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_16b

    .line 1273
    .end local v9    # "config":Lcom/android/internal/net/VpnConfig;
    :pswitch_334
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    .end local v14    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v11, v14, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "pptp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1723"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "password"

    aput-object v3, v14, v2

    const/4 v2, 0x7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x8

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "1400"

    aput-object v3, v14, v2

    const/16 v3, 0x13

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v2, :cond_3b9

    const-string v2, "+mppe"

    :goto_3b5
    aput-object v2, v14, v3

    .line 1280
    .restart local v14    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_2bc

    .line 1273
    .end local v14    # "mtpd":[Ljava/lang/String;
    :cond_3b9
    const-string v2, "nomppe"

    goto :goto_3b5

    .line 1283
    .restart local v14    # "mtpd":[Ljava/lang/String;
    :pswitch_3bc
    const/16 v2, 0x14

    new-array v14, v2, [Ljava/lang/String;

    .end local v14    # "mtpd":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v11, v14, v2

    const/4 v2, 0x1

    const-string v3, "l2tp"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "1701"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v14, v2

    const/4 v2, 0x6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v3, v14, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "password"

    aput-object v3, v14, v2

    const/16 v2, 0x8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v3, v14, v2

    const/16 v2, 0x9

    const-string v3, "linkname"

    aput-object v3, v14, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "vpn"

    aput-object v3, v14, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "refuse-eap"

    aput-object v3, v14, v2

    const/16 v2, 0xc

    const-string v3, "nodefaultroute"

    aput-object v3, v14, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "usepeerdns"

    aput-object v3, v14, v2

    const/16 v2, 0xe

    const-string v3, "idle"

    aput-object v3, v14, v2

    const/16 v2, 0xf

    const-string v3, "1800"

    aput-object v3, v14, v2

    const/16 v2, 0x10

    const-string v3, "mtu"

    aput-object v3, v14, v2

    const/16 v2, 0x11

    const-string v3, "1300"

    aput-object v3, v14, v2

    const/16 v2, 0x12

    const-string v3, "mru"

    aput-object v3, v14, v2

    const/16 v2, 0x13

    const-string v3, "1300"

    aput-object v3, v14, v2

    .restart local v14    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_2bc

    .line 1173
    :pswitch_data_43c
    .packed-switch 0x1
        :pswitch_16c
        :pswitch_195
        :pswitch_121
        :pswitch_121
        :pswitch_1be
    .end packed-switch

    .line 1198
    :pswitch_data_44a
    .packed-switch 0x3
        :pswitch_1f2
        :pswitch_229
        :pswitch_128
        :pswitch_25f
        :pswitch_287
    .end packed-switch

    .line 1271
    :pswitch_data_458
    .packed-switch 0x0
        :pswitch_334
        :pswitch_3bc
        :pswitch_3bc
    .end packed-switch
.end method

.method public declared-synchronized stopLegacyVpn()V
    .registers 3

    .prologue
    .line 1325
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_11

    .line 1326
    iget-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1329
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 1332
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    .line 1334
    :cond_11
    monitor-exit p0

    return-void

    .line 1332
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 1325
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
