.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.super Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    }
.end annotation


# static fields
.field private static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field private static final DBG:Z

.field private static final DEFAULT_CONTAINER_STATE:I = -0x1

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_STATE:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAP_KEY_VALUESTRING:Ljava/lang/String; = "value_string"

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "KnoxVpnEngineService"

.field public static final VPN_RETURN_INT_ERROR:I = -0x1

.field public static final VPN_RETURN_INT_SUCCESS:I

.field private static cisco_proxy_application:Ljava/lang/String;

.field private static mIgnoreConnectCheckForChaining:Z

.field private static mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private static mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

.field private static mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# instance fields
.field private mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

.field private mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyStore:Landroid/security/KeyStore;

.field private final mKnoxTunInterfacePrefix:Ljava/lang/String;

.field private mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

.field private vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_a

    move v0, v1

    :cond_a
    sput-boolean v0, DBG:Z

    .line 161
    sput-object v3, cisco_proxy_application:Ljava/lang/String;

    .line 163
    sput-object v3, mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 165
    sput-object v3, mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 167
    sput-object v3, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    sput-boolean v1, mIgnoreConnectCheckForChaining:Z

    .line 175
    sput-object v3, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 3874
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 145
    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 147
    iput-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 151
    iput-object v1, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 153
    iput-object v1, p0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 155
    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 157
    const-string v0, "knoxv_"

    iput-object v0, p0, mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 159
    iput-object v1, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 171
    iput-object v1, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 177
    iput-object v1, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 179
    iput-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;-><init>()V

    .line 145
    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 147
    iput-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 151
    iput-object v1, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 153
    iput-object v1, p0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 155
    iput-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 157
    const-string v0, "knoxv_"

    iput-object v0, p0, mKnoxTunInterfacePrefix:Ljava/lang/String;

    .line 159
    iput-object v1, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 171
    iput-object v1, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 177
    iput-object v1, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 179
    iput-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    .line 187
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "Initializing in constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 190
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 195
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 196
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v0

    iput-object v0, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 197
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v0

    iput-object v0, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 198
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 199
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 200
    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    move-result-object v0

    sput-object v0, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 201
    sput-object p0, mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 204
    invoke-direct {p0}, initializeHandlerThread()V

    .line 207
    invoke-virtual {p0}, initializeVpnDataAndVendors()V

    .line 209
    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v0, :cond_75

    .line 210
    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->allowApplicationToSendFd(I)V

    .line 212
    :cond_75
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 119
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    iget-object v0, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .registers 1

    .prologue
    .line 119
    sget-object v0, mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, sendMessageToHandler(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleVpnInterfaceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleActionPackageAdded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleConnectivityAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleActionUserRemoved(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, initializeHashtable()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, addBlockingRulesForPackages()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, initializeVpnVendors()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, setupIntentFilter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, registerPersonaObserverForVpn()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleActionUserStarted(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, startVpnProfile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-direct {p0, p1}, startChainedProfile(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 119
    invoke-direct {p0}, runAllVpnService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, sendBindSuccessIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 119
    sget-object v0, cisco_proxy_application:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .registers 1

    .prologue
    .line 119
    sget-object v0, mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .prologue
    .line 119
    sput-object p0, mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    return-object p0
.end method

.method private addBlockingRulesForPackages()V
    .registers 8

    .prologue
    .line 2460
    const-string v4, "KnoxVpnEngineService"

    const-string v5, "addBlockingRulesForPackages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :try_start_7
    iget-object v4, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->updateIpBlockingRule()V

    .line 2464
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2465
    .local v3, "profileName":Ljava/lang/String;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding iptables for profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-virtual {p0, v3}, addPackagesToIpTables(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    goto :goto_16

    .line 2475
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 2476
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBlockingRulesForPackages : Exception when reading package DB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5b
    return-void

    .line 2469
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5c
    :try_start_5c
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2470
    .restart local v3    # "profileName":Ljava/lang/String;
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 2471
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_66

    .line 2472
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_81} :catch_3e

    goto :goto_66
.end method

.method private addContainerToExceptionList(Ljava/lang/String;I)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 4346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4348
    .local v0, "blockToken":J
    :try_start_4
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4349
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_f

    .line 4350
    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->addContainerToExceptionList(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_13
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 4355
    :cond_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4357
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :goto_12
    return-void

    .line 4352
    :catch_13
    move-exception v2

    .line 4353
    .local v2, "e":Ljava/lang/Exception;
    :try_start_14
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_34

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at addContainerToExceptionList API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_38

    .line 4355
    :cond_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3076
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3078
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 3079
    .local v0, "cid":I
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 3080
    .local v1, "uid":I
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_56

    .line 3082
    iget-object v3, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForStrongswan(I)V

    .line 3086
    :goto_55
    return-void

    .line 3084
    :cond_56
    iget-object v3, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleExceptionsForUid(I)V

    goto :goto_55
.end method

.method private addUIDListToExceptionList(Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4362
    .local v0, "blockToken":J
    const/4 v5, -0x2

    if-ne p3, v5, :cond_e

    .line 4363
    :try_start_7
    invoke-direct {p0, p1, p2}, addContainerToExceptionList(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_28
    .catchall {:try_start_7 .. :try_end_a} :catchall_4d

    .line 4375
    :cond_a
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4377
    :goto_d
    return-void

    .line 4365
    :cond_e
    :try_start_e
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4366
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_a

    if-eqz p4, :cond_a

    .line 4367
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4368
    .local v4, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4369
    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28
    .catchall {:try_start_e .. :try_end_27} :catchall_4d

    goto :goto_a

    .line 4372
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .end local v4    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_28
    move-exception v2

    .line 4373
    .local v2, "e":Ljava/lang/Exception;
    :try_start_29
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_49

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at addUIDListToExceptionList API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4d

    .line 4375
    :cond_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private declared-synchronized blockProxyService(Ljava/lang/String;I)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3162
    monitor-enter p0

    const/4 v9, 0x0

    .line 3163
    .local v9, "proxyPresent":Z
    const/4 v8, 0x0

    .line 3164
    .local v8, "proxyPackageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3166
    .local v7, "proxyClassName":Ljava/lang/String;
    :try_start_4
    new-instance v12, Landroid/content/Intent;

    const-string v14, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3167
    .local v12, "queryServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3168
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v6, v12, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 3169
    .local v11, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_b1

    .line 3170
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 3171
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The blockProxyService packageName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "whose class name is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v15, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 3173
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3174
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3175
    const/4 v9, 0x1

    .line 3179
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7c
    if-eqz v9, :cond_b1

    .line 3180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3181
    .local v2, "blockToken":J
    const/4 v14, 0x1

    new-instance v15, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v8, v14, v15}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 3182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_90} :catch_94
    .catchall {:try_start_4 .. :try_end_90} :catchall_cb

    .line 3183
    const/4 v9, 0x1

    move v10, v9

    .line 3191
    .end local v2    # "blockToken":J
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "proxyPresent":Z
    .end local v11    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "queryServiceIntent":Landroid/content/Intent;
    .local v10, "proxyPresent":I
    :goto_92
    monitor-exit p0

    return v10

    .line 3187
    .end local v10    # "proxyPresent":I
    .restart local v9    # "proxyPresent":Z
    :catch_94
    move-exception v4

    .line 3188
    .local v4, "e":Ljava/lang/Exception;
    :try_start_95
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception at blockProxyService "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b1
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "blockProxyService : proxyPresent value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_95 .. :try_end_c9} :catchall_cb

    move v10, v9

    .line 3191
    .restart local v10    # "proxyPresent":I
    goto :goto_92

    .line 3162
    .end local v10    # "proxyPresent":I
    :catchall_cb
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method private declared-synchronized checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3195
    monitor-enter p0

    const/4 v6, 0x0

    .line 3197
    .local v6, "supportsKnox":Z
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3198
    .local v4, "queryifKnoxEnabled":Landroid/content/Intent;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3199
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 3200
    .local v0, "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_62

    .line 3201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 3202
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The checkIfAnyConnectSupportsKnox packageName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "whose class name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_7c
    .catchall {:try_start_2 .. :try_end_5e} :catchall_9a

    move-result v7

    if-eqz v7, :cond_1e

    .line 3204
    const/4 v6, 0x1

    .line 3212
    .end local v0    # "anyconnectService":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "queryifKnoxEnabled":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_62
    :goto_62
    :try_start_62
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIfAnyConnectSupportsKnox : supportsKnox value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_9a

    .line 3213
    monitor-exit p0

    return v6

    .line 3209
    :catch_7c
    move-exception v1

    .line 3210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfAnyConnectSupportsKnox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_9a

    goto :goto_62

    .line 3195
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_9a
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2610
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "Inside deleteUIDFromPackageData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission(Lcom/sec/enterprise/knox/KnoxVpnContext;)V
    .registers 6
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;

    .prologue
    .line 3821
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3822
    .local v0, "adminId":I
    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enforce permission. adminId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_23

    .line 3833
    :goto_22
    return-void

    .line 3827
    :cond_23
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_2f

    .line 3828
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    goto :goto_22

    .line 3831
    :cond_2f
    const-string v1, "KnoxVpnEngineService"

    const-string v2, "Unable to enforce permission. mKnoxVpnHelper = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private declared-synchronized getActivate(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3935
    monitor-enter p0

    const/4 v2, -0x1

    .line 3937
    .local v2, "temp":I
    :try_start_2
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_13
    .catchall {:try_start_2 .. :try_end_7} :catchall_25

    move-result-object v1

    .line 3938
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_d

    .line 3939
    const/4 v3, -0x1

    .line 3947
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_b
    monitor-exit p0

    return v3

    .line 3941
    .restart local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_d
    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_13
    .catchall {:try_start_d .. :try_end_10} :catchall_25

    move-result v2

    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_11
    move v3, v2

    .line 3947
    goto :goto_b

    .line 3943
    :catch_13
    move-exception v0

    .line 3944
    .local v0, "e":Ljava/lang/Exception;
    :try_start_14
    const-string v3, "KnoxVpnEngineService"

    const-string v4, "getActivate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    const-string v3, "KnoxVpnEngineService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_25

    goto :goto_11

    .line 3935
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_1
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_1f

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : Profile : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_1f
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1372
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1373
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_16d

    .line 1377
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/KnoxVpnContext;->getPersonaId()I

    move-result v1

    .line 1379
    .local v1, "containerId":I
    move-object/from16 v0, p0

    iget-object v11, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "profileName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "packageCid"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    const/4 v15, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "packageName"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1390
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_68

    invoke-direct/range {p0 .. p0}, printProfileVpnMap()V

    .line 1391
    :cond_68
    const/4 v6, 0x0

    .line 1392
    .local v6, "i":I
    if-eqz v3, :cond_11b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_11b

    .line 1393
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v8, v11, [Ljava/lang/String;

    .line 1395
    .local v8, "packageList":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7b
    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1397
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "packageName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1398
    .local v9, "personifiedPackageName":Ljava/lang/String;
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_aa

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : Personified Package Name found : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_aa
    move-object/from16 v0, p0

    iget-object v11, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-eq v11, v12, :cond_11d

    .line 1401
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_dc

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : personifiedPackageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_dc
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_7b

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : vpnContext.personaId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_fc} :catch_fe
    .catchall {:try_start_2d .. :try_end_fc} :catchall_16d

    goto/16 :goto_7b

    .line 1420
    .end local v1    # "containerId":I
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "packageList":[Ljava/lang/String;
    .end local v9    # "personifiedPackageName":Ljava/lang/String;
    :catch_fe
    move-exception v4

    .line 1421
    .local v4, "e":Ljava/lang/Exception;
    :try_start_ff
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : Exceptionin notify: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_ff .. :try_end_11b} :catchall_16d

    .line 1423
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_11b
    :goto_11b
    monitor-exit p0

    return-object v10

    .line 1405
    .restart local v1    # "containerId":I
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "packageList":[Ljava/lang/String;
    .restart local v9    # "personifiedPackageName":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    move-object/from16 v0, p0

    iget-object v11, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v13, "ADD_ALL_PACKAGES"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7b

    .line 1408
    move-object/from16 v0, p0

    iget-object v11, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v6

    .line 1409
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_159

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "get all packages : Regular Package Name found : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_159
    add-int/lit8 v6, v6, 0x1

    .line 1411
    goto/16 :goto_7b

    .line 1413
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v9    # "personifiedPackageName":Ljava/lang/String;
    :cond_15d
    new-array v5, v6, [Ljava/lang/String;

    .line 1414
    .local v5, "finalListOfPackages":[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v11, v5, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1416
    invoke-virtual {v10, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1417
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_16c} :catch_fe
    .catchall {:try_start_11d .. :try_end_16c} :catchall_16d

    goto :goto_11b

    .line 1370
    .end local v1    # "containerId":I
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "finalListOfPackages":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "packageList":[Ljava/lang/String;
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :catchall_16d
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method private getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_1c

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get all ranged packages : Profile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_1c
    new-instance v7, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v7}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1341
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1342
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1345
    :try_start_2a
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 1346
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v0, -0x1

    .line 1347
    .local v0, "containerId":I
    if-eqz v6, :cond_8a

    .line 1348
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1349
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 1350
    const/4 v3, 0x1

    .line 1351
    .local v3, "isAddallExist":Z
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 1352
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_76

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get all ranged packages : containerId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_76
    if-eqz v3, :cond_3b

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-ne v0, v8, :cond_3b

    .line 1354
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstalledPackages(I)[Ljava/lang/String;

    move-result-object v5

    .line 1355
    .local v5, "packageList":[Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1356
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8a} :catch_8b

    .line 1365
    .end local v0    # "containerId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isAddallExist":Z
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "packageList":[Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_8a
    :goto_8a
    return-object v7

    .line 1362
    :catch_8b
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error occured while fetching all packages of a profile: exception occured: The error code is -1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 5

    .prologue
    .line 303
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "KnoxVpnEngineService"

    const-string v2, "getConnectionService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_b
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 305
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_3b

    .line 306
    iget-object v1, p0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_3b

    .line 307
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 308
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_3b

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3b
    iget-object v1, p0, mConnectivityManagerService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getKeyStore()Landroid/security/KeyStore;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    if-nez v0, :cond_a

    .line 324
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 326
    :cond_a
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private declared-synchronized getKnoxTunName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3928
    monitor-enter p0

    const/4 v0, 0x0

    .line 3929
    .local v0, "temp":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knoxv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_17

    move-result-object v0

    .line 3930
    monitor-exit p0

    return-object v0

    .line 3928
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 5

    .prologue
    .line 290
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "KnoxVpnEngineService"

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_b
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 292
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_2d

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2d
    if-eqz v0, :cond_57

    .line 294
    iget-object v1, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_57

    .line 295
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 296
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_57

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_57
    iget-object v1, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getPersonaManager()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 316
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 319
    :cond_11
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getRoutType(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3953
    const/4 v1, -0x1

    .line 3954
    .local v1, "iRval":I
    const/4 v2, 0x0

    .line 3956
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_start_2
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 3957
    if-nez v2, :cond_c

    move v3, v1

    .line 3968
    :goto_b
    return v3

    .line 3960
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_12

    move-result v1

    move v3, v1

    .line 3968
    goto :goto_b

    .line 3962
    :catch_12
    move-exception v0

    .line 3964
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1e

    const-string v3, "KnoxVpnEngineService"

    const-string v4, "getRoutType error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_1e
    const-string v3, "KnoxVpnEngineService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    const/4 v3, -0x1

    goto :goto_b
.end method

.method private declared-synchronized getVPNState(Ljava/lang/String;)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4069
    monitor-enter p0

    const/4 v2, -0x1

    .line 4071
    .local v2, "state":I
    :try_start_2
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_55
    .catchall {:try_start_2 .. :try_end_7} :catchall_73

    move-result-object v1

    .line 4072
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_d

    move v3, v2

    .line 4088
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "state":I
    .local v3, "state":I
    :goto_b
    monitor-exit p0

    return v3

    .line 4076
    .end local v3    # "state":I
    .restart local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v2    # "state":I
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 4077
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_2d

    .line 4078
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVPNState : Interface null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 4079
    .end local v2    # "state":I
    .restart local v3    # "state":I
    goto :goto_b

    .line 4082
    .end local v3    # "state":I
    .restart local v2    # "state":I
    :cond_2d
    invoke-interface {v4, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v2

    .line 4083
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "State of vpn profile received from vpn vendor for profileName is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_55
    .catchall {:try_start_d .. :try_end_53} :catchall_73

    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :goto_53
    move v3, v2

    .line 4088
    .end local v2    # "state":I
    .restart local v3    # "state":I
    goto :goto_b

    .line 4085
    .end local v3    # "state":I
    .restart local v2    # "state":I
    :catch_55
    move-exception v0

    .line 4086
    .local v0, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVPNState : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_73

    goto :goto_53

    .line 4069
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized getVPNTransitionState(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 4032
    monitor-enter p0

    const/4 v0, -0x1

    .line 4033
    .local v0, "iVPNCurActivateState":I
    const/4 v1, -0x1

    .line 4034
    .local v1, "iVpnConnectState":I
    const/4 v2, -0x1

    .line 4036
    .local v2, "temp":I
    :try_start_6
    invoke-direct {p0, p1}, getVPNState(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_3d

    move-result v1

    .line 4037
    if-gez v1, :cond_e

    .line 4061
    :goto_c
    monitor-exit p0

    return v3

    .line 4039
    :cond_e
    if-ge v3, v1, :cond_12

    move v3, v4

    .line 4040
    goto :goto_c

    .line 4042
    :cond_12
    move v2, v1

    .line 4045
    :try_start_13
    invoke-direct {p0, p1}, getActivate(Ljava/lang/String;)I

    move-result v0

    .line 4046
    if-gez v0, :cond_1b

    move v3, v4

    .line 4047
    goto :goto_c

    .line 4049
    :cond_1b
    if-nez v0, :cond_1f

    .line 4050
    add-int/lit8 v2, v2, 0x64

    .line 4059
    :cond_1f
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3b

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVPNTransitionState : VpnState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_3d

    :cond_3b
    move v3, v2

    .line 4061
    goto :goto_c

    .line 4032
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getValidationOfPackageName(ILjava/lang/String;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3972
    const/4 v2, -0x1

    .line 3973
    .local v2, "retValue":I
    const/4 v1, 0x0

    .line 3975
    .local v1, "isPackageInstalledResult":Z
    if-lez p1, :cond_f

    .line 3976
    :try_start_4
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    .line 3977
    if-eqz v1, :cond_d

    .line 3978
    const/4 v2, 0x0

    :cond_d
    :goto_d
    move v3, v2

    .line 3990
    .end local v2    # "retValue":I
    .local v3, "retValue":I
    :goto_e
    return v3

    .line 3980
    .end local v3    # "retValue":I
    .restart local v2    # "retValue":I
    :cond_f
    if-nez p1, :cond_d

    .line 3981
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_1b

    move-result v1

    .line 3982
    if-eqz v1, :cond_d

    .line 3983
    const/4 v2, 0x0

    goto :goto_d

    .line 3986
    :catch_1b
    move-exception v0

    .line 3987
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCheckedPackageName : Exception occurred for checkingPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 3988
    .end local v2    # "retValue":I
    .restart local v3    # "retValue":I
    goto :goto_e
.end method

.method private getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .registers 9
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3877
    const/4 v3, 0x0

    .line 3879
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz p1, :cond_11

    .line 3880
    :try_start_3
    iget-object v4, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3881
    .local v2, "interfaceObject":Ljava/lang/Object;
    sget-object v4, NULL_OBJECT:Ljava/lang/Object;

    if-eq v2, v4, :cond_11

    .line 3882
    move-object v0, v2

    check-cast v0, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-object v3, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    .line 3888
    .end local v2    # "interfaceObject":Ljava/lang/Object;
    :cond_11
    :goto_11
    return-object v3

    .line 3885
    :catch_12
    move-exception v1

    .line 3886
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving Binder interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private declared-synchronized handleActionPackageAdded(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3102
    monitor-enter p0

    :try_start_1
    const-string v11, "KnoxVpnEngineService"

    const-string/jumbo v12, "vpn handle : Handle MSG package add"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a0

    .line 3103
    const/4 v10, -0x1

    .line 3104
    .local v10, "uid":I
    const/4 v7, 0x0

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3105
    .local v6, "originalPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3107
    .local v1, "cid":I
    :try_start_d
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3108
    const-string/jumbo v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3109
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3110
    move-object/from16 v0, p0

    iget-object v11, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3112
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_52

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_52} :catch_81
    .catchall {:try_start_d .. :try_end_52} :catchall_a0

    .line 3113
    :cond_52
    if-nez v7, :cond_56

    .line 3159
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    .line 3117
    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 3118
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_7b

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : calling bind package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_80} :catch_81
    .catchall {:try_start_56 .. :try_end_80} :catchall_a0

    goto :goto_54

    .line 3156
    :catch_81
    move-exception v4

    .line 3157
    .local v4, "e":Ljava/lang/Exception;
    :try_start_82
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : pakcage add : Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_82 .. :try_end_9f} :catchall_a0

    goto :goto_54

    .line 3102
    .end local v1    # "cid":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v10    # "uid":I
    :catchall_a0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 3122
    .restart local v1    # "cid":I
    .restart local v6    # "originalPackageName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v10    # "uid":I
    :cond_a3
    :try_start_a3
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_c0

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vpn handle : package added : checking update package =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_c0
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, updatePackageData(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 3125
    const-string v11, "KnoxVpnEngineService"

    const-string/jumbo v12, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    const/4 v9, 0x0

    .line 3128
    .local v9, "profileName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 3129
    move-object/from16 v0, p0

    iget-object v11, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnPackageInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "packageName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "profileName"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "packageUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_fb} :catch_81
    .catchall {:try_start_a3 .. :try_end_fb} :catchall_a0

    move-result-object v3

    .line 3137
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_145

    .line 3139
    :try_start_fe
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "getting vpn object from database : Cursor not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_109
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_145

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3141
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3142
    const-string/jumbo v11, "packageUid"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_126} :catch_128
    .catchall {:try_start_fe .. :try_end_126} :catchall_a0

    move-result v10

    .line 3143
    goto :goto_109

    .line 3144
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_128
    move-exception v4

    .line 3145
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_129
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getting vpn object from database : Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_145
    move-object/from16 v0, p0

    iget-object v11, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    .line 3150
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v8, :cond_152

    .line 3151
    invoke-virtual {v8, v7, v10, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 3153
    :cond_152
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_54

    invoke-direct/range {p0 .. p0}, printProfileVpnMap()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_15e} :catch_81
    .catchall {:try_start_129 .. :try_end_15e} :catchall_a0

    goto/16 :goto_54
.end method

.method private declared-synchronized handleActionUserRemoved(Landroid/os/Bundle;)V
    .registers 21
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3353
    monitor-enter p0

    :try_start_1
    const-string v13, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3354
    .local v6, "personaId":I
    const/4 v1, -0x1

    .line 3355
    .local v1, "adminId":I
    const/4 v8, 0x0

    .line 3356
    .local v8, "profileName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3358
    .local v11, "transformedPackageName":Ljava/lang/String;
    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Got USERREMOVED intent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v13, :cond_33

    .line 3361
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->stopApplicationFromSendingFd(I)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_350

    .line 3366
    :cond_33
    :try_start_33
    move-object/from16 v0, p0

    iget-object v13, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnProfileInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "personaId"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3369
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_79

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #1 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_79
    if-eqz v3, :cond_114

    .line 3371
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_114

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3372
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3373
    const-string/jumbo v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3374
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_b8

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_b8
    move-object/from16 v0, p0

    iget-object v13, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3378
    .local v7, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v7, :cond_7f

    .line 3379
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3380
    .local v12, "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v13}, activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;

    .line 3381
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    .line 3382
    .local v10, "result":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_7f

    .line 3383
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    .line 3384
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v13}, updateNotification(Ljava/lang/String;IZ)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_f6} :catch_f7
    .catchall {:try_start_33 .. :try_end_f6} :catchall_350

    goto :goto_7f

    .line 3389
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "result":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_f7
    move-exception v4

    .line 3390
    .local v4, "e":Ljava/lang/Exception;
    :try_start_f8
    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_f8 .. :try_end_114} :catchall_350

    .line 3395
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_114
    :try_start_114
    move-object/from16 v0, p0

    iget-object v13, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnProfileInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "containerVpnState"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3398
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_159

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #2 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_159
    if-eqz v3, :cond_23f

    .line 3400
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_15f
    :goto_15f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3401
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3402
    const-string/jumbo v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3403
    move-object/from16 v0, p0

    iget-object v13, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3405
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_1a0

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :cond_1a0
    if-eqz v7, :cond_15f

    .line 3409
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_1c2

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getPersonaId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    :cond_1c2
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_1e2

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getVendorPkgName#1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_1e2
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_20a

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : getVendorPkgName#2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_20a
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3413
    .restart local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_220} :catch_222
    .catchall {:try_start_114 .. :try_end_220} :catchall_350

    goto/16 :goto_15f

    .line 3418
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_222
    move-exception v4

    .line 3419
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_223
    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23f
    .catchall {:try_start_223 .. :try_end_23f} :catchall_350

    .line 3424
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_23f
    :try_start_23f
    move-object/from16 v0, p0

    iget-object v13, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v14, "VpnPackageInfo"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "packageCid"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3427
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_285

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : #3 cvList.size() : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :cond_285
    if-eqz v3, :cond_34e

    .line 3430
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_28b
    :goto_28b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_34e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3431
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v13, "profileName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3432
    const-string/jumbo v13, "packageName"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3436
    move-object/from16 v0, p0

    iget-object v13, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 3437
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v7, :cond_28b

    .line 3438
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v1

    .line 3440
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_2e3

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : profileName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " adminId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " transformedPackageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_2e3
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_30b

    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : package = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_30b
    new-instance v12, Lcom/sec/enterprise/knox/KnoxVpnContext;

    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v6, v13}, Lcom/sec/enterprise/knox/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 3445
    .restart local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v13

    .line 3446
    .local v9, "regularPackageNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v8}, removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_32f} :catch_331
    .catchall {:try_start_23f .. :try_end_32f} :catchall_350

    goto/16 :goto_28b

    .line 3450
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "regularPackageNames":[Ljava/lang/String;
    .end local v12    # "vpnContext":Lcom/sec/enterprise/knox/KnoxVpnContext;
    :catch_331
    move-exception v4

    .line 3451
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_332
    const-string v13, "KnoxVpnEngineService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleActionUserRemoved : Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34e
    .catchall {:try_start_332 .. :try_end_34e} :catchall_350

    .line 3454
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_34e
    monitor-exit p0

    return-void

    .line 3353
    .end local v1    # "adminId":I
    .end local v6    # "personaId":I
    .end local v8    # "profileName":Ljava/lang/String;
    .end local v11    # "transformedPackageName":Ljava/lang/String;
    :catchall_350
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private handleActionUserStarted(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3342
    const-string v1, "KnoxVpnEngineService"

    const-string v2, "handleActionUserStarted: method is reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3344
    .local v0, "containerId":I
    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleActionUserStarted: container id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    invoke-direct {p0, v0}, initializeVpnVendorsForContainer(I)V

    .line 3346
    invoke-direct {p0}, runAllVpnService()V

    .line 3347
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_36

    .line 3348
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->allowApplicationToSendFd(I)V

    .line 3350
    :cond_36
    return-void
.end method

.method private declared-synchronized handleAnyConnectUninstall(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3217
    monitor-enter p0

    :try_start_1
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "whose container id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_7a

    .line 3218
    const/4 v1, 0x0

    .line 3220
    .local v1, "packageRemoved":Z
    :try_start_25
    iget-object v2, p0, mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_51
    .catchall {:try_start_25 .. :try_end_2b} :catchall_7d

    move-result v1

    .line 3224
    :try_start_2c
    sget-object v2, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3225
    const/4 v2, 0x0

    sput-object v2, cisco_proxy_application:Ljava/lang/String;

    .line 3228
    :cond_37
    :goto_37
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The package going to be removed result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_7a

    .line 3229
    monitor-exit p0

    return v1

    .line 3221
    :catch_51
    move-exception v0

    .line 3222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at handleAnyConnectUninstall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_7d

    .line 3224
    :try_start_6e
    sget-object v2, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3225
    const/4 v2, 0x0

    sput-object v2, cisco_proxy_application:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7a

    goto :goto_37

    .line 3217
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "packageRemoved":Z
    :catchall_7a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3224
    .restart local v1    # "packageRemoved":Z
    :catchall_7d
    move-exception v2

    :try_start_7e
    sget-object v3, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 3225
    const/4 v3, 0x0

    sput-object v3, cisco_proxy_application:Ljava/lang/String;

    :cond_89
    throw v2
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_7a
.end method

.method private declared-synchronized handleChainingScenarioForStartConnection(Ljava/lang/String;)V
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 4273
    monitor-enter p0

    :try_start_2
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v0

    .line 4274
    .local v0, "chaining_enabled":I
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStartConnection: chaining_enabled value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 4276
    .local v5, "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_42

    .line 4277
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStartConnection: profile in outerProfile is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_a1
    .catchall {:try_start_2 .. :try_end_40} :catchall_bf

    .line 4296
    .end local v0    # "chaining_enabled":I
    .end local v5    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    .line 4280
    .restart local v0    # "chaining_enabled":I
    .restart local v5    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_42
    :try_start_42
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v6

    .line 4281
    .local v6, "userIdOfOuterProfile":I
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStartConnection: userIdOfOuterProfile value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    if-nez v0, :cond_40

    .line 4283
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6a
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4284
    .local v4, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v7

    if-ne v7, v10, :cond_6a

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-ne v7, v6, :cond_6a

    .line 4285
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "handleChainingScenarioForStartConnection: chained profile is going to be started"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    const/4 v7, 0x1

    sput-boolean v7, mIgnoreConnectCheckForChaining:Z

    .line 4287
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4288
    .local v3, "map":Landroid/os/Bundle;
    const-string/jumbo v7, "profileName"

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4289
    const/16 v7, 0xe

    invoke-direct {p0, v7, v3}, sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a0} :catch_a1
    .catchall {:try_start_42 .. :try_end_a0} :catchall_bf

    goto :goto_6a

    .line 4293
    .end local v0    # "chaining_enabled":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Landroid/os/Bundle;
    .end local v4    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "userIdOfOuterProfile":I
    :catch_a1
    move-exception v1

    .line 4294
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at handleChainingScenarioForStartConnection API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_a2 .. :try_end_be} :catchall_bf

    goto :goto_40

    .line 4273
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_bf
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized handleChainingScenarioForStopConnection(Ljava/lang/String;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4301
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v0

    .line 4302
    .local v0, "chaining_enabled":I
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStopConnection: chaining_enabled value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 4304
    .local v4, "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v4, :cond_41

    .line 4305
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStopConnection: profile in outerProfile is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_b0
    .catchall {:try_start_1 .. :try_end_3f} :catchall_cf

    .line 4324
    .end local v0    # "chaining_enabled":I
    .end local v4    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    .line 4308
    .restart local v0    # "chaining_enabled":I
    .restart local v4    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_41
    :try_start_41
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 4309
    .local v5, "userIdOfOuterProfile":I
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStopConnection: userIdOfOuterProfile value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    if-nez v0, :cond_3f

    .line 4311
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4312
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_69

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-ne v7, v5, :cond_69

    .line 4313
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v6

    .line 4314
    .local v6, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleChainingScenarioForStopConnection: stop connection is called for profile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    if-eqz v6, :cond_69

    .line 4316
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_af} :catch_b0
    .catchall {:try_start_41 .. :try_end_af} :catchall_cf

    goto :goto_69

    .line 4321
    .end local v0    # "chaining_enabled":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "profileInforOuterProfile":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "userIdOfOuterProfile":I
    .end local v6    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_b0
    move-exception v1

    .line 4322
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b1
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at handleChainingScenario API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_b1 .. :try_end_cd} :catchall_cf

    goto/16 :goto_3f

    .line 4301
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_cf
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private handleConnectivityAction(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2989
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2990
    .local v0, "networkDown":Z
    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION. networkDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    if-nez v0, :cond_24

    .line 2992
    invoke-direct {p0}, runAllVpnService()V

    .line 2994
    :cond_24
    return-void
.end method

.method private handleKnoxVpnServiceDisconnect(Ljava/lang/String;)V
    .registers 23
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 3735
    :try_start_0
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : vendorNameWithCid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    const/4 v2, 0x0

    .line 3737
    .local v2, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 3738
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : mConnectivityService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const/16 v18, 0x0

    .line 3740
    .local v18, "interfaceName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "oldPackage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3741
    .local v4, "newPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "isConnecting":Z
    const/4 v12, 0x0

    .local v12, "PERAPP_VPN":Z
    const/4 v6, 0x1

    .line 3742
    .local v6, "SYSTEM_VPN":Z
    move-object/from16 v0, p0

    iget-object v8, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_109

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3743
    .local v20, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 3744
    .local v5, "profileName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v14

    .line 3745
    .local v14, "activateState":I
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v19

    .line 3747
    .local v19, "storedVendorName":Ljava/lang/String;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle disconnect to vendor : storedVendorName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    if-eqz v14, :cond_50

    if-eqz v19, :cond_50

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 3749
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    .line 3750
    .local v17, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, updateNoUidChain(Ljava/lang/String;)V

    .line 3751
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3753
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_e6

    .line 3755
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "handle disconnect to vendor : Disconnecting System vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    invoke-interface/range {v2 .. v7}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c7} :catch_c8

    goto :goto_50

    .line 3771
    .end local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .end local v3    # "oldPackage":Ljava/lang/String;
    .end local v4    # "newPackage":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "SYSTEM_VPN":Z
    .end local v7    # "isConnecting":Z
    .end local v12    # "PERAPP_VPN":Z
    .end local v14    # "activateState":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iface":Ljava/lang/String;
    .end local v18    # "interfaceName":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_c8
    move-exception v15

    .line 3772
    .local v15, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle knox vpn service disconnect : Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e5
    :goto_e5
    return-void

    .line 3758
    .restart local v2    # "mConnectivityService":Landroid/net/IConnectivityManager;
    .restart local v3    # "oldPackage":Ljava/lang/String;
    .restart local v4    # "newPackage":Ljava/lang/String;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v6    # "SYSTEM_VPN":Z
    .restart local v7    # "isConnecting":Z
    .restart local v12    # "PERAPP_VPN":Z
    .restart local v14    # "activateState":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iface":Ljava/lang/String;
    .restart local v18    # "interfaceName":Ljava/lang/String;
    .restart local v19    # "storedVendorName":Ljava/lang/String;
    .restart local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_e6
    :try_start_e6
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "handle disconnect to vendor : Disconnecting Per-App vpn"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    move-object/from16 v0, p0

    iget-object v8, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v9

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3762
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, addPackagesToIpTables(Ljava/lang/String;)V

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    .line 3763
    invoke-interface/range {v8 .. v13}, Landroid/net/IConnectivityManager;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto/16 :goto_50

    .line 3770
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v14    # "activateState":I
    .end local v17    # "iface":Ljava/lang/String;
    .end local v19    # "storedVendorName":Ljava/lang/String;
    .end local v20    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_109
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_e5

    invoke-direct/range {p0 .. p0}, printProfileVpnMap()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_110} :catch_c8

    goto :goto_e5
.end method

.method private handleMigrate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2986
    return-void
.end method

.method private declared-synchronized handleVpnInterfaceState(Landroid/os/Bundle;)V
    .registers 22
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 2998
    monitor-enter p0

    :try_start_1
    const-string v17, "extra_profile_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2999
    .local v10, "profileName":Ljava/lang/String;
    const-string v17, "extra_action"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3000
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_d5
    .catchall {:try_start_1 .. :try_end_20} :catchall_f4

    move-result-object v9

    .line 3001
    .local v9, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v9, :cond_25

    .line 3073
    .end local v2    # "action":Ljava/lang/String;
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "profileName":Ljava/lang/String;
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 3004
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "profileName":Ljava/lang/String;
    :cond_25
    :try_start_25
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v17

    if-eqz v17, :cond_23

    .line 3008
    const-string/jumbo v17, "tun_info"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20e

    .line 3009
    const-string v17, "extra_tun_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3010
    .local v14, "tunInterfaceName":Ljava/lang/String;
    const-string v17, "extra_state"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3011
    .local v13, "state":I
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState - ProfileName, state, tunInterfaceName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_147

    .line 3014
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE UP - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, getActivate(Ljava/lang/String;)I

    move-result v3

    .line 3017
    .local v3, "active":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v15

    .line 3018
    .local v15, "vpnConnectionType":I
    if-nez v3, :cond_f7

    const/4 v7, 0x1

    .line 3019
    .local v7, "isNotActivated":Z
    :goto_ab
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_f9

    sget-object v17, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v17

    if-nez v17, :cond_f9

    const/4 v8, 0x1

    .line 3021
    .local v8, "onDemand":Z
    :goto_bc
    if-nez v8, :cond_c0

    if-eqz v7, :cond_12d

    .line 3022
    :cond_c0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 3023
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v16, :cond_fb

    .line 3024
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_23

    const-string v17, "KnoxVpnEngineService"

    const-string v18, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_d3} :catch_d5
    .catchall {:try_start_25 .. :try_end_d3} :catchall_f4

    goto/16 :goto_23

    .line 3070
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "active":I
    .end local v7    # "isNotActivated":Z
    .end local v8    # "onDemand":Z
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "profileName":Ljava/lang/String;
    .end local v13    # "state":I
    .end local v14    # "tunInterfaceName":Ljava/lang/String;
    .end local v15    # "vpnConnectionType":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_d5
    move-exception v5

    .line 3071
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d6
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_d6 .. :try_end_f2} :catchall_f4

    goto/16 :goto_23

    .line 2998
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_f4
    move-exception v17

    monitor-exit p0

    throw v17

    .line 3018
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "active":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "profileName":Ljava/lang/String;
    .restart local v13    # "state":I
    .restart local v14    # "tunInterfaceName":Ljava/lang/String;
    .restart local v15    # "vpnConnectionType":I
    :cond_f7
    const/4 v7, 0x0

    goto :goto_ab

    .line 3019
    .restart local v7    # "isNotActivated":Z
    :cond_f9
    const/4 v8, 0x0

    goto :goto_bc

    .line 3027
    .restart local v8    # "onDemand":Z
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_fb
    :try_start_fb
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v11

    .line 3028
    .local v11, "returnVal":I
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_11f

    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : TUN_INTERFACE_UP : stop : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_11f
    if-nez v11, :cond_126

    .line 3030
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, removePackagesFromIpTables(Ljava/lang/String;)V

    .line 3040
    .end local v11    # "returnVal":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_126
    :goto_126
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, handleChainingScenarioForStartConnection(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3034
    :cond_12d
    invoke-virtual {v9, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3038
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_126

    .line 3042
    .end local v3    # "active":I
    .end local v7    # "isNotActivated":Z
    .end local v8    # "onDemand":Z
    .end local v15    # "vpnConnectionType":I
    :cond_147
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_23

    .line 3043
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE DOWN - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 3046
    .local v6, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 3047
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  TUN INTERFACE DOWN : profile connected. profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, updateNoUidChain(Ljava/lang/String;)V

    .line 3049
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 3050
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  Trying to remove profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getMarkProfileForDeletion()Z

    move-result v17

    if-eqz v17, :cond_1ee

    .line 3053
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Got it. removing profile : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 3061
    :goto_1e7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, handleChainingScenarioForStopConnection(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3058
    :cond_1ee
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState : Adding blocking rules : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, addPackagesToIpTables(Ljava/lang/String;)V

    goto :goto_1e7

    .line 3063
    .end local v6    # "iface":Ljava/lang/String;
    .end local v13    # "state":I
    .end local v14    # "tunInterfaceName":Ljava/lang/String;
    :cond_20e
    const-string v17, "dns_info"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 3064
    const-string v17, "KnoxVpnEngineService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleVpnInterfaceState  DNS INFO - ProfileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const-string v17, "dnsList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3066
    .local v4, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "searchDomainList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 3067
    .local v12, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setDnsList(Ljava/util/List;)V

    .line 3068
    invoke-virtual {v9, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setSearchDomainList(Ljava/util/List;)V
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_24d} :catch_d5
    .catchall {:try_start_fb .. :try_end_24d} :catchall_f4

    goto/16 :goto_23
.end method

.method private hasVpnInterface(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3900
    iget-object v0, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3901
    const/4 v0, 0x1

    .line 3903
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private initializeHandlerThread()V
    .registers 4

    .prologue
    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxVpnHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 239
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    .line 241
    return-void
.end method

.method private declared-synchronized initializeHashtable()V
    .registers 34

    .prologue
    .line 2302
    monitor-enter p0

    :try_start_1
    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_36b

    .line 2305
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "VpnProfileInfo"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2309
    .local v10, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v18, 0x0

    .line 2310
    .local v18, "profileName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 2311
    .local v26, "vendorNameWithCid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2312
    .local v19, "protocolType":Ljava/lang/String;
    const/4 v4, -0x1

    .line 2313
    .local v4, "adminId":I
    const/16 v16, 0x0

    .line 2314
    .local v16, "personaId":I
    const/16 v21, -0x1

    .line 2315
    .local v21, "routeType":I
    const/4 v3, 0x0

    .line 2316
    .local v3, "activateState":I
    const/16 v27, -0x1

    .line 2317
    .local v27, "vpnConnectionType":I
    const/4 v8, -0x1

    .local v8, "containerVpnState":I
    const/16 v24, 0x0

    .line 2318
    .local v24, "uidPidState":I
    const/4 v5, 0x0

    .line 2320
    .local v5, "chainingEnabled":I
    const/16 v17, 0x0

    .line 2321
    .local v17, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v10, :cond_19e

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_19e

    .line 2323
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_41

    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable : VPN INFO: New Framework is enabled. Set the system property"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_41
    const-string v28, "net.vpn.framework"

    const-string v29, "2.0"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_53

    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable : Cursor not null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_53
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_57
    :goto_57
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_19e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 2327
    .local v9, "cv":Landroid/content/ContentValues;
    const-string/jumbo v28, "profileName"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2328
    const-string v28, "defaultRoute"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2329
    const-string v28, "adminUid"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2330
    const-string/jumbo v28, "personaId"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2331
    const-string/jumbo v28, "vendorName"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2332
    const-string/jumbo v28, "protocolType"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2333
    const-string v28, "activateState"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2334
    const-string v28, "containerVpnState"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2335
    const-string/jumbo v28, "vpnConnectionType"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 2336
    const-string v28, "chainingEnabled"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2337
    const-string/jumbo v28, "uidPidSearch"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 2338
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_135

    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "initializeHashtable : adminId :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Profile :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " vendorName :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", vpnConnectionType: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", chainingEnabled: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_135
    if-eqz v18, :cond_316

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_164

    .line 2343
    new-instance v17, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;-><init>()V

    .line 2344
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2348
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v17

    .line 2349
    if-nez v17, :cond_2b3

    .line 2350
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_57

    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable :  profileName is not exist in vpnConfig"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17f} :catch_181
    .catchall {:try_start_8 .. :try_end_17f} :catchall_36b

    goto/16 :goto_57

    .line 2383
    .end local v3    # "activateState":I
    .end local v4    # "adminId":I
    .end local v5    # "chainingEnabled":I
    .end local v8    # "containerVpnState":I
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v21    # "routeType":I
    .end local v24    # "uidPidState":I
    .end local v26    # "vendorNameWithCid":Ljava/lang/String;
    .end local v27    # "vpnConnectionType":I
    :catch_181
    move-exception v11

    .line 2384
    .local v11, "e":Ljava/lang/Exception;
    :try_start_182
    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "init :  Exception when reading Profile DB:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catchall {:try_start_182 .. :try_end_19e} :catchall_36b

    .line 2390
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_19e
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "VpnPackageInfo"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2392
    .restart local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v15, 0x0

    .local v15, "packageName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2393
    .restart local v18    # "profileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2394
    .local v13, "originalPackageName":Ljava/lang/String;
    const/16 v23, -0x1

    .local v23, "uid":I
    const/4 v6, 0x0

    .line 2395
    .local v6, "cid":I
    const/4 v14, 0x0

    .line 2396
    .local v14, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    const/16 v17, 0x0

    .line 2397
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v10, :cond_2aa

    .line 2398
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_1c7

    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable : step#2 : Cursor not null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addExemptRule(I)V

    .line 2401
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_1d6
    :goto_1d6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2aa

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 2402
    .restart local v9    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v28, "profileName"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2403
    const-string/jumbo v28, "packageName"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2404
    const-string/jumbo v28, "packageUid"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2405
    const-string/jumbo v28, "packageCid"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2407
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_254

    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "initializeHashtable :  Cid : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "Uid:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Profile:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " packageName:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_254
    const/16 v28, -0x2

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_36e

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    const-string v29, "ADD_ALL_PACKAGES"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d6

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v17

    .line 2411
    if-eqz v17, :cond_1d6

    .line 2412
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_28b} :catch_28d
    .catchall {:try_start_19e .. :try_end_28b} :catchall_36b

    goto/16 :goto_1d6

    .line 2452
    .end local v6    # "cid":I
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "originalPackageName":Ljava/lang/String;
    .end local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v23    # "uid":I
    :catch_28d
    move-exception v11

    .line 2453
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_28e
    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "init2 :  Exception when reading package DB:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2aa
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_2b1

    invoke-direct/range {p0 .. p0}, printProfileVpnMap()V
    :try_end_2b1
    .catchall {:try_start_28e .. :try_end_2b1} :catchall_36b

    .line 2456
    :cond_2b1
    monitor-exit p0

    return-void

    .line 2354
    .restart local v3    # "activateState":I
    .restart local v4    # "adminId":I
    .restart local v5    # "chainingEnabled":I
    .restart local v8    # "containerVpnState":I
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "personaId":I
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v19    # "protocolType":Ljava/lang/String;
    .restart local v21    # "routeType":I
    .restart local v24    # "uidPidState":I
    .restart local v26    # "vendorNameWithCid":Ljava/lang/String;
    .restart local v27    # "vpnConnectionType":I
    :cond_2b3
    :try_start_2b3
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_2be

    const-string v28, "KnoxVpnEngineService"

    const-string v29, "initializeHashtable :  ProfileName found in map. Add to the list."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_2be
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProfileName(Ljava/lang/String;)V

    .line 2357
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setRouteType(I)V

    .line 2358
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setAdminId(I)V

    .line 2359
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setPersonaId(I)V

    .line 2360
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorPkgName(Ljava/lang/String;)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUidForPackageName(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVendorUid(I)V

    .line 2362
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProtocolType(Ljava/lang/String;)V

    .line 2363
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V

    .line 2364
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setUidPidSearchEnabled(I)V

    .line 2365
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setVpnConnectionType(I)V

    .line 2366
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setChainingEnabled(I)V

    .line 2368
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, refreshDomainInHashMap(Ljava/lang/String;)V

    .line 2371
    :cond_316
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v8, v0, :cond_57

    .line 2372
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, migrateForAddall(Ljava/lang/String;I)Z

    move-result v20

    .line 2373
    .local v20, "result":Z
    const-string v28, "containerVpnState"

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2374
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v7, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string/jumbo v29, "profileName"

    aput-object v29, v7, v28

    .line 2375
    .local v7, "columns":[Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    aput-object v18, v25, v28

    .line 2376
    .local v25, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v28, v0

    const-string v29, "VpnProfileInfo"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v7, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v22

    .line 2377
    .local v22, "status":Z
    if-eqz v20, :cond_362

    if-nez v22, :cond_57

    .line 2378
    :cond_362
    const-string v28, "KnoxVpnEngineService"

    const-string v29, "Error while adding all the packages to vpn: The error code is 126"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_369
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_369} :catch_181
    .catchall {:try_start_2b3 .. :try_end_369} :catchall_36b

    goto/16 :goto_57

    .line 2302
    .end local v3    # "activateState":I
    .end local v4    # "adminId":I
    .end local v5    # "chainingEnabled":I
    .end local v7    # "columns":[Ljava/lang/String;
    .end local v8    # "containerVpnState":I
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "personaId":I
    .end local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "result":Z
    .end local v21    # "routeType":I
    .end local v22    # "status":Z
    .end local v24    # "uidPidState":I
    .end local v25    # "values":[Ljava/lang/String;
    .end local v26    # "vendorNameWithCid":Ljava/lang/String;
    .end local v27    # "vpnConnectionType":I
    :catchall_36b
    move-exception v28

    monitor-exit p0

    throw v28

    .line 2415
    .restart local v6    # "cid":I
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "originalPackageName":Ljava/lang/String;
    .restart local v14    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v17    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v23    # "uid":I
    :cond_36e
    const/16 v28, -0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_3b6

    .line 2416
    :try_start_376
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v17

    .line 2417
    if-eqz v17, :cond_1d6

    .line 2419
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2421
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_3af

    .line 2423
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    goto/16 :goto_1d6

    .line 2426
    :cond_3af
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteUIDFromPackageData(Ljava/lang/String;)Z

    goto/16 :goto_1d6

    .line 2430
    .end local v16    # "personaId":I
    :cond_3b6
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v23

    .line 2432
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_3ec

    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "initializeHashtable : originalPackageName : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_3ec
    sget-boolean v28, DBG:Z

    if-eqz v28, :cond_40c

    const-string v28, "KnoxVpnEngineService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "initializeHashtable : uid : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_40c
    const/16 v28, -0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_1d6

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v17

    .line 2437
    if-eqz v17, :cond_1d6

    .line 2438
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v16

    .line 2441
    .restart local v16    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_441

    .line 2442
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    goto/16 :goto_1d6

    .line 2445
    :cond_441
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteUIDFromPackageData(Ljava/lang/String;)Z
    :try_end_446
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_446} :catch_28d
    .catchall {:try_start_376 .. :try_end_446} :catchall_36b

    goto/16 :goto_1d6
.end method

.method private initializeVpnVendors()V
    .registers 10

    .prologue
    .line 2278
    :try_start_0
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "initializeVpnVendors"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2280
    .local v4, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "initializeVpnVendors : vendorList initialized"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2282
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2283
    .local v3, "profileName":Ljava/lang/String;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : ProfileName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 2285
    .local v5, "vendorNameWithCid":Ljava/lang/String;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Checking vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    if-eqz v5, :cond_1d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 2287
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Adding vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_1d

    .line 2296
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "vendorNameWithCid":Ljava/lang/String;
    :catch_85
    move-exception v0

    .line 2297
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a2
    return-void

    .line 2292
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a3
    :try_start_a3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2293
    .restart local v5    # "vendorNameWithCid":Ljava/lang/String;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeVpnVendors : Binding to vendor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    invoke-virtual {p0, v5}, bindKnoxVpnInterface(Ljava/lang/String;)Z
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ce} :catch_85

    goto :goto_a7
.end method

.method private initializeVpnVendorsForContainer(I)V
    .registers 12
    .param p1, "containerId"    # I

    .prologue
    .line 2245
    :try_start_0
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "initializeVpnVendorsForContainer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2247
    .local v5, "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_17

    const-string v7, "KnoxVpnEngineService"

    const-string v8, "initializeVpnVendorsForContainer : vendorList initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_17
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2249
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 2250
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v0

    .line 2251
    .local v0, "cid":I
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_5b

    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : ProfileName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , cid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_5b
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    .line 2253
    .local v6, "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_7b

    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Checking vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_7b
    if-ne v0, p1, :cond_21

    if-eqz v6, :cond_21

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2255
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_a1

    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Adding vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_a1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a4} :catch_a6

    goto/16 :goto_21

    .line 2271
    .end local v0    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "vendorNameWithCid":Ljava/lang/String;
    :catch_a6
    move-exception v1

    .line 2272
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c3
    return-void

    .line 2260
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "vendorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c4
    :try_start_c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c8
    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2261
    .restart local v6    # "vendorNameWithCid":Ljava/lang/String;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_f0

    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initializeVpnVendorsForContainer : Binding to vendor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_f0
    iget-object v7, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_102

    iget-object v7, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, NULL_OBJECT:Ljava/lang/Object;

    if-ne v7, v8, :cond_106

    .line 2265
    :cond_102
    invoke-virtual {p0, v6}, bindKnoxVpnInterface(Ljava/lang/String;)Z

    goto :goto_c8

    .line 2267
    :cond_106
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_c8

    const-string v7, "KnoxVpnEngineService"

    const-string v8, "initializeVpnVendorsForContainer : Binding already done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_111} :catch_a6

    goto :goto_c8
.end method

.method private isCredentialsLocked()Z
    .registers 3

    .prologue
    .line 4470
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isNetworkConnected()Z
    .registers 3

    .prologue
    .line 2195
    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2197
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v0, 0x1

    .line 2201
    :goto_24
    return v0

    .line 2200
    :cond_25
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private migrateForAddall(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4427
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4428
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 4430
    .local v1, "status":Z
    if-eqz v0, :cond_54

    .line 4431
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v4, "ADD_ALL_PACKAGES"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4432
    const-string/jumbo v2, "profileName"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    const-string/jumbo v2, "packageUid"

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4434
    const-string/jumbo v2, "packageCid"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4437
    iget-object v2, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnPackageInfo"

    invoke-virtual {v2, v3, v5, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 4438
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migration forAddall status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    :cond_54
    return v1
.end method

.method private printProfileVpnMap()V
    .registers 13

    .prologue
    .line 2206
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_14e

    .line 2207
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :try_start_b
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileCount()I

    move-result v5

    .line 2210
    .local v5, "profileCount":I
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No of profiles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_164

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2212
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_154

    .line 2213
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v7

    .line 2214
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2216
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-direct {p0, v7}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v8

    .line 2217
    .local v8, "state":I
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ProfileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iface:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; personaId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; adminId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const-string v10, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activated:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v9

    if-nez v9, :cond_14f

    const-string v9, "false "

    :goto_ce
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2225
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "{ uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", profileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}},"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_129} :catch_12a

    goto :goto_e1

    .line 2236
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileCount":I
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :catch_12a
    move-exception v0

    .line 2237
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_147
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "-----------------Printing profile map --------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_14e
    return-void

    .line 2222
    .restart local v3    # "interfaceName":Ljava/lang/String;
    .restart local v5    # "profileCount":I
    .restart local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v7    # "profileName":Ljava/lang/String;
    .restart local v8    # "state":I
    :cond_14f
    :try_start_14f
    const-string/jumbo v9, "true "

    goto/16 :goto_ce

    .line 2231
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v8    # "state":I
    :cond_154
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "VpnProfileInfo contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_15b
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 2235
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_164
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_16b} :catch_12a

    goto :goto_147
.end method

.method private declared-synchronized refreshDomainInHashMap(Ljava/lang/String;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4158
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4159
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_e

    .line 4160
    sget-object v7, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    :cond_e
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_f2

    .line 4163
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "#################### Printing domain map ####################"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_102

    .line 4165
    :try_start_19
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Domain Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    sget-object v7, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4167
    .local v5, "key":Ljava/lang/String;
    sget-object v7, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4168
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 4169
    .local v3, "itemStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_84

    .line 4170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4169
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 4173
    :cond_84
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{ProfileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    const-string v8, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    domains : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    const-string v7, ""

    :goto_ba
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "]},"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_cc} :catch_ce
    .catchall {:try_start_19 .. :try_end_cc} :catchall_102

    goto/16 :goto_47

    .line 4178
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_ce
    move-exception v0

    .line 4179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cf
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_eb
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "#################### Printing domain map ####################"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_cf .. :try_end_f2} :catchall_102

    .line 4183
    :cond_f2
    monitor-exit p0

    return-void

    .line 4174
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "itemStr":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    :cond_f4
    const/4 v7, 0x1

    :try_start_f5
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_ba

    .line 4177
    .end local v1    # "i":I
    .end local v3    # "itemStr":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_fa
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "] "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_101} :catch_ce
    .catchall {:try_start_f5 .. :try_end_101} :catchall_102

    goto :goto_eb

    .line 4158
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_102
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private registerPersonaObserverForVpn()V
    .registers 4

    .prologue
    .line 3777
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3779
    .local v0, "mPersona":Landroid/os/PersonaManager;
    const-string v1, "KnoxVpnEngineService"

    const-string/jumbo v2, "registerSystemPersonaObserver not yet ported!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    return-void
.end method

.method private declared-synchronized removeAddAllPackageInfofromDatabase(Ljava/lang/String;I)I
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1222
    monitor-enter p0

    const/4 v2, -0x1

    .line 1224
    .local v2, "status":I
    :try_start_2
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v5, "ADD_ALL_PACKAGES"

    invoke-virtual {v4, p2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, "removePackage":Ljava/lang/String;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_27

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAddAllPackageInfofromDatabase: removePackage value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_27
    iget-object v4, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v5, "VpnPackageInfo"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "packageName"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "profileName"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_69
    .catchall {:try_start_2 .. :try_end_46} :catchall_87

    move-result v3

    .line 1229
    .local v3, "success":Z
    if-eqz v3, :cond_4a

    .line 1230
    const/4 v2, 0x0

    .line 1235
    .end local v1    # "removePackage":Ljava/lang/String;
    .end local v3    # "success":Z
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_67

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAddAllPackageInfofromDatabase: status value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_87

    .line 1236
    :cond_67
    monitor-exit p0

    return v2

    .line 1232
    :catch_69
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at removeAddAllPackageInfofromDatabase API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_87

    goto :goto_4a

    .line 1222
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_87
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeAllUidByTAG(Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4415
    .local v0, "blockToken":J
    :try_start_4
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4416
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_f

    .line 4417
    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeAllUidByTAG(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_13
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 4422
    :cond_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4424
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :goto_12
    return-void

    .line 4419
    :catch_13
    move-exception v2

    .line 4420
    .local v2, "e":Ljava/lang/Exception;
    :try_start_14
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_34

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at removeAllUidByTAG API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_38

    .line 4422
    :cond_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeContainerFromExceptionList(Ljava/lang/String;I)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 4400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4402
    .local v0, "blockToken":J
    :try_start_4
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4403
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_f

    .line 4404
    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeContainerFromExceptionList(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_13
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 4409
    :cond_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4411
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :goto_12
    return-void

    .line 4406
    :catch_13
    move-exception v2

    .line 4407
    .local v2, "e":Ljava/lang/Exception;
    :try_start_14
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_34

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at removeContainerFromExceptionList API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_38

    .line 4409
    :cond_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)I
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2548
    const/4 v6, -0x1

    .line 2550
    .local v6, "packageRemoved":I
    move-object/from16 v0, p0

    iget-object v15, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2551
    .local v9, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    .line 2554
    .local v14, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    move-object/from16 v0, p0

    iget-object v15, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    .line 2556
    .local v8, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v8, :cond_24

    .line 2557
    const-string v15, "KnoxVpnEngineService"

    const-string v16, "Error occured while removing hashmap by package: The error code is 108"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 2606
    .end local v6    # "packageRemoved":I
    .local v7, "packageRemoved":I
    :goto_23
    return v7

    .line 2560
    .end local v7    # "packageRemoved":I
    .restart local v6    # "packageRemoved":I
    :cond_24
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v15

    if-nez v15, :cond_3a

    .line 2561
    const-string v15, "KnoxVpnEngineService"

    const-string/jumbo v16, "removeFromHashMapByPackageName :Profile is deactivated. Just removing package entry"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 2563
    const/4 v6, 0x0

    move v7, v6

    .line 2564
    .end local v6    # "packageRemoved":I
    .restart local v7    # "packageRemoved":I
    goto :goto_23

    .line 2568
    .end local v7    # "packageRemoved":I
    .restart local v6    # "packageRemoved":I
    :cond_3a
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v5

    .line 2569
    .local v5, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v5, :cond_4b

    .line 2570
    const-string v15, "KnoxVpnEngineService"

    const-string v16, "Error occured while removing hashmap by package: The error code is 128"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 2571
    .end local v6    # "packageRemoved":I
    .restart local v7    # "packageRemoved":I
    goto :goto_23

    .line 2574
    .end local v7    # "packageRemoved":I
    .restart local v6    # "packageRemoved":I
    :cond_4b
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v12

    .line 2575
    .local v12, "uid":I
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v2

    .line 2576
    .local v2, "cid":I
    move-object/from16 v0, p0

    iget-object v15, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v12, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRules(ILjava/lang/String;I)V

    .line 2577
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v12}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2578
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 2582
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v2, v12, v1}, removeUIDListFromExceptionList(Ljava/lang/String;IILjava/lang/String;)V

    .line 2585
    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v10

    .line 2586
    .local v10, "size":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v13

    .line 2587
    .local v13, "vpnConnectionType":I
    const/4 v15, 0x1

    if-ne v13, v15, :cond_bd

    sget-object v15, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-virtual {v15, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v15

    if-nez v15, :cond_bd

    const/4 v4, 0x1

    .line 2590
    .local v4, "onDemand":Z
    :goto_8d
    if-lez v10, :cond_91

    if-eqz v4, :cond_dd

    .line 2591
    :cond_91
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v11

    .line 2592
    .local v11, "state":I
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "removeFromHashMapByPackageName : current state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :try_start_b2
    invoke-interface {v14, v9}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_bf

    move-result v6

    .line 2595
    if-eqz v6, :cond_dd

    .line 2596
    const/16 v6, 0x66

    move v7, v6

    .line 2597
    .end local v6    # "packageRemoved":I
    .restart local v7    # "packageRemoved":I
    goto/16 :goto_23

    .line 2587
    .end local v4    # "onDemand":Z
    .end local v7    # "packageRemoved":I
    .end local v11    # "state":I
    .restart local v6    # "packageRemoved":I
    :cond_bd
    const/4 v4, 0x0

    goto :goto_8d

    .line 2599
    .restart local v4    # "onDemand":Z
    .restart local v11    # "state":I
    :catch_bf
    move-exception v3

    .line 2600
    .local v3, "e":Ljava/lang/Exception;
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "remove profile : Exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "state":I
    :cond_dd
    sget-boolean v15, DBG:Z

    if-eqz v15, :cond_e4

    invoke-direct/range {p0 .. p0}, printProfileVpnMap()V

    :cond_e4
    move v7, v6

    .line 2606
    .end local v6    # "packageRemoved":I
    .restart local v7    # "packageRemoved":I
    goto/16 :goto_23
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .registers 16
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2481
    const-string v11, "KnoxVpnEngineService"

    const-string/jumbo v12, "profile info is going to be removed from the device"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    const/4 v9, -0x1

    .local v9, "uid":I
    const/4 v0, -0x1

    .line 2484
    .local v0, "cid":I
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 2485
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v6, :cond_1a

    .line 2486
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "Error occured while removing hashmap by profile: The error code is 108"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_19
    :goto_19
    return-void

    .line 2489
    :cond_1a
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2492
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2493
    .local v4, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v4, :cond_40

    .line 2494
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_26

    const-string v11, "KnoxVpnEngineService"

    const-string v12, "The profile is not owning any packages"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2497
    :cond_40
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2498
    .local v5, "packageName":Ljava/lang/String;
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_61

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "removeFromHashMapByProfileName: packageName value is  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_61
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 2500
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_88

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "removeFromHashMapByProfileName: cid value is  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_88
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v9

    .line 2502
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_a9

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "removeFromHashMapByProfileName: uid value is  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_a9
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 2506
    invoke-direct {p0, p1, v0}, removeContainerFromExceptionList(Ljava/lang/String;I)V

    .line 2508
    iget-object v11, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v13

    invoke-virtual {v11, v0, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRulesRange(ILjava/lang/String;I)V

    .line 2509
    invoke-direct {p0, v0}, startUid(I)I

    move-result v11

    invoke-direct {p0, v0}, stopUid(I)I

    move-result v12

    invoke-direct {p0, p1, v11, v12}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 2520
    :goto_cc
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "remove profile : uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 2512
    :cond_e7
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_103

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The uid of the package going to be removed from the device is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_103
    invoke-direct {p0, p1, v0, v9, v5}, removeUIDListFromExceptionList(Ljava/lang/String;IILjava/lang/String;)V

    .line 2517
    iget-object v11, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v13

    invoke-virtual {v11, v9, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRules(ILjava/lang/String;I)V

    .line 2518
    invoke-direct {p0, p1, v9, v9}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_cc

    .line 2524
    .end local v4    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_117
    :try_start_117
    invoke-virtual {p0, p1}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v10

    .line 2525
    .local v10, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v10, :cond_13a

    .line 2526
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "Error occured while removing hashmap by profile: The error code is 110"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_124} :catch_182
    .catchall {:try_start_117 .. :try_end_124} :catchall_1b8

    .line 2538
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2539
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, p1}, removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    goto/16 :goto_19

    .line 2529
    :cond_13a
    :try_start_13a
    invoke-interface {v10, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v7

    .line 2530
    .local v7, "profileState":I
    const/4 v11, 0x2

    if-eq v7, v11, :cond_144

    const/4 v11, 0x4

    if-ne v7, v11, :cond_165

    .line 2531
    :cond_144
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setMarkProfileForDeletion(Z)V

    .line 2532
    invoke-interface {v10, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v8

    .line 2533
    .local v8, "stopStatus":I
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "status of the profile after stopping the connection is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_165} :catch_182
    .catchall {:try_start_13a .. :try_end_165} :catchall_1b8

    .line 2538
    .end local v8    # "stopStatus":I
    :cond_165
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_179

    .line 2539
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, p1}, removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2543
    .end local v7    # "profileState":I
    .end local v10    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_179
    :goto_179
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_19

    invoke-direct {p0}, printProfileVpnMap()V

    goto/16 :goto_19

    .line 2535
    :catch_182
    move-exception v1

    .line 2536
    .local v1, "e":Ljava/lang/Exception;
    :try_start_183
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_1a3

    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception occured while removing the profile info from the device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_183 .. :try_end_1a3} :catchall_1b8

    .line 2538
    :cond_1a3
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_179

    .line 2539
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, p1}, removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    goto :goto_179

    .line 2538
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1b8
    move-exception v11

    iget-object v12, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v12, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1cd

    .line 2539
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12, p1}, removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    iget-object v12, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v12, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    :cond_1cd
    throw v11
.end method

.method private removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3089
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeMangleExceptions : vendor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3091
    .local v2, "vendorName":Ljava/lang/String;
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 3092
    .local v0, "cid":I
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    .line 3093
    .local v1, "uid":I
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeMangleExceptions : uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_58

    .line 3095
    iget-object v3, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForStrongswan(I)V

    .line 3099
    :goto_57
    return-void

    .line 3097
    :cond_58
    iget-object v3, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleExceptionsForUid(I)V

    goto :goto_57
.end method

.method private removePackagesFromIpTables(Ljava/lang/String;)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3561
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePackagesFromIpTables : profileName =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 3563
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v5, -0x1

    .local v5, "uid":I
    const/4 v0, -0x1

    .line 3565
    .local v0, "cid":I
    if-eqz v4, :cond_79

    .line 3566
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3567
    .local v3, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3568
    .local v2, "interfaceName":Ljava/lang/String;
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 3569
    if-eqz v2, :cond_2b

    .line 3570
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 3571
    iget-object v6, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v7

    invoke-virtual {v6, v0, v2, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3572
    invoke-direct {p0, v0}, startUid(I)I

    move-result v6

    invoke-direct {p0, v0}, stopUid(I)I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_2b

    .line 3576
    :cond_64
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v5

    .line 3577
    iget-object v6, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRules(ILjava/lang/String;I)V

    .line 3578
    invoke-direct {p0, p1, v5, v5}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_2b

    .line 3582
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "interfaceName":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_79
    return-void
.end method

.method private declared-synchronized removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2683
    monitor-enter p0

    :try_start_1
    const-string v2, "KnoxVpnEngineService"

    const-string/jumbo v3, "removeProfileFromHashMapAndDB : removeProfileFromHashMapAndDB beginning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_62

    .line 2688
    :try_start_9
    invoke-direct {p0, p1}, removeAllUidByTAG(Ljava/lang/String;)V

    .line 2691
    invoke-direct {p0, p1}, removeFromHashMapByProfileName(Ljava/lang/String;)V

    .line 2693
    iget-object v2, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "VpnProfileInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "profileName"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 2695
    .local v1, "success":Z
    if-nez v1, :cond_28

    .line 2698
    :cond_28
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove vpn connection for per app : success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_43
    .catchall {:try_start_9 .. :try_end_41} :catchall_62

    .line 2703
    .end local v1    # "success":Z
    :goto_41
    monitor-exit p0

    return-void

    .line 2700
    :catch_43
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/lang/Exception;
    :try_start_44
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_62

    goto :goto_41

    .line 2683
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_62
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeProfileFromKeyStore(I)V
    .registers 11
    .param p1, "uid"    # I

    .prologue
    .line 4444
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1c

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "knox vpn application is uninstalled and checking if it has created profile in keystore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 4448
    .local v5, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 4449
    .local v4, "profileInfo":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    if-eqz v6, :cond_24

    .line 4450
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3f

    const-string v6, "KnoxVpnEngineService"

    const-string v7, "The keystore contains some vpn profile info in the device"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    :cond_3f
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    .line 4452
    .local v2, "isKnoxProfile":Z
    if-eqz v2, :cond_24

    .line 4453
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_69

    const-string v6, "KnoxVpnEngineService"

    const-string v7, "The profileInfo present in the keystore belongs to knox"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    :cond_69
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    .line 4455
    .local v3, "mInfo":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v3, :cond_8e

    iget v6, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8e

    .line 4456
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_83

    const-string v6, "KnoxVpnEngineService"

    const-string v7, "The profileInfo present in the keystore is in connected state, going to stop it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    :cond_83
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v6

    const-string v7, "[Legacy VPN]"

    const-string v8, "[Legacy VPN]"

    invoke-interface {v6, v7, v8}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4459
    :cond_8e
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_99

    const-string v6, "KnoxVpnEngineService"

    const-string v7, "The profileInfo present in the keystore belongs to knox, so going to delete it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    :cond_99
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_b5} :catch_b7

    goto/16 :goto_24

    .line 4464
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isKnoxProfile":Z
    .end local v3    # "mInfo":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v4    # "profileInfo":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :catch_b7
    move-exception v0

    .line 4465
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured at removeProfileFromKeyStore API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d4
    return-void
.end method

.method private removeUIDListFromExceptionList(Ljava/lang/String;IILjava/lang/String;)V
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4382
    .local v0, "blockToken":J
    const/4 v5, -0x2

    if-ne p3, v5, :cond_e

    .line 4383
    :try_start_7
    invoke-direct {p0, p1, p2}, removeContainerFromExceptionList(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_28
    .catchall {:try_start_7 .. :try_end_a} :catchall_4d

    .line 4395
    :cond_a
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4397
    :goto_d
    return-void

    .line 4385
    :cond_e
    :try_start_e
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v3

    .line 4386
    .local v3, "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    if-eqz v3, :cond_a

    if-eqz p4, :cond_a

    .line 4387
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4388
    .local v4, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->removeUIDListFromExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28
    .catchall {:try_start_e .. :try_end_27} :catchall_4d

    goto :goto_a

    .line 4392
    .end local v3    # "mEntProvider":Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .end local v4    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_28
    move-exception v2

    .line 4393
    .local v2, "e":Ljava/lang/Exception;
    :try_start_29
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_49

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeUIDListFromExceptionList API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_4d

    .line 4395
    :cond_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private declared-synchronized removeVpnInterface(Ljava/lang/String;)V
    .registers 4
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 3908
    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_3
    iget-object v0, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 3909
    iget-object v0, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 3911
    :cond_11
    monitor-exit p0

    return-void

    .line 3908
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restartVPN(Ljava/lang/String;)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4093
    const-string v2, "KnoxVpnEngineService"

    const-string/jumbo v3, "restartVPN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    if-nez p1, :cond_13

    .line 4096
    const-string v2, "KnoxVpnEngineService"

    const-string/jumbo v3, "profileName is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_12
    :goto_12
    return-void

    .line 4100
    :cond_13
    iget-object v2, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 4101
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getIsRetry()Z

    move-result v2

    if-nez v2, :cond_40

    .line 4102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setIsRetry(Z)V

    .line 4108
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4109
    .local v1, "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    iget-object v2, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4110
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "KnoxVpnEngineService"

    const-string/jumbo v3, "post delay "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 4104
    .end local v1    # "temp":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
    :cond_40
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + was tried to re-start once "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4475
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-direct {p0}, isCredentialsLocked()Z

    move-result v8

    if-nez v8, :cond_50

    .line 4477
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v8

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4478
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_50

    array-length v8, v4

    if-lez v8, :cond_50

    .line 4479
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v5, :cond_50

    aget-object v3, v1, v2

    .line 4480
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 4481
    invoke-direct {p0}, getKeyStore()Landroid/security/KeyStore;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VPN_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    .line 4482
    .local v7, "value":[B
    if-eqz v7, :cond_4d

    .line 4483
    invoke-static {v3, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 4484
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_4d

    .line 4485
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4479
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v7    # "value":[B
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 4491
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_50
    return-object v0
.end method

.method private runAllVpnService()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 2706
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "run all vpn : runAllVpnService beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :try_start_9
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2710
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v3

    .line 2711
    .local v3, "profileName":Ljava/lang/String;
    invoke-direct {p0, v3}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v4

    .line 2712
    .local v4, "state":I
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4e

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run all vpn : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_4e
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    if-eqz v5, :cond_13

    .line 2719
    if-eq v4, v8, :cond_59

    const/4 v5, 0x5

    if-ne v4, v5, :cond_13

    .line 2720
    :cond_59
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_80

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run all vpn : startVpnProfile : profileName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_80
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, startVpnProfile(Ljava/lang/String;Z)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_84} :catch_85

    goto :goto_13

    .line 2724
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profileName":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_85
    move-exception v0

    .line 2725
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured while doing runAllVpnService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a2
    return-void
.end method

.method private sendBindSuccessIntent(Ljava/lang/String;)V
    .registers 10
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 332
    .local v2, "token":J
    :try_start_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "vendorName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "containerId":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v1, "successIntent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.mdm.VPN_BIND_RESULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string/jumbo v5, "vpn_bind_vendor"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v5, "vpn_bind_cid"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string/jumbo v5, "vpn_bind_status"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v5, "KnoxVpnEngineService"

    const-string v6, "Sending bind success intent to User 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3d

    .line 342
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    return-void

    .line 342
    .end local v0    # "containerId":I
    .end local v1    # "successIntent":Landroid/content/Intent;
    .end local v4    # "vendorName":Ljava/lang/String;
    :catchall_3d
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 2897
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    if-eqz v1, :cond_10

    .line 2898
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2899
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2901
    .end local v0    # "msg":Landroid/os/Message;
    :cond_10
    return-void
.end method

.method private declared-synchronized setActivate(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "activateState"    # I

    .prologue
    .line 3997
    monitor-enter p0

    :try_start_1
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setActivate: profileName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "activateState value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_a7

    .line 3998
    const/4 v4, 0x0

    .line 4001
    .local v4, "isActivateInfoSaved":Z
    :try_start_25
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 4002
    .local v7, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v7, :cond_37

    .line 4003
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "Error occured while setActivate the profile: The error code is 108"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_85
    .catchall {:try_start_25 .. :try_end_34} :catchall_a7

    move v5, v4

    .line 4028
    .end local v4    # "isActivateInfoSaved":Z
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v5, "isActivateInfoSaved":I
    :goto_35
    monitor-exit p0

    return v5

    .line 4006
    .end local v5    # "isActivateInfoSaved":I
    .restart local v4    # "isActivateInfoSaved":Z
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_37
    :try_start_37
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v6

    .line 4008
    .local v6, "previousActivateState":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4009
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "activateState"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4010
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "profileName"

    aput-object v10, v1, v9

    .line 4011
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 4013
    .local v8, "values":[Ljava/lang/String;
    iget-object v9, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v10, "VpnProfileInfo"

    invoke-virtual {v9, v10, v1, v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 4017
    .local v0, "activateStatus":Z
    if-eqz v0, :cond_81

    .line 4018
    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_65} :catch_85
    .catchall {:try_start_37 .. :try_end_65} :catchall_a7

    .line 4019
    const/4 v4, 0x1

    .line 4027
    .end local v0    # "activateStatus":Z
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "previousActivateState":I
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_66
    :goto_66
    :try_start_66
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setActivate: isActivateInfoSaved value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_a7

    move v5, v4

    .line 4028
    .restart local v5    # "isActivateInfoSaved":I
    goto :goto_35

    .line 4021
    .end local v5    # "isActivateInfoSaved":I
    .restart local v0    # "activateStatus":Z
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "previousActivateState":I
    .restart local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_81
    :try_start_81
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setActivateState(I)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85
    .catchall {:try_start_81 .. :try_end_84} :catchall_a7

    goto :goto_66

    .line 4024
    .end local v0    # "activateStatus":Z
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "previousActivateState":I
    .end local v7    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "values":[Ljava/lang/String;
    :catch_85
    move-exception v3

    .line 4025
    .local v3, "e":Ljava/lang/Exception;
    :try_start_86
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_66

    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occured while storing activateState info in db "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_86 .. :try_end_a6} :catchall_a7

    goto :goto_66

    .line 3997
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "isActivateInfoSaved":Z
    :catchall_a7
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I
    .param p4, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3681
    if-eqz p1, :cond_80

    invoke-direct {p0}, getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v6

    if-eqz v6, :cond_80

    .line 3682
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_24

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The setDnsSystemProperty  profileName value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_24
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_40

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The setDnsSystemProperty  uidStart value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_40
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_5c

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The setDnsSystemProperty  uidEnd value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_5c
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_78

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The setDnsSystemProperty  interfaceName value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    :cond_78
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 3687
    .local v5, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_81

    .line 3705
    .end local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_80
    :goto_80
    return-void

    .line 3691
    .restart local v5    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_81
    const/4 v1, 0x0

    .line 3692
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3696
    .local v2, "token":J
    :try_start_90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3697
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    new-instance v6, Landroid/net/UidRange;

    invoke-direct {v6, p2, p3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3698
    iget-object v7, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p4}, Landroid/net/IConnectivityManager;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/UidRange;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b2} :catch_b6
    .catchall {:try_start_90 .. :try_end_b2} :catchall_dc

    .line 3702
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_80

    .line 3699
    .end local v4    # "uidList":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :catch_b6
    move-exception v0

    .line 3700
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b7
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_d8

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting dns property : Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_b7 .. :try_end_d8} :catchall_dc

    .line 3702
    :cond_d8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_80

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_dc
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private setVpnInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Ljava/lang/Object;

    .prologue
    .line 3892
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_28

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVpnInterface: vendorName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vpnInterface value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_28
    if-nez p2, :cond_2c

    .line 3894
    sget-object p2, NULL_OBJECT:Ljava/lang/Object;

    .line 3896
    :cond_2c
    iget-object v0, p0, vpnInterfaceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3897
    return-void
.end method

.method private setupIntentFilter()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 2730
    const-string v0, "KnoxVpnEngineService"

    const-string/jumbo v2, "setup intent filter is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2734
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2735
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2736
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2737
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2738
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2739
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2742
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2743
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2744
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2745
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2746
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2750
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2751
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "enterprise.container.uninstalled"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2752
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object v6, v1

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2755
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2756
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2757
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    move-object v6, v1

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2760
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2761
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2762
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    move-object v6, v1

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2765
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2766
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2767
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

    move-object v6, v1

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2774
    return-void
.end method

.method private setupIntentFilterForMigration()V
    .registers 7

    .prologue
    .line 2777
    const-string v0, "KnoxVpnEngineService"

    const-string/jumbo v2, "setup intent filter Migration is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 2779
    .local v1, "receiver":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2781
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2782
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2783
    return-void
.end method

.method private declared-synchronized startChainedProfile(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 4328
    monitor-enter p0

    :try_start_1
    const-string/jumbo v2, "profileName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4330
    .local v1, "profileName":Ljava/lang/String;
    iget-object v2, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    if-eqz v2, :cond_14

    .line 4331
    iget-object v2, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->exit()V

    .line 4332
    const/4 v2, 0x0

    iput-object v2, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 4335
    :cond_14
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;I)V

    iput-object v2, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    .line 4336
    iget-object v2, p0, mChainingStateMachine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->start()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23
    .catchall {:try_start_1 .. :try_end_21} :catchall_41

    .line 4341
    .end local v1    # "profileName":Ljava/lang/String;
    :goto_21
    monitor-exit p0

    return-void

    .line 4338
    :catch_23
    move-exception v0

    .line 4339
    .local v0, "e":Ljava/lang/Exception;
    :try_start_24
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at startChainedProfile API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_41

    goto :goto_21

    .line 4328
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private startUid(I)I
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 3478
    const/4 v1, -0x1

    .line 3480
    .local v1, "firstUid":I
    const v2, 0x186a0

    mul-int v1, p1, v2

    .line 3481
    :try_start_6
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_23

    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    .line 3485
    :cond_23
    :goto_23
    return v1

    .line 3482
    :catch_24
    move-exception v0

    .line 3483
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startUidOfPersona Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private declared-synchronized startVpnProfile(Ljava/lang/String;)I
    .registers 24
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3606
    monitor-enter p0

    :try_start_1
    sget-boolean v19, DBG:Z

    if-eqz v19, :cond_22

    const-string v19, "KnoxVpnEngineService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "startVpnProfile : profileName value is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_18f

    .line 3607
    :cond_22
    const/4 v15, -0x1

    .line 3610
    .local v15, "startVpn":I
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v12

    .line 3612
    .local v12, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v12, :cond_3e

    .line 3613
    const-string v19, "KnoxVpnEngineService"

    const-string v20, "Error occured while starting vpn proflie: The error code is 108"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_170
    .catchall {:try_start_23 .. :try_end_3a} :catchall_18f

    move/from16 v19, v15

    .line 3677
    .end local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_3c
    monitor-exit p0

    return v19

    .line 3616
    .restart local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3e
    :try_start_3e
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    .line 3617
    .local v3, "activateState":I
    if-nez v3, :cond_47

    .line 3618
    const/16 v19, 0x12d

    goto :goto_3c

    .line 3621
    :cond_47
    invoke-direct/range {p0 .. p0}, isNetworkConnected()Z

    move-result v19

    if-nez v19, :cond_50

    .line 3622
    const/16 v19, 0x130

    goto :goto_3c

    .line 3625
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v7

    .line 3626
    .local v7, "isChainingEnabled":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_6d

    .line 3627
    invoke-virtual/range {p0 .. p1}, checkChainingStatus(Ljava/lang/String;)I

    move-result v5

    .line 3628
    .local v5, "chainingStatus":I
    if-nez v5, :cond_6d

    .line 3629
    const/16 v19, 0x1f6

    goto :goto_3c

    .line 3633
    .end local v5    # "chainingStatus":I
    :cond_6d
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v13

    .line 3635
    .local v13, "size":I
    if-gtz v13, :cond_76

    .line 3636
    const/16 v19, 0x12e

    goto :goto_3c

    .line 3639
    :cond_76
    invoke-direct/range {p0 .. p1}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_192

    .line 3644
    invoke-virtual/range {p0 .. p1}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v18

    .line 3645
    .local v18, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v18, :cond_16c

    .line 3646
    invoke-direct/range {p0 .. p1}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v16

    .line 3647
    .local v16, "state":I
    invoke-direct/range {p0 .. p1}, getActivate(Ljava/lang/String;)I

    move-result v4

    .line 3648
    .local v4, "active":I
    invoke-virtual/range {p0 .. p1}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v17

    .line 3649
    .local v17, "vpnConnectionType":I
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_9f

    const/16 v19, 0x5

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_a1

    :cond_9f
    if-nez v4, :cond_fb

    :cond_a1
    const/4 v10, 0x1

    .line 3650
    .local v10, "notAllowed":Z
    :goto_a2
    if-nez v17, :cond_fd

    const/4 v9, 0x1

    .line 3651
    .local v9, "keepOn":Z
    :goto_a5
    sget-object v19, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v8

    .line 3652
    .local v8, "isRunning":Z
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_ff

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_ff

    const/4 v14, 0x1

    .line 3653
    .local v14, "startOnDemand":Z
    :goto_bc
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_101

    if-nez v8, :cond_101

    const/4 v11, 0x1

    .line 3655
    .local v11, "notStartOnDemand":Z
    :goto_c7
    if-eqz v10, :cond_103

    .line 3656
    const-string v19, "KnoxVpnEngineService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "not allowd state for starting a vpn : profileName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": state = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const/16 v19, 0x131

    goto/16 :goto_3c

    .line 3641
    .end local v4    # "active":I
    .end local v8    # "isRunning":Z
    .end local v9    # "keepOn":Z
    .end local v10    # "notAllowed":Z
    .end local v11    # "notStartOnDemand":Z
    .end local v14    # "startOnDemand":Z
    .end local v16    # "state":I
    .end local v17    # "vpnConnectionType":I
    .end local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :pswitch_f7
    const/16 v19, 0x0

    goto/16 :goto_3c

    .line 3649
    .restart local v4    # "active":I
    .restart local v16    # "state":I
    .restart local v17    # "vpnConnectionType":I
    .restart local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_fb
    const/4 v10, 0x0

    goto :goto_a2

    .line 3650
    .restart local v10    # "notAllowed":Z
    :cond_fd
    const/4 v9, 0x0

    goto :goto_a5

    .line 3652
    .restart local v8    # "isRunning":Z
    .restart local v9    # "keepOn":Z
    :cond_ff
    const/4 v14, 0x0

    goto :goto_bc

    .line 3653
    .restart local v14    # "startOnDemand":Z
    :cond_101
    const/4 v11, 0x0

    goto :goto_c7

    .line 3660
    .restart local v11    # "notStartOnDemand":Z
    :cond_103
    sget-boolean v19, DBG:Z

    if-eqz v19, :cond_12e

    const-string v19, "KnoxVpnEngineService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "startVpnProfile : keepOn =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / startOnDemand = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_12e
    if-nez v9, :cond_132

    if-eqz v14, :cond_168

    .line 3663
    :cond_132
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v15

    .line 3665
    const-string v19, "KnoxVpnEngineService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "startVpnProfile: start result : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_162} :catch_170
    .catchall {:try_start_3e .. :try_end_162} :catchall_18f

    .line 3666
    if-eqz v15, :cond_16c

    .line 3667
    const/16 v19, 0x66

    goto/16 :goto_3c

    .line 3670
    :cond_168
    if-eqz v11, :cond_16c

    .line 3671
    const/16 v15, 0x12f

    .end local v3    # "activateState":I
    .end local v4    # "active":I
    .end local v7    # "isChainingEnabled":I
    .end local v8    # "isRunning":Z
    .end local v9    # "keepOn":Z
    .end local v10    # "notAllowed":Z
    .end local v11    # "notStartOnDemand":Z
    .end local v12    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v13    # "size":I
    .end local v14    # "startOnDemand":Z
    .end local v16    # "state":I
    .end local v17    # "vpnConnectionType":I
    .end local v18    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_16c
    :goto_16c
    move/from16 v19, v15

    .line 3677
    goto/16 :goto_3c

    .line 3674
    :catch_170
    move-exception v6

    .line 3675
    .local v6, "e":Ljava/lang/Exception;
    :try_start_171
    const-string v19, "KnoxVpnEngineService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "startVpnProfile : Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catchall {:try_start_171 .. :try_end_18e} :catchall_18f

    goto :goto_16c

    .line 3606
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "startVpn":I
    :catchall_18f
    move-exception v19

    monitor-exit p0

    throw v19

    .line 3639
    :pswitch_data_192
    .packed-switch 0x4
        :pswitch_f7
    .end packed-switch
.end method

.method private startVpnProfile(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    .prologue
    .line 3586
    const/4 v0, -0x1

    .line 3588
    .local v0, "result":I
    if-eqz p2, :cond_d

    .line 3589
    invoke-direct {p0, p1}, startVpnProfile(Ljava/lang/String;)I

    move-result v0

    .line 3590
    if-eqz v0, :cond_c

    .line 3591
    invoke-direct {p0, p1}, restartVPN(Ljava/lang/String;)V

    .line 3598
    :cond_c
    :goto_c
    return v0

    .line 3595
    :cond_d
    invoke-direct {p0, p1}, startVpnProfile(Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method private stopUid(I)I
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 3489
    const/4 v1, -0x1

    .line 3490
    .local v1, "firstUid":I
    const/4 v2, -0x1

    .line 3492
    .local v2, "lastUid":I
    const v3, 0x186a0

    mul-int v1, p1, v3

    .line 3493
    :try_start_7
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The Start uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :cond_24
    const v3, 0x1869f

    add-int v2, v1, v3

    .line 3495
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_46

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUid - The last uid for the persona for which dns is going to be applied is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    .line 3499
    :cond_46
    :goto_46
    return v2

    .line 3496
    :catch_47
    move-exception v0

    .line 3497
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopUidOfPersona Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private declared-synchronized stopVpnConnectionAfterAdminRemoval(I)V
    .registers 19
    .param p1, "uid"    # I

    .prologue
    .line 2647
    monitor-enter p0

    :try_start_1
    const-string v10, "KnoxVpnEngineService"

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  beginning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13c

    .line 2648
    const/4 v7, 0x0

    .line 2649
    .local v7, "profileName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 2651
    .local v1, "adminUid":I
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v11, "VpnProfileInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "profileName"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "adminUid"

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2653
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  got cvList from DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    if-eqz v3, :cond_13a

    .line 2655
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2656
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "profileName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2657
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2658
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  checking profile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    move/from16 v0, p1

    if-ne v1, v0, :cond_44

    .line 2660
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :   admin matched: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  removing hashmap and db: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 2663
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval :  vpnInterface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    if-eqz v9, :cond_115

    .line 2665
    move-object/from16 v0, p0

    iget-object v10, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 2666
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_f0

    .line 2667
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, removeMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    :cond_f0
    const-string v10, "KnoxVpnEngineService"

    const-string/jumbo v11, "stopVpnConnectionAfterAdminRemoval :  Calling remove Connection: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-interface {v9, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v8

    .line 2671
    .local v8, "removeStatus":I
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopVpnConnectionAfterAdminRemoval : remove Connection. Status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "removeStatus":I
    :cond_115
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11a} :catch_11c
    .catchall {:try_start_b .. :try_end_11a} :catchall_13c

    goto/16 :goto_44

    .line 2677
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_11c
    move-exception v4

    .line 2678
    .local v4, "e":Ljava/lang/Exception;
    :try_start_11d
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_11d .. :try_end_13a} :catchall_13c

    .line 2680
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_13a
    monitor-exit p0

    return-void

    .line 2647
    .end local v1    # "adminUid":I
    .end local v7    # "profileName":Ljava/lang/String;
    :catchall_13c
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V
    .registers 10
    .param p1, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4199
    const-string v4, "KnoxVpnEngineService"

    const-string v5, "Start syncProfile between VPNDB and Vendor\'s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    const/4 v2, 0x0

    .line 4201
    .local v2, "profileNameinVendor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4203
    .local v1, "jsonProfile":Ljava/lang/String;
    :try_start_9
    invoke-interface {p1, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4204
    if-eqz v1, :cond_31

    .line 4205
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4206
    invoke-interface {p1, v2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v3

    .line 4207
    .local v3, "removeStatus":I
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile in VendorDB is removed successfullyStatus of remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    .line 4213
    .end local v3    # "removeStatus":I
    :cond_31
    :goto_31
    return-void

    .line 4210
    :catch_32
    move-exception v0

    .line 4211
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync the profile : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;II)V
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "uidStart"    # I
    .param p3, "uidEnd"    # I

    .prologue
    .line 3708
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsetDnsSystemProperty is reached : whose profileName is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "whose start uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " whose stop uid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    const/4 v1, 0x0

    .line 3710
    .local v1, "mConnectivityService":Landroid/net/IConnectivityManager;
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3711
    if-eqz p1, :cond_88

    invoke-direct {p0}, getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v6

    if-eqz v6, :cond_88

    .line 3712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3714
    .local v4, "token":J
    :try_start_45
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 3715
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_85

    .line 3716
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 3717
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_5f

    const-string v6, "KnoxVpnEngineService"

    const-string/jumbo v7, "unsetDnsSystemProperty: interface name is not null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_5f
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 3720
    .local v0, "interfaceName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3721
    .local v3, "uidList":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    new-instance v6, Landroid/net/UidRange;

    invoke-direct {v6, p2, p3}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3722
    iget-object v7, p0, mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/UidRange;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_85} :catch_89
    .catchall {:try_start_45 .. :try_end_85} :catchall_8e

    .line 3728
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v3    # "uidList":Ljava/util/List;, "Ljava/util/List<Landroid/net/UidRange;>;"
    :cond_85
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3731
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "token":J
    :cond_88
    :goto_88
    return-void

    .line 3725
    .restart local v4    # "token":J
    :catch_89
    move-exception v6

    .line 3728
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_88

    :catchall_8e
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private declared-synchronized updateNotification(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 4186
    monitor-enter p0

    :try_start_1
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_28

    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification profileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , flag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    :cond_28
    invoke-direct {p0, p1}, getActivate(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    invoke-direct {p0, p1}, getVPNTransitionState(Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_5e

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    .line 4191
    :try_start_36
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->updateEnterpriseVpn(Ljava/lang/String;IZ)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3f
    .catchall {:try_start_36 .. :try_end_3d} :catchall_5e

    .line 4196
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 4192
    :catch_3f
    move-exception v0

    .line 4193
    .local v0, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v1, "KnoxVpnEngineService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_5e

    goto :goto_3d

    .line 4186
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2615
    monitor-enter p0

    if-eqz p1, :cond_9c

    .line 2617
    :try_start_4
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inside updatePackageData : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v6, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "packageUid"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2626
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9c

    .line 2627
    const-string v6, "KnoxVpnEngineService"

    const-string/jumbo v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2629
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "packageUid"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2630
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "packageName"

    aput-object v7, v0, v6

    .line 2633
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 2636
    .local v4, "values":[Ljava/lang/String;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget-object v6, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnPackageInfo"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9b} :catch_9e
    .catchall {:try_start_4 .. :try_end_9b} :catchall_bd

    move-result v5

    .line 2643
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_9c
    :goto_9c
    monitor-exit p0

    return v5

    .line 2639
    :catch_9e
    move-exception v3

    .line 2640
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9f
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_9f .. :try_end_bc} :catchall_bd

    goto :goto_9c

    .line 2615
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_bd
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "responseData"    # Landroid/app/enterprise/EnterpriseResponseData;

    .prologue
    const/4 v8, 0x1

    .line 3836
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 3837
    .local v0, "adminId":I
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 3838
    .local v3, "vendorName":Ljava/lang/String;
    iget v1, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 3839
    .local v1, "personaId":I
    invoke-static {v3, v1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3840
    .local v4, "vendorNameWithCid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3841
    .local v2, "returnValue":I
    if-eqz p2, :cond_12

    if-eqz v3, :cond_12

    if-nez p3, :cond_3c

    .line 3842
    :cond_12
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check null for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const/4 v2, -0x1

    .line 3844
    if-eqz p3, :cond_3b

    .line 3845
    const/4 v5, 0x7

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 3858
    :cond_3b
    :goto_3b
    return v2

    .line 3846
    :cond_3c
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->checkAdminForProfile(ILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3b

    .line 3847
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin check failed for profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    const/4 v2, 0x1

    .line 3849
    const/16 v5, 0x8

    invoke-virtual {p3, v8, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_3b
.end method

.method private validatePackageList(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .param p1, "personaId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "adminId"    # I

    .prologue
    .line 1105
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_28

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageList: personaId value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "profileName value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_28
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2b
    if-ge v2, v3, :cond_f1

    aget-object v6, v0, v2

    .line 1109
    .local v6, "regularPackageName":Ljava/lang/String;
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v6, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;I)Z

    move-result v1

    .line 1110
    .local v1, "checkIfApplicationHasSystemUID":Z
    if-eqz v1, :cond_46

    .line 1111
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_43

    const-string v8, "KnoxVpnEngineService"

    const-string/jumbo v9, "validatePackageList:Package has system uid"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_43
    const/16 v8, 0x85

    .line 1143
    .end local v1    # "checkIfApplicationHasSystemUID":Z
    .end local v6    # "regularPackageName":Ljava/lang/String;
    :goto_45
    return v8

    .line 1115
    .restart local v1    # "checkIfApplicationHasSystemUID":Z
    .restart local v6    # "regularPackageName":Ljava/lang/String;
    :cond_46
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfApplicationIsblackListed(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 1116
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_6b

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageList: the following package has been blacklisted by the framework "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_6b
    const/16 v8, 0x89

    goto :goto_45

    .line 1120
    :cond_6e
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 1121
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_86

    const-string v8, "KnoxVpnEngineService"

    const-string/jumbo v9, "validatePackageList:Package has blank "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_86
    const/16 v8, 0x86

    goto :goto_45

    .line 1125
    :cond_89
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1126
    .local v7, "transformedPackageName":Ljava/lang/String;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_ac

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageList: transformedPackageName value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_ac
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1129
    .local v5, "profileForPackage":Ljava/lang/String;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_cf

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageList: profileForPackage value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_cf
    if-eqz v5, :cond_ed

    .line 1133
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 1134
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v4, :cond_ed

    .line 1135
    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e5

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    if-ne v8, p4, :cond_e9

    .line 1136
    :cond_e5
    const/16 v8, 0x87

    goto/16 :goto_45

    .line 1138
    :cond_e9
    const/16 v8, 0x88

    goto/16 :goto_45

    .line 1107
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_ed
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    .line 1143
    .end local v1    # "checkIfApplicationHasSystemUID":Z
    .end local v5    # "profileForPackage":Ljava/lang/String;
    .end local v6    # "regularPackageName":Ljava/lang/String;
    .end local v7    # "transformedPackageName":Ljava/lang/String;
    :cond_f1
    const/4 v8, 0x0

    goto/16 :goto_45
.end method

.method private declared-synchronized validateProfilesForVendor(Ljava/lang/String;Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;)V
    .registers 14
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;
    .param p2, "vpnInterface"    # Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    .prologue
    .line 3457
    monitor-enter p0

    :try_start_1
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_28

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor - vendorNameWithCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vpnInterface = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_a3

    .line 3459
    :cond_28
    :try_start_28
    iget-object v6, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "vendorName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3461
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 3462
    .local v5, "profileName":Ljava/lang/String;
    if-eqz v1, :cond_a1

    if-eqz p2, :cond_a1

    .line 3463
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 3464
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "profileName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3465
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_79

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_79
    invoke-interface {p2, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3467
    .local v4, "jsonProfile":Ljava/lang/String;
    if-nez v4, :cond_49

    .line 3468
    invoke-direct {p0, v5}, removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_82} :catch_83
    .catchall {:try_start_28 .. :try_end_82} :catchall_a3

    goto :goto_49

    .line 3472
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonProfile":Ljava/lang/String;
    .end local v5    # "profileName":Ljava/lang/String;
    :catch_83
    move-exception v2

    .line 3473
    .local v2, "e":Ljava/lang/Exception;
    :try_start_84
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateProfilesForVendor : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_a3

    .line 3475
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a1
    monitor-exit p0

    return-void

    .line 3457
    :catchall_a3
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized writeAddAllPackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_1
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_28

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeAddAllPackageToDB:profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_28
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1193
    .local v0, "adminId":I
    iget v1, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_af

    .line 1194
    .local v1, "containerId":I
    const/4 v5, -0x1

    .line 1196
    .local v5, "retvalue":I
    :try_start_2d
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 1197
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1198
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string/jumbo v8, "profileName"

    invoke-virtual {v2, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v8, "packageUid"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1201
    const-string/jumbo v8, "packageCid"

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    iget-object v8, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v9, "VpnPackageInfo"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    .line 1205
    .local v7, "status":Z
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeAddAllPackageToDB: status value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_7e} :catch_8c
    .catchall {:try_start_2d .. :try_end_7e} :catchall_af

    .line 1206
    if-nez v7, :cond_83

    move v6, v5

    .line 1218
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "retvalue":I
    .end local v7    # "status":Z
    .local v6, "retvalue":I
    :goto_81
    monitor-exit p0

    return v6

    .line 1209
    .end local v6    # "retvalue":I
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "retvalue":I
    .restart local v7    # "status":Z
    :cond_83
    if-eqz v4, :cond_89

    .line 1210
    const/4 v8, -0x2

    :try_start_86
    invoke-virtual {v4, p2, v8, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8c
    .catchall {:try_start_86 .. :try_end_89} :catchall_af

    .line 1217
    :cond_89
    const/4 v5, 0x0

    move v6, v5

    .line 1218
    .end local v5    # "retvalue":I
    .restart local v6    # "retvalue":I
    goto :goto_81

    .line 1213
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "retvalue":I
    .end local v7    # "status":Z
    .restart local v5    # "retvalue":I
    :catch_8c
    move-exception v3

    .line 1214
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8d
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_ad

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at writeAddAllPackageToDB API"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8d .. :try_end_ad} :catchall_af

    :cond_ad
    move v6, v5

    .line 1215
    .end local v5    # "retvalue":I
    .restart local v6    # "retvalue":I
    goto :goto_81

    .line 1191
    .end local v0    # "adminId":I
    .end local v1    # "containerId":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "retvalue":I
    :catchall_af
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_1
    iget v2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1148
    .local v2, "containerId":I
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_38

    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write package DB : profileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :packageName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :containerId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_fc

    .line 1149
    :cond_38
    const/4 v6, 0x0

    .line 1152
    .local v6, "retvalue":I
    :try_start_39
    iget-object v10, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    .line 1153
    .local v9, "transformedUid":I
    iget-object v10, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1155
    .local v8, "transformedPackageName":Ljava/lang/String;
    iget-object v10, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 1156
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_6e

    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write package DB : Transformed UID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_6e
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_8b

    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write package DB : Transformed packagename before adding to db : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_8b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1160
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "packageName"

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string/jumbo v10, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string/jumbo v10, "packageUid"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string/jumbo v10, "packageCid"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    iget-object v10, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v11, "VpnPackageInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_bd} :catch_dc
    .catchall {:try_start_39 .. :try_end_bd} :catchall_fc

    move-result v1

    .line 1167
    .local v1, "addPackageInfo":Z
    if-nez v1, :cond_c5

    .line 1168
    const/16 v6, 0x7e

    move v7, v6

    .line 1186
    .end local v1    # "addPackageInfo":Z
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "retvalue":I
    .end local v8    # "transformedPackageName":Ljava/lang/String;
    .end local v9    # "transformedUid":I
    .local v7, "retvalue":I
    :goto_c3
    monitor-exit p0

    return v7

    .line 1173
    .end local v7    # "retvalue":I
    .restart local v1    # "addPackageInfo":Z
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "retvalue":I
    .restart local v8    # "transformedPackageName":Ljava/lang/String;
    .restart local v9    # "transformedUid":I
    :cond_c5
    if-eqz v5, :cond_ca

    .line 1174
    :try_start_c7
    invoke-virtual {v5, v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->addPackageEntry(Ljava/lang/String;II)V

    .line 1177
    :cond_ca
    const/4 v10, -0x1

    if-eq v9, v10, :cond_d3

    .line 1179
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v8}, startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1181
    :cond_d3
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_da

    invoke-direct {p0}, printProfileVpnMap()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_da} :catch_dc
    .catchall {:try_start_c7 .. :try_end_da} :catchall_fc

    .end local v1    # "addPackageInfo":Z
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v8    # "transformedPackageName":Ljava/lang/String;
    .end local v9    # "transformedUid":I
    :cond_da
    :goto_da
    move v7, v6

    .line 1186
    .end local v6    # "retvalue":I
    .restart local v7    # "retvalue":I
    goto :goto_c3

    .line 1182
    .end local v7    # "retvalue":I
    .restart local v6    # "retvalue":I
    :catch_dc
    move-exception v4

    .line 1183
    .local v4, "e":Ljava/lang/Exception;
    :try_start_dd
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write package DB : Exception occured for adding vpn, package map."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_dd .. :try_end_fa} :catchall_fc

    .line 1184
    const/4 v6, -0x1

    goto :goto_da

    .line 1147
    .end local v2    # "containerId":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "retvalue":I
    :catchall_fc
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public declared-synchronized activateVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 27
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    monitor-enter p0

    :try_start_1
    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "knox vpn profile activation is going to take place: profileName value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v11, 0x0

    .line 627
    .local v11, "insertActivateInfoInDb":Z
    const/16 v18, -0x1

    .local v18, "uid":I
    const/4 v5, -0x1

    .line 629
    .local v5, "cid":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 630
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 631
    const/16 v20, 0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_a0

    .line 635
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I

    move-result v4

    .line 636
    .local v4, "activateVpnProfileValidation":I
    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v4, v0, :cond_70

    .line 639
    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error occured while activating the vpn profile: The error code is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6e} :catch_82
    .catchall {:try_start_3c .. :try_end_6e} :catchall_a0

    .line 736
    .end local v4    # "activateVpnProfileValidation":I
    :cond_6e
    :goto_6e
    monitor-exit p0

    return-object v15

    .line 643
    .restart local v4    # "activateVpnProfileValidation":I
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v19

    .line 644
    .local v19, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v19, :cond_a3

    .line 647
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Error occured while activating the vpn profile: The error code is 110"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_81} :catch_82
    .catchall {:try_start_70 .. :try_end_81} :catchall_a0

    goto :goto_6e

    .line 733
    .end local v4    # "activateVpnProfileValidation":I
    .end local v19    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_82
    move-exception v7

    .line 734
    .local v7, "e":Ljava/lang/Exception;
    :try_start_83
    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error occured while activating the vpn profile: exception occured: The error code is -1"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_a0

    goto :goto_6e

    .line 625
    .end local v5    # "cid":I
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "insertActivateInfoInDb":Z
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v18    # "uid":I
    :catchall_a0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 651
    .restart local v4    # "activateVpnProfileValidation":I
    .restart local v5    # "cid":I
    .restart local v11    # "insertActivateInfoInDb":Z
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v18    # "uid":I
    .restart local v19    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_a3
    if-eqz p3, :cond_d8

    const/4 v9, 0x1

    .line 652
    .local v9, "iNewActivateState":I
    :goto_a6
    :try_start_a6
    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current profile activation state is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    .line 656
    .local v14, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v14, :cond_da

    .line 657
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Error occured while activating the vpn profile: The error code is 108"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 651
    .end local v9    # "iNewActivateState":I
    .end local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_d8
    const/4 v9, 0x0

    goto :goto_a6

    .line 661
    .restart local v9    # "iNewActivateState":I
    .restart local v14    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_da
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_1c2

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, setActivate(Ljava/lang/String;I)Z

    move-result v11

    .line 664
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_106

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "activateVpnProfile: insertActivateInfoInDb value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_106
    if-nez v11, :cond_111

    .line 668
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Error occured while activating the vpn profile: The error code is 126"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 672
    :cond_111
    const/4 v10, 0x0

    .line 673
    .local v10, "index":I
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_11a
    :goto_11a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 674
    .local v12, "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 675
    .local v13, "packageName":Ljava/lang/String;
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_148

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "activateVpnProfile: packageName value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_148
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 678
    .local v16, "startVpn":I
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_170

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "activateVpnProfile: startVpn value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_170
    const/16 v20, 0x12f

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_184

    .line 680
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_11a

    const-string v20, "KnoxVpnEngineService"

    const-string v21, "activateVpnProfile: startVpn value is 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 683
    :cond_184
    if-nez v10, :cond_1a6

    if-eqz v16, :cond_1a6

    .line 686
    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error occured while activating the vpn profile: The error code is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 689
    :cond_1a6
    add-int/lit8 v10, v10, 0x1

    .line 690
    goto/16 :goto_11a

    .line 691
    .end local v12    # "packageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "startVpn":I
    :cond_1aa
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 692
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_6e

    .line 694
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "index":I
    :cond_1c2
    if-nez v9, :cond_6e

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, setActivate(Ljava/lang/String;I)Z

    move-result v11

    .line 697
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_1ea

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deactivateVpnProfile: insertActivateInfoInDb value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_1ea
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, removeAllUidByTAG(Ljava/lang/String;)V

    .line 704
    if-nez v11, :cond_1fc

    .line 707
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Error occured while deactivating the vpn profile: The error code is 126"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 711
    :cond_1fc
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v6

    .line 712
    .local v6, "currentStateOfProfile":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_210

    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v6, v0, :cond_26d

    .line 713
    :cond_210
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v17

    .line 714
    .local v17, "stopStatus":I
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_238

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deactivateVpnProfile: stopStatus value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_238
    if-eqz v17, :cond_262

    .line 716
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v17

    .line 717
    sget-boolean v20, DBG:Z

    if-eqz v20, :cond_262

    const-string v20, "KnoxVpnEngineService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deactivateVpnProfile: stopStatus for lockup case value is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_262
    if-eqz v17, :cond_26d

    .line 722
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Error occured while deactivating the vpn profile: The error code is 102"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 727
    .end local v17    # "stopStatus":I
    :cond_26d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, removePackagesFromIpTables(Ljava/lang/String;)V

    .line 729
    const-string v20, "KnoxVpnEngineService"

    const-string v21, "Activating the vpn profile is a success: The error code is 0"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 731
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_291} :catch_82
    .catchall {:try_start_a6 .. :try_end_291} :catchall_a0

    goto/16 :goto_6e
.end method

.method public addAllContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 1717
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAllContainerPackagesToVpn : containerId value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " profileName value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1720
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1721
    invoke-virtual {v1, v2, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1723
    iget-object v4, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I

    move-result v0

    .line 1724
    .local v0, "addAllContainerPackagesToVpnValidation":I
    const/16 v4, 0x64

    if-eq v0, v4, :cond_5f

    .line 1727
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAllContainerPackagesToVpn failed: The error code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v4, 0x71

    if-ne v0, v4, :cond_5e

    .line 1729
    const/16 v4, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1743
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_5e
    :goto_5e
    return-object v1

    .line 1733
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_5f
    invoke-virtual {p0, p3}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 1734
    .local v3, "vpnConnectionType":I
    if-ne v3, v2, :cond_6f

    .line 1735
    .local v2, "onDemand":Z
    :goto_65
    if-eqz v2, :cond_71

    .line 1738
    const-string v4, "KnoxVpnEngineService"

    const-string v5, "addAllContainerPackagesToVpn failed: The error code is 702"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1734
    .end local v2    # "onDemand":Z
    :cond_6f
    const/4 v2, 0x0

    goto :goto_65

    .line 1742
    .restart local v2    # "onDemand":Z
    :cond_71
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1743
    invoke-virtual {p0, p1, p3}, addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_5e
.end method

.method public declared-synchronized addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 1427
    monitor-enter p0

    :try_start_2
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackages : vpnContext.personaId value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " profileName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1430
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1431
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_95

    .line 1436
    :try_start_38
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v3

    .line 1437
    .local v3, "isChainingEnabled":I
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_5c

    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackages : isChainingEnabled value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_5c
    if-nez v3, :cond_67

    .line 1441
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "Error while adding all the packages to vpn: The error code is 501"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_65} :catch_77
    .catchall {:try_start_38 .. :try_end_65} :catchall_95

    .line 1517
    .end local v3    # "isChainingEnabled":I
    :goto_65
    monitor-exit p0

    return-object v1

    .line 1447
    .restart local v3    # "isChainingEnabled":I
    :cond_67
    :try_start_67
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 1448
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_98

    .line 1449
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "Error while adding all the packages to vpn: The error code is -1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_76} :catch_77
    .catchall {:try_start_67 .. :try_end_76} :catchall_95

    goto :goto_65

    .line 1514
    .end local v3    # "isChainingEnabled":I
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_77
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_78
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while adding all the packages to vpn: exception occured: The error code is -1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_78 .. :try_end_94} :catchall_95

    goto :goto_65

    .line 1427
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_95
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1453
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v3    # "isChainingEnabled":I
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_98
    :try_start_98
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v4

    .line 1454
    .local v4, "packageAlreadyExists":Z
    if-eqz v4, :cond_b4

    .line 1455
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p2, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 1458
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "Error while adding all the packages to vpn: The error code is 123"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1463
    :cond_b4
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, writeAddAllPackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1465
    .local v6, "updateDb":I
    if-ne v6, v10, :cond_cc

    .line 1468
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "Error while adding all the packages to vpn: The error code is 126"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1476
    :cond_cc
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-direct {p0, p2, v7}, addContainerToExceptionList(Ljava/lang/String;I)V

    .line 1480
    invoke-direct {p0, p2}, refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1482
    invoke-direct {p0, p2}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_176

    .line 1503
    const-string v7, "KnoxVpnEngineService"

    const-string v8, "addAllPackages : VPN State not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_e2
    :goto_e2
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v8, 0x1

    invoke-direct {p0, p2, v7, v8}, updateNotification(Ljava/lang/String;IZ)V

    .line 1510
    const-string v7, "KnoxVpnEngineService"

    const-string/jumbo v8, "success while adding all the packages to vpn: The error code is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1512
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_65

    .line 1484
    :pswitch_ff
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "interfaceValue":Ljava/lang/String;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackages : profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "interfaceValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    if-eqz v2, :cond_e2

    .line 1487
    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 1488
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v9

    invoke-virtual {v7, v8, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 1489
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-direct {p0, p2, v7, v8, v2}, setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_e2

    .line 1494
    .end local v2    # "interfaceValue":Ljava/lang/String;
    :pswitch_13d
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 1495
    invoke-direct {p0, p2}, startVpnProfile(Ljava/lang/String;)I

    .line 1496
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllPackages : start connection called. profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e2

    .line 1500
    :pswitch_167
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    sget-object v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_174} :catch_77
    .catchall {:try_start_98 .. :try_end_174} :catchall_95

    goto/16 :goto_e2

    .line 1482
    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_167
        :pswitch_167
        :pswitch_ff
        :pswitch_13d
    .end packed-switch
.end method

.method public addAllPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 1748
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAllPackagesToVpn : vpnContext.personaId value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " profileName value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1751
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1752
    invoke-virtual {v1, v2, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1754
    iget-object v4, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I

    move-result v0

    .line 1755
    .local v0, "addAllPackagesToVpnValidation":I
    const/16 v4, 0x64

    if-eq v0, v4, :cond_58

    .line 1758
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding all the packages to vpn failed: The error code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_57
    return-object v1

    .line 1763
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_58
    invoke-virtual {p0, p2}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 1764
    .local v3, "vpnConnectionType":I
    if-ne v3, v2, :cond_68

    .line 1765
    .local v2, "onDemand":Z
    :goto_5e
    if-eqz v2, :cond_6a

    .line 1768
    const-string v4, "KnoxVpnEngineService"

    const-string v5, "Adding all the packages to vpn failed: The error code is 702"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1764
    .end local v2    # "onDemand":Z
    :cond_68
    const/4 v2, 0x0

    goto :goto_5e

    .line 1772
    .restart local v2    # "onDemand":Z
    :cond_6a
    invoke-virtual {p0, p1, p2}, addAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_57
.end method

.method public declared-synchronized addContainerPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    monitor-enter p0

    :try_start_1
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainerPackagesToVpn : containerId value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profileName value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1593
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1594
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1596
    iget-object v2, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1597
    .local v0, "addContainerPackagesToVpnValidation":I
    const/16 v2, 0x64

    if-eq v0, v2, :cond_63

    .line 1600
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while adding container packages to vpn: The error code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/16 v2, 0x71

    if-ne v0, v2, :cond_61

    .line 1602
    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_6a

    .line 1607
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_61
    :goto_61
    monitor-exit p0

    return-object v1

    .line 1606
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_63
    :try_start_63
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1607
    invoke-virtual {p0, p1, p3, p4}, addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_6a

    move-result-object v1

    goto :goto_61

    .line 1590
    .end local v0    # "addContainerPackagesToVpnValidation":I
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 25
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v8, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1039
    .local v8, "adminId":I
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addPackages : profileName value is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "personaId value is"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_ADDED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_ADDED":I
    const/4 v5, 0x2

    .line 1042
    .local v5, "NO_PACKAGES_ADDED":I
    new-instance v15, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v15}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1043
    .local v15, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1044
    const/16 v18, 0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_ca

    .line 1048
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1049
    .local v7, "addPackagesToVpnValidation":I
    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v7, v0, :cond_84

    .line 1052
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while adding packages to vpn: The error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_82} :catch_96
    .catchall {:try_start_50 .. :try_end_82} :catchall_ca

    .line 1100
    .end local v7    # "addPackagesToVpnValidation":I
    :goto_82
    monitor-exit p0

    return-object v15

    .line 1056
    .restart local v7    # "addPackagesToVpnValidation":I
    :cond_84
    :try_start_84
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v16

    .line 1057
    .local v16, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v16, :cond_cd

    .line 1060
    const-string v18, "KnoxVpnEngineService"

    const-string v19, "Error occured while adding packages to vpn: The error code is 110"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_95} :catch_96
    .catchall {:try_start_84 .. :try_end_95} :catchall_ca

    goto :goto_82

    .line 1089
    .end local v7    # "addPackagesToVpnValidation":I
    .end local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_96
    move-exception v10

    .line 1090
    .local v10, "e":Ljava/lang/Exception;
    :try_start_97
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while adding packages to vpn: exception occured: The error code is -1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1092
    const/16 v18, 0x1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c9
    .catchall {:try_start_97 .. :try_end_c9} :catchall_ca

    goto :goto_82

    .line 1038
    .end local v4    # "ALL_PACKAGES_ADDED":I
    .end local v5    # "NO_PACKAGES_ADDED":I
    .end local v6    # "PARTIAL_PACKAGES_ADDED":I
    .end local v8    # "adminId":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_ca
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1064
    .restart local v4    # "ALL_PACKAGES_ADDED":I
    .restart local v5    # "NO_PACKAGES_ADDED":I
    .restart local v6    # "PARTIAL_PACKAGES_ADDED":I
    .restart local v7    # "addPackagesToVpnValidation":I
    .restart local v8    # "adminId":I
    .restart local v15    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v16    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_cd
    :try_start_cd
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v8}, validatePackageList(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v13

    .line 1065
    .local v13, "packageListValidation":I
    if-eqz v13, :cond_fc

    .line 1068
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while adding packages to vpn: The error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 1073
    :cond_fc
    move-object/from16 v9, p2

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_100
    if-ge v11, v12, :cond_142

    aget-object v14, v9, v11

    .line 1074
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v14, v2}, writePackageToDB(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 1075
    .local v17, "writePackageResult":I
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13f

    .line 1078
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while adding packages to vpn: The error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    goto/16 :goto_82

    .line 1073
    :cond_13f
    add-int/lit8 v11, v11, 0x1

    goto :goto_100

    .line 1085
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "writePackageResult":I
    :cond_142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, updateNotification(Ljava/lang/String;IZ)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_15c} :catch_96
    .catchall {:try_start_cd .. :try_end_15c} :catchall_ca

    .line 1096
    :try_start_15c
    const-string v18, "KnoxVpnEngineService"

    const-string v19, "Error occured while adding packages to vpn: The error code is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1098
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_179
    .catchall {:try_start_15c .. :try_end_179} :catchall_ca

    goto/16 :goto_82
.end method

.method protected declared-synchronized addPackagesToIpTables(Ljava/lang/String;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3503
    monitor-enter p0

    :try_start_1
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addPackagesToIpTables : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 3505
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v6, -0x1

    .local v6, "uid":I
    const/4 v1, -0x1

    .line 3506
    .local v1, "cid":I
    if-eqz v5, :cond_29

    .line 3507
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_6c

    move-result v0

    .line 3508
    .local v0, "activateState":I
    if-nez v0, :cond_2b

    .line 3533
    .end local v0    # "activateState":I
    :cond_29
    monitor-exit p0

    return-void

    .line 3511
    .restart local v0    # "activateState":I
    :cond_2b
    :try_start_2b
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3512
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3513
    .local v3, "interfaceName":Ljava/lang/String;
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 3514
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v1

    .line 3515
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v8

    invoke-virtual {v7, v1, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 3516
    if-eqz v3, :cond_6f

    .line 3517
    invoke-direct {p0, v1}, startUid(I)I

    move-result v7

    invoke-direct {p0, v1}, stopUid(I)I

    move-result v8

    invoke-direct {p0, p1, v7, v8, v3}, setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_2b .. :try_end_6b} :catchall_6c

    goto :goto_33

    .line 3503
    .end local v0    # "activateState":I
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "uid":I
    :catchall_6c
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3519
    .restart local v0    # "activateState":I
    .restart local v1    # "cid":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    .restart local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "uid":I
    :cond_6f
    :try_start_6f
    invoke-direct {p0, v1}, startUid(I)I

    move-result v7

    invoke-direct {p0, v1}, stopUid(I)I

    move-result v8

    invoke-direct {p0, p1, v7, v8}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    goto :goto_33

    .line 3523
    :cond_7b
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3524
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v8

    invoke-virtual {v7, v6, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 3525
    if-eqz v3, :cond_8e

    .line 3526
    invoke-direct {p0, p1, v6, v6, v3}, setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_33

    .line 3528
    :cond_8e
    invoke-direct {p0, p1, v6, v6}, unsetDnsSystemProperty(Ljava/lang/String;II)V
    :try_end_91
    .catchall {:try_start_6f .. :try_end_91} :catchall_6c

    goto :goto_33
.end method

.method public declared-synchronized addPackagesToVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 5
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, addPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bindKnoxVpnInterface(Ljava/lang/String;)Z
    .registers 19
    .param p1, "vendorNameWithCid"    # Ljava/lang/String;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bind to Vpn Vendor Service : vendorName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct/range {p0 .. p1}, getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    if-eqz v14, :cond_2e

    .line 248
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "Sending bind success intent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct/range {p0 .. p1}, sendBindSuccessIntent(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_da

    .line 250
    const/4 v2, 0x1

    .line 286
    :goto_2c
    monitor-exit p0

    return v2

    .line 252
    :cond_2e
    :try_start_2e
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "vendorName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "containerId":I
    const-string v14, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 256
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, blockProxyService(Ljava/lang/String;I)Z

    .line 261
    :cond_4b
    const/4 v2, 0x0

    .line 262
    .local v2, "bindSuccess":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".BIND_SERVICE"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "vendorAction":Ljava/lang/String;
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bind to Vpn Vendor Service : vendorAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " container ID : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 265
    .local v13, "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8b
    .catchall {:try_start_2e .. :try_end_8b} :catchall_da

    move-result-wide v8

    .line 267
    .local v8, "token":J
    :try_start_8c
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 269
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v6, v5, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 270
    .local v12, "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_dd

    .line 271
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_a8
    :goto_a8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 272
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 273
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_d4
    .catchall {:try_start_8c .. :try_end_d4} :catchall_d5

    goto :goto_a8

    .line 283
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_d5
    move-exception v14

    :try_start_d6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    .line 245
    .end local v2    # "bindSuccess":Z
    .end local v3    # "containerId":I
    .end local v8    # "token":J
    .end local v10    # "vendorAction":Ljava/lang/String;
    .end local v11    # "vendorName":Ljava/lang/String;
    .end local v13    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :catchall_da
    move-exception v14

    monitor-exit p0

    throw v14

    .line 280
    .restart local v2    # "bindSuccess":Z
    .restart local v3    # "containerId":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "token":J
    .restart local v10    # "vendorAction":Ljava/lang/String;
    .restart local v11    # "vendorName":Ljava/lang/String;
    .restart local v12    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "vpnConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
    :cond_dd
    :try_start_dd
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v13, v15, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_f1
    .catchall {:try_start_dd .. :try_end_f1} :catchall_d5

    move-result v2

    .line 283
    :try_start_f2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bind to Vpn Vendor Service : bindSuccess = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f2 .. :try_end_10d} :catchall_da

    goto/16 :goto_2c
.end method

.method public checkChainingStatus(Ljava/lang/String;)I
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4218
    const/4 v0, 0x0

    .line 4220
    .local v0, "chaining_status":I
    :try_start_1
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 4221
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_72

    .line 4222
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    .line 4223
    .local v5, "vendorName":Ljava/lang/String;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: vendorName value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4225
    .local v3, "profile_added_vendor_name":Ljava/lang/String;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: profile_added_vendor_name value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    if-eqz v3, :cond_72

    .line 4227
    invoke-virtual {p0, v3}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v6

    .line 4228
    .local v6, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v6, :cond_72

    .line 4229
    invoke-interface {v6, v3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v4

    .line 4230
    .local v4, "state":I
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: state value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    const/4 v7, 0x4

    if-eq v4, v7, :cond_6e

    sget-boolean v7, mIgnoreConnectCheckForChaining:Z

    if-eqz v7, :cond_72

    .line 4232
    :cond_6e
    const/4 v0, 0x1

    .line 4233
    const/4 v7, 0x0

    sput-boolean v7, mIgnoreConnectCheckForChaining:Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_72} :catch_8b

    .line 4241
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "profile_added_vendor_name":Ljava/lang/String;
    .end local v4    # "state":I
    .end local v5    # "vendorName":Ljava/lang/String;
    .end local v6    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_72
    :goto_72
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChainingStatus: chaining_status value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    return v0

    .line 4238
    :catch_8b
    move-exception v1

    .line 4239
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkChainingStatus API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerUserId"    # I

    .prologue
    .line 1998
    const/4 v2, 0x0

    .line 2000
    .local v2, "profilecreatedByKnoxVendor":Z
    :try_start_1
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_21

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile: profile name and the vendor uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_21
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 2002
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_63

    .line 2003
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, "vendorName":Ljava/lang/String;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_4f

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The vendor name who created the profile is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_4f
    iget-object v4, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p3, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    if-ne v4, p2, :cond_63

    .line 2006
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_62

    const-string v4, "KnoxVpnEngineService"

    const-string v5, "The vendor name who created the profile and the caller has the same uid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_80

    .line 2007
    :cond_62
    const/4 v2, 0x1

    .line 2013
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "vendorName":Ljava/lang/String;
    :cond_63
    :goto_63
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_7f

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile: profilecreatedByKnoxVendor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_7f
    return v2

    .line 2010
    :catch_80
    move-exception v0

    .line 2011
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_63

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfVendorCreatedKnoxProfile Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public declared-synchronized createVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 22
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 421
    .local v11, "vendorName":Ljava/lang/String;
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createVpnProfile: vendorName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : personaId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v10, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v10}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 424
    .local v10, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 425
    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I

    move-result v2

    .line 428
    .local v2, "createVpnProfileValidation":I
    const/16 v14, 0x64

    if-eq v2, v14, :cond_69

    .line 431
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "knox vpn profile creation failed: The error code is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_84

    .line 506
    :goto_67
    monitor-exit p0

    return-object v10

    .line 437
    :cond_69
    :try_start_69
    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-static {v11, v14}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 438
    .local v12, "vendorNameWithCid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v13

    .line 439
    .local v13, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v13, :cond_87

    .line 442
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed: The error code is 110"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_80} :catch_18f
    .catchall {:try_start_69 .. :try_end_80} :catchall_1b1

    .line 504
    :try_start_80
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_67

    .line 420
    .end local v2    # "createVpnProfileValidation":I
    .end local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v11    # "vendorName":Ljava/lang/String;
    .end local v12    # "vendorNameWithCid":Ljava/lang/String;
    .end local v13    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_84
    move-exception v14

    monitor-exit p0

    throw v14

    .line 446
    .restart local v2    # "createVpnProfileValidation":I
    .restart local v10    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v11    # "vendorName":Ljava/lang/String;
    .restart local v12    # "vendorNameWithCid":Ljava/lang/String;
    .restart local v13    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_87
    :try_start_87
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, syncVpnProfile(Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->createConnection(Ljava/lang/String;)I

    move-result v6

    .line 451
    .local v6, "profileCreated":I
    if-eqz v6, :cond_a9

    .line 454
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed: The error code is 102"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a5} :catch_18f
    .catchall {:try_start_87 .. :try_end_a5} :catchall_1b1

    .line 504
    :try_start_a5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_84

    goto :goto_67

    .line 458
    :cond_a9
    const/4 v4, 0x0

    .line 459
    .local v4, "insertProfileInDb":Z
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToDatabase(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v4

    .line 460
    if-nez v4, :cond_ef

    .line 461
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_c3

    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed : failure to add the entry to db"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_c3
    invoke-interface {v13, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v9

    .line 463
    .local v9, "removeStatus":I
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_e3

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "knox vpn profile creation failed : removeStatus value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_e3
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed: The error code is 126"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ea} :catch_18f
    .catchall {:try_start_aa .. :try_end_ea} :catchall_1b1

    .line 504
    :try_start_ea
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_84

    goto/16 :goto_67

    .line 471
    .end local v9    # "removeStatus":I
    :cond_ef
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addVpnProfileToMap(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Z

    move-result v5

    .line 472
    .local v5, "insertProfileInLocalEntry":Z
    if-nez v5, :cond_15e

    .line 473
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_108

    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed : failure to add the entry to local entry"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_108
    invoke-interface {v13, v7}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v9

    .line 475
    .restart local v9    # "removeStatus":I
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_128

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "knox vpn profile creation failed : removeStatus value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_128
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, removeAllUidByTAG(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v15, "VpnProfileInfo"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "profileName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    .line 486
    .local v8, "removeProfileStatus":Z
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "knox vpn profile creation failed: The error code is 127"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_159} :catch_18f
    .catchall {:try_start_ef .. :try_end_159} :catchall_1b1

    .line 504
    :try_start_159
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_84

    goto/16 :goto_67

    .line 491
    .end local v8    # "removeProfileStatus":Z
    .end local v9    # "removeStatus":I
    :cond_15e
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addExemptRule(I)V

    .line 493
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "knox vpn profile creation success: The error code is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 495
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_18a} :catch_18f
    .catchall {:try_start_15e .. :try_end_18a} :catchall_1b1

    .line 504
    :try_start_18a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z
    :try_end_18d
    .catchall {:try_start_18a .. :try_end_18d} :catchall_84

    goto/16 :goto_67

    .line 497
    .end local v4    # "insertProfileInDb":Z
    .end local v5    # "insertProfileInLocalEntry":Z
    .end local v6    # "profileCreated":I
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v12    # "vendorNameWithCid":Ljava/lang/String;
    .end local v13    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_18f
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/Exception;
    :try_start_190
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "knox vpn profile creation failed: exception occured: The error code is -1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ac
    .catchall {:try_start_190 .. :try_end_1ac} :catchall_1b1

    .line 504
    :try_start_1ac
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    goto/16 :goto_67

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1b1
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    throw v14
    :try_end_1b6
    .catchall {:try_start_1ac .. :try_end_1b6} :catchall_84
.end method

.method public getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "vendorName"    # Ljava/lang/String;
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
    .line 2054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_77

    .line 2058
    :try_start_7
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 2059
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v7

    .line 2060
    .local v7, "vendorPkgName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 2061
    .local v0, "activateState":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5

    .line 2063
    .local v5, "persona_id":I
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    if-ne v0, v8, :cond_11

    .line 2065
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfVpnProfileTableIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2066
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v6

    .line 2067
    .local v6, "profileName":Ljava/lang/String;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "***** VIGNESH profileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_59} :catch_5a

    goto :goto_11

    .line 2073
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "persona_id":I
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "vendorPkgName":Ljava/lang/String;
    :catch_5a
    move-exception v2

    .line 2074
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_77
    return-object v1
.end method

.method public getAllContainerPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1638
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllContainerPackagesInVpnProfile : containerId value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " profileName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/4 v8, -0x1

    .local v8, "uid":I
    const/4 v0, -0x1

    .line 1641
    .local v0, "cid":I
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1642
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1643
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1644
    invoke-direct {p0}, getPersonaManager()Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    .line 1645
    .local v5, "isPersonaIdIsValid":Z
    if-nez v5, :cond_4a

    .line 1646
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v9, 0x1

    const/16 v10, 0xb

    invoke-virtual {v1, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1676
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_49
    :goto_49
    return-object v1

    .line 1651
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_4a
    iget-object v9, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1652
    .local v2, "getAllContainerPackagesInVpnProfileValidation":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 1656
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 1657
    .local v7, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v4, 0x0

    .line 1658
    .local v4, "isAddallExist":Z
    if-eqz v7, :cond_87

    .line 1659
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1660
    .local v6, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v0

    .line 1661
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_63

    if-ne p2, v0, :cond_63

    .line 1662
    const/4 v4, 0x1

    .line 1671
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_7e
    :goto_7e
    if-eqz v4, :cond_a0

    .line 1672
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1673
    invoke-direct {p0, p1, p3}, getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_49

    .line 1668
    :cond_87
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllContainerPackagesInVpnProfile: profile hashmap is  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1675
    :cond_a0
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1676
    invoke-direct {p0, p1, p3}, getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_49
.end method

.method public getAllPackagesInVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    const-string v9, "KnoxVpnEngineService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllPackagesInVpnProfile: profileName value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "vpnContext.personaId value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v8, -0x1

    .local v8, "uid":I
    const/4 v0, -0x1

    .line 1685
    .local v0, "cid":I
    const/4 v5, 0x0

    .line 1686
    .local v5, "listOfPackagesOwnedByProfile":[Ljava/lang/String;
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1687
    .local v1, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1688
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1690
    iget-object v9, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "getAllPackagesInVpnProfileValidation":Ljava/lang/String;
    if-nez v2, :cond_3f

    .line 1711
    .end local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :goto_3e
    return-object v1

    .line 1695
    .restart local v1    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<[Ljava/lang/String;>;"
    :cond_3f
    iget-object v9, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 1696
    .local v7, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    const/4 v4, 0x0

    .line 1697
    .local v4, "isAddallExist":Z
    if-nez v7, :cond_50

    .line 1698
    const-string v9, "KnoxVpnEngineService"

    const-string v10, "Error occured while getting all packages in vpn profile: The error code is 108"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1701
    :cond_50
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 1702
    .local v6, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v0

    .line 1703
    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_58

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    if-ne v9, v0, :cond_58

    .line 1704
    const/4 v4, 0x1

    .line 1708
    .end local v6    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_75
    if-eqz v4, :cond_7c

    .line 1709
    invoke-direct {p0, p1, p2}, getAllRangedPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_3e

    .line 1711
    :cond_7c
    invoke-direct {p0, p1, p2}, getAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v1

    goto :goto_3e
.end method

.method public declared-synchronized getAllVpnProfiles(Lcom/sec/enterprise/knox/KnoxVpnContext;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 20
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 741
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 742
    .local v1, "adminId":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 743
    .local v12, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 744
    .local v4, "personaId":I
    invoke-static {v12, v4}, Lcom/sec/enterprise/knox/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 745
    .local v13, "vendorNameWithCid":Ljava/lang/String;
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles: vendorNameWithCid value is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v8, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v8}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 748
    .local v8, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 749
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_f2

    .line 751
    const/4 v11, 0x0

    .line 752
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 757
    .local v9, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v14

    .line 758
    .local v14, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v14, :cond_4f

    .line 759
    const-string v15, "KnoxVpnEngineService"

    const-string v16, "getAllVpnProfiles: interface returned null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_d3
    .catchall {:try_start_3e .. :try_end_4d} :catchall_f2

    .line 791
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :goto_4d
    monitor-exit p0

    return-object v8

    .line 764
    .restart local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4f
    :try_start_4f
    invoke-interface {v14}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getAllConnections()Ljava/util/List;

    move-result-object v11

    .line 765
    if-eqz v11, :cond_f5

    .line 767
    if-nez v9, :cond_63

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_63

    .line 768
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v10

    .line 771
    .end local v10    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_63
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 772
    .local v5, "profile":Ljava/lang/String;
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles: profile value is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v15, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileNameFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 774
    .local v7, "profileName":Ljava/lang/String;
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles: profileName value is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p0

    iget-object v15, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v15, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v6

    .line 776
    .local v6, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v6, :cond_67

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v15

    if-eq v1, v15, :cond_c9

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_67

    :cond_c9
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v15

    if-ne v4, v15, :cond_67

    .line 779
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_d2} :catch_d3
    .catchall {:try_start_4f .. :try_end_d2} :catchall_f2

    goto :goto_67

    .line 788
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "profileName":Ljava/lang/String;
    .end local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_d3
    move-exception v2

    .line 789
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d4
    const-string v15, "KnoxVpnEngineService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getAllVpnProfiles exception result is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_d4 .. :try_end_f0} :catchall_f2

    goto/16 :goto_4d

    .line 741
    .end local v1    # "adminId":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaId":I
    .end local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "vendorName":Ljava/lang/String;
    .end local v13    # "vendorNameWithCid":Ljava/lang/String;
    :catchall_f2
    move-exception v15

    monitor-exit p0

    throw v15

    .line 785
    .restart local v1    # "adminId":I
    .restart local v4    # "personaId":I
    .restart local v8    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "vendorName":Ljava/lang/String;
    .restart local v13    # "vendorNameWithCid":Ljava/lang/String;
    .restart local v14    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_f5
    :try_start_f5
    invoke-virtual {v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 786
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_100} :catch_d3
    .catchall {:try_start_f5 .. :try_end_100} :catchall_f2

    goto/16 :goto_4d
.end method

.method protected declared-synchronized getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3862
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 3863
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v0, :cond_24

    .line 3864
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get binder for profile : Profile does not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2d

    .line 3865
    const/4 v2, 0x0

    .line 3870
    :goto_22
    monitor-exit p0

    return-object v2

    .line 3867
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v1

    .line 3868
    .local v1, "vendorNameWithCid":Ljava/lang/String;
    invoke-direct {p0, v1}, getVpnInterface(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    move-result-object v2

    .line 3870
    .local v2, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    goto :goto_22

    .line 3862
    .end local v0    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v1    # "vendorNameWithCid":Ljava/lang/String;
    .end local v2    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_2d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 876
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 877
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 878
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 879
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 881
    :try_start_10
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_17

    .line 896
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_16
    return-object v2

    .line 884
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_17
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 885
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_26

    .line 886
    const-string v5, "KnoxVpnEngineService"

    const-string v6, "getting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 887
    goto :goto_16

    .line 889
    :cond_26
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getCACertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 890
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_33

    goto :goto_16

    .line 892
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_33
    move-exception v1

    .line 893
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 894
    goto :goto_16
.end method

.method public getChainingEnabledForProfile(I)I
    .registers 11
    .param p1, "uidOfVendor"    # I

    .prologue
    const/4 v8, 0x1

    .line 4247
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_1d

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: uid value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :cond_1d
    const/4 v1, -0x1

    .line 4250
    .local v1, "chainingEnabled":I
    :try_start_1e
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 4251
    .local v4, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 4252
    .local v0, "activateState":I
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_58

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: uidOfVendor value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v5

    if-ne v5, p1, :cond_28

    if-ne v0, v8, :cond_28

    .line 4254
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_6b

    const-string v5, "KnoxVpnEngineService"

    const-string v6, "getChainingEnabledForProfile: vendorName is same"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    :cond_6b
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v5

    if-ne v5, v8, :cond_28

    .line 4256
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_7c

    const-string v5, "KnoxVpnEngineService"

    const-string v6, "getChainingEnabledForProfile:chaining enabled for profile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    :cond_7c
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_7f} :catch_9d

    move-result v1

    .line 4267
    .end local v0    # "activateState":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_80
    :goto_80
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_9c

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getChainingEnabledForProfile: chainingEnabled value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    :cond_9c
    return v1

    .line 4264
    :catch_9d
    move-exception v2

    .line 4265
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 4115
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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
    .line 4140
    sget-object v0, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getErrorString(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1012
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getErrorString API called for profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1015
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1016
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1017
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1020
    :try_start_28
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_2f

    .line 1034
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :goto_2e
    return-object v2

    .line 1023
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_2f
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 1024
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_5c

    .line 1025
    const-string v5, "KnoxVpnEngineService"

    const-string v6, "getting vpn error string : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_3d

    goto :goto_2e

    .line 1030
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_3d
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting vpn error string : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1032
    goto :goto_2e

    .line 1028
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_5c
    :try_start_5c
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getErrorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1029
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_3d

    goto :goto_2e
.end method

.method public getKnoxVpnProfileType(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2038
    const/4 v2, -0x1

    .line 2040
    .local v2, "profileType":I
    if-eqz p1, :cond_f

    .line 2041
    :try_start_3
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 2042
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_f

    .line 2043
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result v2

    .line 2049
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_f
    :goto_f
    return v2

    .line 2046
    :catch_10
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getNetID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1950
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetID : profileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interfaceName =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const/4 v1, 0x0

    .line 1953
    .local v1, "temp":Ljava/lang/String;
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    .line 1955
    .local v0, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v0, :cond_30

    iget-object v4, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    if-nez v4, :cond_31

    .line 1969
    :cond_30
    :goto_30
    return v3

    .line 1959
    :cond_31
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v2

    .line 1961
    .local v2, "uidpid":I
    iget-object v4, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getForwardMark(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1963
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_57

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetID : temp =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_57
    if-eqz v1, :cond_30

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1969
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_30
.end method

.method public getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "domain"    # Ljava/lang/String;
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
    .line 4144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4145
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4146
    .local v3, "key":Ljava/lang/String;
    sget-object v5, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4147
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 4148
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 4149
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 4147
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 4154
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_3d
    return-object v4
.end method

.method public getState(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 974
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 975
    .local v0, "adminId":I
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState API called for profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 977
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 978
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 980
    :try_start_2b
    invoke-direct {p0, p1, p2, v3}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v6

    if-eqz v6, :cond_32

    .line 1007
    :cond_31
    :goto_31
    return-object v3

    .line 983
    :cond_32
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 984
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_31

    .line 987
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v6

    if-nez v6, :cond_73

    .line 988
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "Profile in deactivate state : Returning 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 990
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_55

    goto :goto_31

    .line 1004
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_55
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 994
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_73
    :try_start_73
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 995
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_92

    .line 996
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting vpn state : Interface null for profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 999
    :cond_92
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "getState : Calling getState on vendor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1001
    .local v4, "state":Ljava/lang/Integer;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getState : getState returnValue. profileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1003
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_cb} :catch_55

    goto/16 :goto_31
.end method

.method public getUidPidEnabled(ILjava/lang/String;)I
    .registers 10
    .param p1, "callerUid"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1974
    const/4 v3, 0x0

    .line 1976
    .local v3, "uidPidSearchEnabled":I
    :try_start_1
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 1977
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_43

    .line 1978
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_33

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The packageName stored in database is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callerUid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v4

    if-ne v4, p1, :cond_43

    .line 1980
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    if-nez v4, :cond_60

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_88

    move-result v3

    .line 1992
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_43
    :goto_43
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_5f

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUidPidSearchEnabledForProfile: uidPidSearchEnabled value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_5f
    return v3

    .line 1982
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_60
    :try_start_60
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    .line 1983
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 1984
    .local v0, "activateState":I
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activated state of the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_86} :catch_88

    move-result v3

    goto :goto_43

    .line 1989
    .end local v0    # "activateState":I
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_88
    move-exception v1

    .line 1990
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public declared-synchronized getUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 826
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 827
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 828
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 829
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_54

    .line 831
    :try_start_12
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_28
    .catchall {:try_start_12 .. :try_end_15} :catchall_54

    move-result v5

    if-eqz v5, :cond_1a

    .line 845
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_18
    monitor-exit p0

    return-object v2

    .line 834
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1a
    :try_start_1a
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v3

    .line 835
    .local v3, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v3, :cond_47

    .line 836
    const-string v5, "KnoxVpnEngineService"

    const-string v6, "getting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_54

    goto :goto_18

    .line 841
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_28
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_54

    move-object v2, v4

    .line 843
    goto :goto_18

    .line 839
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_47
    :try_start_47
    invoke-interface {v3, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getUserCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 840
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_28
    .catchall {:try_start_47 .. :try_end_53} :catchall_54

    goto :goto_18

    .line 826
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3233
    const/4 v2, 0x0

    .line 3235
    .local v2, "vendorName":Ljava/lang/String;
    :try_start_1
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1d

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVendorNameForProfile: profile name  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_1d
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 3237
    .local v1, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_4b

    .line 3238
    iget-object v3, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3239
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4b

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVendorNameForProfile: vendorName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 3244
    .end local v1    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4b
    :goto_4b
    return-object v2

    .line 3241
    :catch_4c
    move-exception v0

    .line 3242
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at getVendorNameForProfile API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public getVpnConnectionType(Ljava/lang/String;)I
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 2019
    const/4 v0, -0x1

    .line 2022
    .local v0, "connectionType":I
    if-eqz p1, :cond_37

    .line 2023
    :try_start_3
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 2024
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_d

    move v1, v0

    .line 2033
    .end local v0    # "connectionType":I
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .local v1, "connectionType":I
    :goto_c
    return v1

    .line 2027
    .end local v1    # "connectionType":I
    .restart local v0    # "connectionType":I
    .restart local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_d
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v0

    .line 2028
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_37

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVpnConnectionType : profileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / connection type value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_39

    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_37
    :goto_37
    move v1, v0

    .line 2033
    .end local v0    # "connectionType":I
    .restart local v1    # "connectionType":I
    goto :goto_c

    .line 2030
    .end local v1    # "connectionType":I
    .restart local v0    # "connectionType":I
    :catch_39
    move-exception v2

    .line 2031
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public declared-synchronized getVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1862
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1863
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1864
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_6e

    .line 1866
    :try_start_15
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1867
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_4d

    .line 1868
    invoke-interface {v4, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getVpnModeOfOperation(Ljava/lang/String;)I

    move-result v3

    .line 1869
    .local v3, "ret":I
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1871
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4d} :catch_4f
    .catchall {:try_start_15 .. :try_end_4d} :catchall_6e

    .line 1877
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4d
    :goto_4d
    monitor-exit p0

    return-object v2

    .line 1873
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catch_4f
    move-exception v1

    .line 1874
    .local v1, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6e

    .line 1875
    const/4 v2, 0x0

    goto :goto_4d

    .line 1861
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_6e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    monitor-enter p0

    :try_start_1
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile info is going to be fetched for the proifle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 514
    .local v0, "adminId":I
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 515
    .local v4, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 516
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_67

    .line 520
    :try_start_2a
    iget-object v6, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "getVpnProfileValidation":Ljava/lang/String;
    if-nez v2, :cond_3b

    .line 522
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "getting vpn profile Info failed: Error occured while validating the profile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_49
    .catchall {:try_start_2a .. :try_end_39} :catchall_67

    .line 541
    .end local v2    # "getVpnProfileValidation":Ljava/lang/String;
    :goto_39
    monitor-exit p0

    return-object v4

    .line 526
    .restart local v2    # "getVpnProfileValidation":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v5

    .line 527
    .local v5, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v5, :cond_6a

    .line 528
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "getting vpn profile Info failed: Error occured due to invalid interface"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_48} :catch_49
    .catchall {:try_start_3b .. :try_end_48} :catchall_67

    goto :goto_39

    .line 538
    .end local v2    # "getVpnProfileValidation":Ljava/lang/String;
    .end local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_49
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4a
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVpnProfile exception result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_67

    goto :goto_39

    .line 511
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :catchall_67
    move-exception v6

    monitor-exit p0

    throw v6

    .line 532
    .restart local v0    # "adminId":I
    .restart local v2    # "getVpnProfileValidation":Ljava/lang/String;
    .restart local v4    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    .restart local v5    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_6a
    :try_start_6a
    invoke-interface {v5, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "jsonProfile":Ljava/lang/String;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_8a

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVpnProfile: jsonProfile value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_8a
    invoke-virtual {v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 536
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_92} :catch_49
    .catchall {:try_start_6a .. :try_end_92} :catchall_67

    goto :goto_39
.end method

.method public declared-synchronized handleActionPackageRemoved(Landroid/os/Bundle;)V
    .registers 18
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    .line 3279
    monitor-enter p0

    :try_start_1
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "handleActionPackageRemoved"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const-string/jumbo v11, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3281
    .local v10, "uid":I
    const-string/jumbo v11, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3282
    .local v7, "originalPackageName":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3283
    .local v1, "cid":I
    move-object/from16 v0, p0

    iget-object v11, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3285
    .local v8, "packageName":Ljava/lang/String;
    const-string v11, "new_install_or_update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3286
    .local v5, "extraReplacing":Z
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : replacing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, hasVpnInterface(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_124

    .line 3289
    if-eqz v5, :cond_63

    .line 3290
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "Package is being reinstalled. Skip remove profile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_195

    .line 3339
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    .line 3293
    :cond_63
    :try_start_63
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "handleActionPackageRemoved : packageName is Vpn Vendor"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_195

    .line 3295
    :try_start_6a
    const-string v11, "KnoxVpnEngineService"

    const-string v12, "handleActionPackageRemoved : Getting profile list for vendor from DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    move-object/from16 v0, p0

    iget-object v11, v0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v12, "VpnProfileInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "vendorName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3298
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 3299
    .local v9, "profileName":Ljava/lang/String;
    if-eqz v3, :cond_198

    .line 3300
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_198

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3301
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "profileName"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3302
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Remvoing profile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, removeProfileFromHashMapAndDB(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_c2} :catch_c3
    .catchall {:try_start_6a .. :try_end_c2} :catchall_195

    goto :goto_92

    .line 3307
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "profileName":Ljava/lang/String;
    :catch_c3
    move-exception v4

    .line 3308
    .local v4, "e":Ljava/lang/Exception;
    :try_start_c4
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleActionPackageRemoved : Failure at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_e0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_124

    .line 3312
    sget-object v11, cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_124

    .line 3313
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    sget-object v11, cisco_proxy_application:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, handleAnyConnectUninstall(Ljava/lang/String;I)Z

    .line 3319
    :cond_124
    move-object/from16 v0, p0

    iget-object v11, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3320
    .restart local v9    # "profileName":Ljava/lang/String;
    if-eqz v9, :cond_143

    .line 3322
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_143

    .line 3323
    const-string v11, "KnoxVpnEngineService"

    const-string/jumbo v12, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, removeFromHashMapByPackageName(Ljava/lang/String;)I

    .line 3328
    :cond_143
    sget-object v11, cisco_proxy_application:Ljava/lang/String;

    if-eqz v11, :cond_61

    .line 3329
    const-string v11, "KnoxVpnEngineService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "2. handleActionPackageRemoved : cisco_proxy_application value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, cisco_proxy_application:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_61

    .line 3331
    if-nez v5, :cond_61

    .line 3332
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, checkIfAnyConnectSupportsKnox(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_61

    .line 3333
    const-string v11, "com.cisco.anyconnect.vpn.android.avf"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, handleAnyConnectUninstall(Ljava/lang/String;I)Z
    :try_end_193
    .catchall {:try_start_c4 .. :try_end_193} :catchall_195

    goto/16 :goto_61

    .line 3279
    .end local v1    # "cid":I
    .end local v5    # "extraReplacing":Z
    .end local v7    # "originalPackageName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "profileName":Ljava/lang/String;
    .end local v10    # "uid":I
    :catchall_195
    move-exception v11

    monitor-exit p0

    throw v11

    .line 3306
    .restart local v1    # "cid":I
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v5    # "extraReplacing":Z
    .restart local v7    # "originalPackageName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "profileName":Ljava/lang/String;
    .restart local v10    # "uid":I
    :cond_198
    :try_start_198
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, removeProfileFromKeyStore(I)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19d} :catch_c3
    .catchall {:try_start_198 .. :try_end_19d} :catchall_195

    goto/16 :goto_e0
.end method

.method protected declared-synchronized initializeVpnDataAndVendors()V
    .registers 6

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "KnoxVpnEngineService"

    const-string v3, "initializeVpnDataAndVendors"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v1

    .line 404
    .local v1, "state":Z
    if-eqz v1, :cond_2f

    .line 405
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeVpnDataAndVendors : Have to wait until migration done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, setupIntentFilterForMigration()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_41

    .line 412
    :goto_2d
    monitor-exit p0

    return-void

    .line 409
    :cond_2f
    :try_start_2f
    const-string v2, "KnoxVpnEngineService"

    const-string v3, "init vendor : Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "map":Landroid/os/Bundle;
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_41

    goto :goto_2d

    .line 400
    .end local v0    # "map":Landroid/os/Bundle;
    .end local v1    # "state":Z
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isProxyOrAnyConnect(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "packageNameEntered"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 3248
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_27

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageName value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose container id is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_27
    const/4 v3, 0x0

    .line 3251
    .local v3, "packageInstalled":Z
    :try_start_28
    const-string v8, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 3252
    const/4 v3, 0x1

    move v4, v3

    .line 3274
    .end local v3    # "packageInstalled":Z
    .local v4, "packageInstalled":I
    :goto_32
    return v4

    .line 3255
    .end local v4    # "packageInstalled":I
    .restart local v3    # "packageInstalled":Z
    :cond_33
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3256
    .local v1, "i":Landroid/content/Intent;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3257
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 3258
    .local v6, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_ba

    .line 3259
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 3260
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_8a

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The packageNameEntered having the proxy cisco anyconnect intent is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "whose class name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :cond_8a
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3262
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    sput-object v8, cisco_proxy_application:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_9a} :catch_9d

    .line 3263
    const/4 v3, 0x1

    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9b
    move v4, v3

    .line 3267
    .restart local v4    # "packageInstalled":I
    goto :goto_32

    .line 3270
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInstalled":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_9d
    move-exception v0

    .line 3271
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at isProxyOrAnyConnect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ba
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_d6

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isProxyOrAnyConnect : packageInstalled value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    move v4, v3

    .line 3274
    .restart local v4    # "packageInstalled":I
    goto/16 :goto_32
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 217
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "[onAdminAdded]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 222
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "[onAdminRemoved]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 231
    const-string v0, "KnoxVpnEngineService"

    const-string v1, "[onPreAdminRemoval]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_23
    invoke-direct {p0, p1}, stopVpnConnectionAfterAdminRemoval(I)V

    .line 234
    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    .line 1776
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllContainerPackagesFromVpn : containerId value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " profileName value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1779
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1780
    invoke-virtual {v0, v1, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1782
    iget-object v4, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I

    move-result v2

    .line 1783
    .local v2, "removeAllContainerPackagesFromVpnValidation":I
    const/16 v4, 0x64

    if-eq v2, v4, :cond_61

    .line 1786
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removing all the container packages from vpn failed: The error code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/16 v4, 0x71

    if-ne v2, v4, :cond_60

    .line 1788
    const/16 v4, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1803
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_60
    :goto_60
    return-object v0

    .line 1793
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_61
    invoke-virtual {p0, p3}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 1794
    .local v3, "vpnConnectionType":I
    if-ne v3, v1, :cond_72

    .line 1795
    .local v1, "onDemand":Z
    :goto_67
    if-eqz v1, :cond_74

    .line 1798
    const-string v4, "KnoxVpnEngineService"

    const-string/jumbo v5, "removing all the container packages from vpn failed: The error code is 702"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1794
    .end local v1    # "onDemand":Z
    :cond_72
    const/4 v1, 0x0

    goto :goto_67

    .line 1802
    .restart local v1    # "onDemand":Z
    :cond_74
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1803
    invoke-virtual {p0, p1, p3}, removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    goto :goto_60
.end method

.method public declared-synchronized removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1522
    monitor-enter p0

    :try_start_1
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAllPackages : vpnContext.personaId value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " profileName value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1524
    .local v0, "cid":I
    const/4 v5, 0x0

    .line 1525
    .local v5, "removePackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1526
    .local v2, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1527
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_7a

    .line 1531
    :try_start_3b
    iget-object v10, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 1532
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_4c

    .line 1535
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error while removing all the packages from vpn: The error code is 130"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4a} :catch_5b
    .catchall {:try_start_3b .. :try_end_4a} :catchall_7a

    .line 1586
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_4a
    monitor-exit p0

    return-object v2

    .line 1540
    .restart local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_4c
    :try_start_4c
    invoke-direct {p0, p2, v0}, removeAddAllPackageInfofromDatabase(Ljava/lang/String;I)I

    move-result v6

    .line 1542
    .local v6, "result":I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_7d

    .line 1545
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error while removing all the packages from vpn: The error code is 126"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5a} :catch_5b
    .catchall {:try_start_4c .. :try_end_5a} :catchall_7a

    goto :goto_4a

    .line 1583
    .end local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "result":I
    :catch_5b
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAllPackages failed: exception occured: The error code is -1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_7a

    goto :goto_4a

    .line 1522
    .end local v0    # "cid":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v5    # "removePackage":Ljava/lang/String;
    :catchall_7a
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1548
    .restart local v0    # "cid":I
    .restart local v2    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v3    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "removePackage":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_7d
    :try_start_7d
    iget-object v10, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v10, v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1549
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removePackageEntry(Ljava/lang/String;)V

    .line 1550
    iget-object v10, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v12

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleNatRulesRange(ILjava/lang/String;I)V

    .line 1551
    invoke-direct {p0, v0}, startUid(I)I

    move-result v10

    invoke-direct {p0, v0}, stopUid(I)I

    move-result v11

    invoke-direct {p0, p2, v10, v11}, unsetDnsSystemProperty(Ljava/lang/String;II)V

    .line 1556
    invoke-direct {p0, p2, v0}, removeContainerFromExceptionList(Ljava/lang/String;I)V

    .line 1560
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 1561
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v9, :cond_b1

    .line 1562
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error while removing all the packages from vpn: The error code is110"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1565
    :cond_b1
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v4

    .line 1566
    .local v4, "profileState":I
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAllPackages : current state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v7

    .line 1568
    .local v7, "size":I
    invoke-virtual {p0, p2}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v8

    .line 1569
    .local v8, "vpnConnectionType":I
    if-gtz v7, :cond_f8

    .line 1570
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_f5

    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeAllPackages: The profile is going to be stopped since no packages are present "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_f5
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    .line 1576
    :cond_f8
    invoke-direct {p0, p2}, refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1577
    iget v10, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v11}, updateNotification(Ljava/lang/String;IZ)V

    .line 1579
    const-string v10, "KnoxVpnEngineService"

    const-string/jumbo v11, "removeAllPackages success: The error code is 0"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1581
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_116} :catch_5b
    .catchall {:try_start_7d .. :try_end_116} :catchall_7a

    goto/16 :goto_4a
.end method

.method public declared-synchronized removeAllPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1808
    monitor-enter p0

    :try_start_2
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_2c

    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllPackagesFromVpn: vpnContext.personaId value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "profileName value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2c
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1810
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1811
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1814
    iget-object v4, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I

    move-result v2

    .line 1815
    .local v2, "removeAllPackagesFromVpnValidation":I
    const/16 v4, 0x64

    if-eq v2, v4, :cond_63

    .line 1818
    const-string v4, "KnoxVpnEngineService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removing all the packages from vpn failed: The error code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_74

    .line 1832
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_61
    monitor-exit p0

    return-object v0

    .line 1823
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_63
    :try_start_63
    invoke-virtual {p0, p2}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 1824
    .local v3, "vpnConnectionType":I
    if-ne v3, v1, :cond_77

    .line 1825
    .local v1, "onDemand":Z
    :goto_69
    if-eqz v1, :cond_79

    .line 1828
    const-string v4, "KnoxVpnEngineService"

    const-string/jumbo v5, "removing all the packages from vpn failed: The error code is 702"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_74

    goto :goto_61

    .line 1808
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "onDemand":Z
    .end local v2    # "removeAllPackagesFromVpnValidation":I
    .end local v3    # "vpnConnectionType":I
    :catchall_74
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1824
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v2    # "removeAllPackagesFromVpnValidation":I
    .restart local v3    # "vpnConnectionType":I
    :cond_77
    const/4 v1, 0x0

    goto :goto_69

    .line 1832
    .restart local v1    # "onDemand":Z
    :cond_79
    :try_start_79
    invoke-virtual {p0, p1, p2}, removeAllPackages(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_74

    move-result-object v0

    goto :goto_61
.end method

.method public declared-synchronized removeContainerPackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1616
    monitor-enter p0

    :try_start_1
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeContainerPackagesFromVpn : containerId value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " profileName value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1619
    .local v0, "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1620
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1622
    iget-object v2, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1623
    .local v1, "removeContainerPackagesFromVpnValidation":I
    const/16 v2, 0x64

    if-eq v1, v2, :cond_64

    .line 1626
    const-string v2, "KnoxVpnEngineService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while removing the container packages from vpn: The error code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/16 v2, 0x71

    if-ne v1, v2, :cond_62

    .line 1628
    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_6b

    .line 1633
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_62
    :goto_62
    monitor-exit p0

    return-object v0

    .line 1632
    .restart local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_64
    :try_start_64
    iput p2, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    .line 1633
    invoke-virtual {p0, p1, p3, p4}, removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6b

    move-result-object v0

    goto :goto_62

    .line 1616
    .end local v0    # "errorResponse":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v1    # "removeContainerPackagesFromVpnValidation":I
    :catchall_6b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "regularPackageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_1
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_29

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePackagesFromVpn : profileName value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "regularPackageName value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_8d

    .line 1310
    :cond_29
    const/4 v2, -0x1

    .line 1314
    .local v2, "retvalue":I
    :try_start_2a
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "transformedPackageName":Ljava/lang/String;
    iget-object v5, p0, mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "VpnPackageInfo"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "packageName"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "profileName"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 1320
    .local v0, "deleteProfile":Z
    if-nez v0, :cond_5f

    .line 1321
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "removePackagesFromVpn: Error deleting from DB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5c} :catch_6e
    .catchall {:try_start_2a .. :try_end_5c} :catchall_8d

    move v3, v2

    .line 1335
    .end local v0    # "deleteProfile":Z
    .end local v2    # "retvalue":I
    .end local v4    # "transformedPackageName":Ljava/lang/String;
    .local v3, "retvalue":I
    :goto_5d
    monitor-exit p0

    return v3

    .line 1326
    .end local v3    # "retvalue":I
    .restart local v0    # "deleteProfile":Z
    .restart local v2    # "retvalue":I
    .restart local v4    # "transformedPackageName":Ljava/lang/String;
    :cond_5f
    :try_start_5f
    invoke-direct {p0, p3}, refreshDomainInHashMap(Ljava/lang/String;)V

    .line 1328
    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const/4 v6, 0x0

    invoke-direct {p0, p3, v5, v6}, updateNotification(Ljava/lang/String;IZ)V

    .line 1330
    invoke-direct {p0, v4}, removeFromHashMapByPackageName(Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6b} :catch_6e
    .catchall {:try_start_5f .. :try_end_6b} :catchall_8d

    move-result v2

    .end local v0    # "deleteProfile":Z
    .end local v4    # "transformedPackageName":Ljava/lang/String;
    :goto_6c
    move v3, v2

    .line 1335
    .end local v2    # "retvalue":I
    .restart local v3    # "retvalue":I
    goto :goto_5d

    .line 1332
    .end local v3    # "retvalue":I
    .restart local v2    # "retvalue":I
    :catch_6e
    move-exception v1

    .line 1333
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePackagesFromVpn: Exception occured for removing vpn, package map:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_6f .. :try_end_8c} :catchall_8d

    goto :goto_6c

    .line 1309
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "retvalue":I
    :catchall_8d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized removePackagesFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 25
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "enteredProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_1
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "package is going to be removed from vpn for the profile "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v4, 0x0

    .local v4, "ALL_PACKAGES_REMOVED":I
    const/4 v6, 0x1

    .local v6, "PARTIAL_PACKAGES_REMOVED":I
    const/4 v5, 0x2

    .line 1244
    .local v5, "NO_PACKAGES_REMOVED":I
    new-instance v16, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v16 .. v16}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1245
    .local v16, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1246
    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_e2

    .line 1250
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1251
    .local v15, "removePackagesFromVpnValidation":I
    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v15, v0, :cond_74

    .line 1254
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while removing packages from vpn: The error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_72} :catch_b7
    .catchall {:try_start_40 .. :try_end_72} :catchall_e2

    .line 1305
    .end local v15    # "removePackagesFromVpnValidation":I
    :goto_72
    monitor-exit p0

    return-object v16

    .line 1258
    .restart local v15    # "removePackagesFromVpnValidation":I
    :cond_74
    move-object/from16 v7, p2

    .local v7, "arr$":[Ljava/lang/String;
    :try_start_76
    array-length v10, v7

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_78
    if-ge v9, v10, :cond_13b

    aget-object v13, v7, v9

    .line 1261
    .local v13, "regularPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1262
    .local v17, "transformedPackageName":Ljava/lang/String;
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "removePackagesFromVpn: transformedPackageName value is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    if-nez v17, :cond_e5

    .line 1266
    const-string v18, "KnoxVpnEngineService"

    const-string v19, "Error occured while removing packages from vpn: The error code is -1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_b6} :catch_b7
    .catchall {:try_start_76 .. :try_end_b6} :catchall_e2

    goto :goto_72

    .line 1296
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "regularPackageName":Ljava/lang/String;
    .end local v15    # "removePackagesFromVpnValidation":I
    .end local v17    # "transformedPackageName":Ljava/lang/String;
    :catch_b7
    move-exception v8

    .line 1297
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b8
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error occured while removing packages from vpn: exception occured: The error code is -1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_b8 .. :try_end_e1} :catchall_e2

    goto :goto_72

    .line 1241
    .end local v4    # "ALL_PACKAGES_REMOVED":I
    .end local v5    # "NO_PACKAGES_REMOVED":I
    .end local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_e2
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1271
    .restart local v4    # "ALL_PACKAGES_REMOVED":I
    .restart local v5    # "NO_PACKAGES_REMOVED":I
    .restart local v6    # "PARTIAL_PACKAGES_REMOVED":I
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "regularPackageName":Ljava/lang/String;
    .restart local v15    # "removePackagesFromVpnValidation":I
    .restart local v16    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v17    # "transformedPackageName":Ljava/lang/String;
    :cond_e5
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1272
    .local v12, "profileOwningPackage":Ljava/lang/String;
    const-string v18, "KnoxVpnEngineService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "removePackagesFromVpn: profileOwningPackage value is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    if-nez v12, :cond_12a

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v18

    if-nez v18, :cond_126

    .line 1258
    :cond_126
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_78

    .line 1278
    :cond_12a
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_126

    .line 1281
    const-string v18, "KnoxVpnEngineService"

    const-string v19, "Error occured while removing packages from vpn: The error code is 129"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 1287
    .end local v12    # "profileOwningPackage":Ljava/lang/String;
    .end local v13    # "regularPackageName":Ljava/lang/String;
    .end local v17    # "transformedPackageName":Ljava/lang/String;
    :cond_13b
    move-object/from16 v7, p2

    array-length v10, v7

    const/4 v9, 0x0

    :goto_13f
    if-ge v9, v10, :cond_168

    aget-object v11, v7, v9

    .line 1288
    .local v11, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2}, removePackageFromVpn(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1289
    .local v14, "removePackage":I
    if-eqz v14, :cond_165

    .line 1290
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1291
    const-string v18, "KnoxVpnEngineService"

    const-string v19, "Error occured while removing packages from vpn: The error code is 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_163} :catch_b7
    .catchall {:try_start_e5 .. :try_end_163} :catchall_e2

    goto/16 :goto_72

    .line 1287
    :cond_165
    add-int/lit8 v9, v9, 0x1

    goto :goto_13f

    .line 1302
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "removePackage":I
    :cond_168
    :try_start_168
    const-string v18, "KnoxVpnEngineService"

    const-string/jumbo v19, "removing all packages from vpn is a success: The error code is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1304
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_18a
    .catchall {:try_start_168 .. :try_end_18a} :catchall_e2

    goto/16 :goto_72
.end method

.method public declared-synchronized removeVpnProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    monitor-enter p0

    :try_start_1
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile is going to be removed : profileName value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " persona id value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 549
    .local v0, "adminId":I
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 550
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 551
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_89

    .line 555
    :try_start_39
    iget-object v10, p0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-virtual {v10, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I

    move-result v5

    .line 556
    .local v5, "removeVpnProfileValidation":I
    const/16 v10, 0x64

    if-eq v5, v10, :cond_5d

    .line 559
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error occured while removing the vpn profile: The error code is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5b} :catch_6b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_89

    .line 620
    .end local v5    # "removeVpnProfileValidation":I
    :goto_5b
    monitor-exit p0

    return-object v6

    .line 563
    .restart local v5    # "removeVpnProfileValidation":I
    :cond_5d
    :try_start_5d
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 564
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v9, :cond_8c

    .line 567
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error occured while removing the vpn profile: The error code is 110"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_6b
    .catchall {:try_start_5d .. :try_end_6a} :catchall_89

    goto :goto_5b

    .line 616
    .end local v5    # "removeVpnProfileValidation":I
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_6b
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error occured while removing the vpn profile: exception occured: The error code is -1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_89

    goto :goto_5b

    .line 546
    .end local v0    # "adminId":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_89
    move-exception v10

    monitor-exit p0

    throw v10

    .line 571
    .restart local v0    # "adminId":I
    .restart local v5    # "removeVpnProfileValidation":I
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_8c
    :try_start_8c
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v1

    .line 572
    .local v1, "currentStateOfProfile":I
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile is going to be removed: currentStateOfProfile value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v10, 0x1

    if-ne v1, v10, :cond_ae

    const/4 v10, 0x5

    if-eq v1, v10, :cond_ca

    .line 574
    :cond_ae
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v8

    .line 575
    .local v8, "stopConnectionStatus":I
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile is going to be removed: stopConnectionStatus value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v8    # "stopConnectionStatus":I
    :cond_ca
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v1

    .line 580
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile is going to be removed: currentStateOfProfile after stopping the connection is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v10, 0x1

    if-eq v1, v10, :cond_f5

    const/4 v10, 0x5

    if-eq v1, v10, :cond_f5

    .line 584
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error occured while removing the vpn profile: The error code is 306"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 588
    :cond_f5
    iget-object v10, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 589
    .local v3, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v3, :cond_106

    .line 590
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    .line 591
    .local v7, "routeType":I
    if-eqz v7, :cond_106

    .line 592
    invoke-direct {p0, p2}, removePackagesFromIpTables(Ljava/lang/String;)V

    .line 596
    .end local v7    # "routeType":I
    :cond_106
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->removeConnection(Ljava/lang/String;)I

    move-result v4

    .line 597
    .local v4, "removeStatus":I
    if-nez v4, :cond_148

    .line 598
    invoke-direct {p0, p2}, removeProfileFromHashMapAndDB(Ljava/lang/String;)V

    .line 599
    sget-object v10, mNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v10, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileCount()I

    move-result v10

    if-nez v10, :cond_122

    .line 609
    iget-object v10, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeExemptRule(I)V

    .line 612
    :cond_122
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile removal is a success: The error code is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 614
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_5b

    .line 603
    :cond_148
    const-string v10, "KnoxVpnEngineService"

    const-string v11, "Error occured while removing the vpn profile: The error code is 102"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_14f} :catch_6b
    .catchall {:try_start_8c .. :try_end_14f} :catchall_89

    goto/16 :goto_5b
.end method

.method public setAutoRetryOnConnectionError(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1914
    const/4 v0, -0x1

    .line 1915
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1916
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1917
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1918
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1920
    if-nez p1, :cond_23

    .line 1921
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_22

    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "setAutoRetryOnConnectionError : vpnContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_22
    :goto_22
    return-object v2

    .line 1925
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_23
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1926
    if-eqz p2, :cond_22

    .line 1928
    :try_start_27
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-nez v5, :cond_22

    .line 1931
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1932
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_5c

    .line 1933
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "setAutoRetryOnConnectionError : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3b} :catch_3c

    goto :goto_22

    .line 1940
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_3c
    move-exception v1

    .line 1941
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v2, 0x0

    goto :goto_22

    .line 1936
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_5c
    :try_start_5c
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z

    move-result v3

    .line 1937
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRetryOnConnectionError : success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1939
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_85} :catch_3c

    goto :goto_22
.end method

.method public setCACertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 850
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 851
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 852
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 853
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 854
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 856
    :try_start_15
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1c

    .line 871
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_1b
    return-object v2

    .line 859
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1c
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 860
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_4b

    .line 861
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "setting CACertificate : Service is not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2b

    goto :goto_1b

    .line 867
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2b
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting CACertificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v2, 0x0

    goto :goto_1b

    .line 864
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4b
    :try_start_4b
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setCACertificate(Ljava/lang/String;[B)Z

    move-result v3

    .line 865
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 866
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_2b

    goto :goto_1b
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enableValidation"    # Z
    .param p4, "condition"    # Ljava/util/List;
    .param p5, "frequency"    # I

    .prologue
    const/4 v5, 0x0

    .line 1883
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1884
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 1885
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1886
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1887
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1888
    if-eqz p2, :cond_1d

    .line 1890
    :try_start_17
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v5

    if-eqz v5, :cond_1e

    .line 1907
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1d
    :goto_1d
    return-object v2

    .line 1893
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1e
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1894
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_4d

    .line 1895
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "setting server cert validation : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 1902
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2d
    move-exception v1

    .line 1903
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting server cert validation : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/4 v2, 0x0

    goto :goto_1d

    .line 1898
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4d
    :try_start_4d
    invoke-interface {v4, p2, p3, p4, p5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z

    move-result v3

    .line 1900
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1901
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5d} :catch_2d

    goto :goto_1d
.end method

.method public declared-synchronized setUserCertificate(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 798
    .local v0, "adminId":I
    const/4 v3, 0x0

    .line 799
    .local v3, "success":Z
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 800
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 801
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_60

    .line 802
    if-eqz p2, :cond_1e

    .line 804
    :try_start_18
    invoke-direct {p0, p1, p2, v2}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2f
    .catchall {:try_start_18 .. :try_end_1b} :catchall_60

    move-result v5

    if-eqz v5, :cond_20

    .line 821
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v2

    .line 807
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_20
    :try_start_20
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 808
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v4, :cond_4f

    .line 809
    const-string v5, "KnoxVpnEngineService"

    const-string/jumbo v6, "setting user certificate : VPN Service not started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_2f
    .catchall {:try_start_20 .. :try_end_2e} :catchall_60

    goto :goto_1e

    .line 816
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_2f
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting user certificate : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_60

    .line 818
    const/4 v2, 0x0

    goto :goto_1e

    .line 812
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_4f
    :try_start_4f
    invoke-interface {v4, p2, p3, p4}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    .line 814
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 815
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_2f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_60

    goto :goto_1e

    .line 797
    .end local v0    # "adminId":I
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    .end local v3    # "success":Z
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_60
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .registers 5
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 3915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3917
    .local v0, "callingUid":I
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v1, :cond_14

    .line 3918
    iget-object v1, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    .line 3923
    const-string v1, "net.vpn.framework"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3924
    :cond_14
    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1837
    monitor-enter p0

    :try_start_2
    iget v0, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    .line 1838
    .local v0, "adminId":I
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1839
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1840
    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_76

    .line 1841
    if-ltz p3, :cond_1a

    if-le p3, v7, :cond_1c

    .line 1856
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object v2

    .line 1845
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    .line 1846
    .local v4, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-eqz v4, :cond_1a

    .line 1847
    invoke-interface {v4, p2, p3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->setVpnModeOfOperation(Ljava/lang/String;I)I

    move-result v3

    .line 1848
    .local v3, "ret":I
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVpnModeOfOperation : profileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1850
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_55} :catch_56
    .catchall {:try_start_1c .. :try_end_55} :catchall_76

    goto :goto_1a

    .line 1852
    .end local v3    # "ret":I
    .end local v4    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_56
    move-exception v1

    .line 1853
    .local v1, "e":Ljava/lang/Exception;
    :try_start_57
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting vpn mode : Failure at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_76

    .line 1854
    const/4 v2, 0x0

    goto :goto_1a

    .line 1837
    .end local v0    # "adminId":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_76
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    monitor-enter p0

    :try_start_1
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "knox vpn profile is going to be started for the profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 903
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 904
    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 906
    iget-object v10, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v10, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_c3

    move-result-object v5

    .line 907
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_35

    .line 945
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_33
    :goto_33
    monitor-exit p0

    return-object v6

    .line 912
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_35
    :try_start_35
    invoke-direct {p0, p1, p2, v6}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I

    move-result v10

    if-eqz v10, :cond_62

    .line 913
    const/4 v10, 0x1

    const/16 v11, 0x8

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_42
    .catchall {:try_start_35 .. :try_end_41} :catchall_c3

    goto :goto_33

    .line 941
    :catch_42
    move-exception v1

    .line 942
    .local v1, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "starting vpn connection : Failure at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_c3

    .line 943
    const/4 v6, 0x0

    goto :goto_33

    .line 916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_62
    :try_start_62
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v9

    .line 917
    .local v9, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v9, :cond_72

    .line 918
    const-string v10, "KnoxVpnEngineService"

    const-string/jumbo v11, "starting vpn connection : Mocana Service is not started"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v6, 0x0

    goto :goto_33

    .line 922
    :cond_72
    invoke-direct {p0, p2}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v7

    .line 923
    .local v7, "state":I
    invoke-direct {p0, p2}, getActivate(Ljava/lang/String;)I

    move-result v0

    .line 924
    .local v0, "active":I
    invoke-virtual {p0, p2}, getVpnConnectionType(Ljava/lang/String;)I

    move-result v8

    .line 925
    .local v8, "vpnConnectionType":I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_84

    const/4 v10, 0x5

    if-ne v7, v10, :cond_86

    :cond_84
    if-nez v0, :cond_c6

    :cond_86
    const/4 v3, 0x1

    .line 926
    .local v3, "notAllowed":Z
    :goto_87
    if-nez v8, :cond_c8

    const/4 v2, 0x1

    .line 927
    .local v2, "keepOn":Z
    :goto_8a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_ca

    sget-object v10, mProcessManager:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ca

    const/4 v4, 0x1

    .line 929
    .local v4, "onDemand":Z
    :goto_97
    if-eqz v3, :cond_cc

    .line 930
    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not allowd state for starting a vpn : profileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v10, 0x1

    const/16 v11, 0xc

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_c1} :catch_42
    .catchall {:try_start_62 .. :try_end_c1} :catchall_c3

    goto/16 :goto_33

    .line 901
    .end local v0    # "active":I
    .end local v2    # "keepOn":Z
    .end local v3    # "notAllowed":Z
    .end local v4    # "onDemand":Z
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .end local v7    # "state":I
    .end local v8    # "vpnConnectionType":I
    .end local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catchall_c3
    move-exception v10

    monitor-exit p0

    throw v10

    .line 925
    .restart local v0    # "active":I
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v7    # "state":I
    .restart local v8    # "vpnConnectionType":I
    .restart local v9    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_c6
    const/4 v3, 0x0

    goto :goto_87

    .line 926
    .restart local v3    # "notAllowed":Z
    :cond_c8
    const/4 v2, 0x0

    goto :goto_8a

    .line 927
    .restart local v2    # "keepOn":Z
    :cond_ca
    const/4 v4, 0x0

    goto :goto_97

    .line 935
    .restart local v4    # "onDemand":Z
    :cond_cc
    :try_start_cc
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_f2

    const-string v10, "KnoxVpnEngineService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keepOn =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / onDemand = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_f2
    if-nez v2, :cond_f6

    if-eqz v4, :cond_33

    .line 938
    :cond_f6
    invoke-interface {v9, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->startConnection(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 939
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_106} :catch_42
    .catchall {:try_start_cc .. :try_end_106} :catchall_c3

    goto/16 :goto_33
.end method

.method protected declared-synchronized startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 20
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2081
    monitor-enter p0

    :try_start_1
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " packageName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_1ac

    .line 2082
    const/4 v10, 0x0

    .line 2085
    .local v10, "startVpnResult":I
    :try_start_29
    move-object/from16 v0, p0

    iget-object v14, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v9

    .line 2086
    .local v9, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v9, :cond_3f

    .line 2087
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "Error occured while starting vpn for packages: The error code is 108"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_16f
    .catchall {:try_start_29 .. :try_end_3c} :catchall_1ac

    .line 2088
    const/4 v14, -0x1

    .line 2177
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :goto_3d
    monitor-exit p0

    return v14

    .line 2091
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_3f
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    .line 2092
    .local v8, "isChainingEnabled":I
    const/4 v14, 0x1

    if-ne v8, v14, :cond_55

    .line 2093
    invoke-virtual/range {p0 .. p1}, checkChainingStatus(Ljava/lang/String;)I

    move-result v4

    .line 2094
    .local v4, "chainingStatus":I
    if-nez v4, :cond_55

    .line 2095
    const/16 v14, 0x1f6

    goto :goto_3d

    .line 2099
    .end local v4    # "chainingStatus":I
    :cond_55
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    .line 2100
    .local v3, "activateState":I
    if-nez v3, :cond_5e

    .line 2101
    const/16 v14, 0x12d

    goto :goto_3d

    .line 2104
    :cond_5e
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v13

    .line 2105
    .local v13, "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    if-nez v13, :cond_6f

    .line 2106
    const-string v14, "KnoxVpnEngineService"

    const-string v15, "Error occured while starting vpn for packages: The error code is 128"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v14, -0x1

    goto :goto_3d

    .line 2109
    :cond_6f
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v12

    .line 2110
    .local v12, "uid":I
    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v5

    .line 2111
    .local v5, "cid":I
    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v15

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2113
    .local v11, "temp":Ljava/lang/String;
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_a4

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: uid :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_a4
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_c1

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: cid :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_c1
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_e2

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: packageName  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_e2
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_ff

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: original Name  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_ff
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v12, v2}, addUIDListToExceptionList(Ljava/lang/String;IILjava/lang/String;)V

    .line 2124
    invoke-direct/range {p0 .. p1}, getVPNTransitionState(Ljava/lang/String;)I

    move-result v14

    packed-switch v14, :pswitch_data_248

    .line 2169
    const-string v14, "KnoxVpnEngineService"

    const-string/jumbo v15, "startVpnForPackage : VPN State not valid"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const/4 v10, -0x1

    .end local v3    # "activateState":I
    .end local v5    # "cid":I
    .end local v8    # "isChainingEnabled":I
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v11    # "temp":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_118
    :goto_118
    move v14, v10

    .line 2177
    goto/16 :goto_3d

    .line 2126
    .restart local v3    # "activateState":I
    .restart local v5    # "cid":I
    .restart local v8    # "isChainingEnabled":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v11    # "temp":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :pswitch_11b
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 2127
    .local v7, "interfaceValue":Ljava/lang/String;
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_148

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: for connected state profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "interfaceValue value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_148
    if-nez v7, :cond_14d

    .line 2129
    const/4 v14, -0x1

    goto/16 :goto_3d

    .line 2132
    :cond_14d
    const/4 v14, -0x2

    if-ne v12, v14, :cond_18f

    .line 2133
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v15

    invoke-virtual {v14, v5, v7, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 2134
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, startUid(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, stopUid(I)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15, v7}, setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_16e} :catch_16f
    .catchall {:try_start_3f .. :try_end_16e} :catchall_1ac

    goto :goto_118

    .line 2173
    .end local v3    # "activateState":I
    .end local v5    # "cid":I
    .end local v7    # "interfaceValue":Ljava/lang/String;
    .end local v8    # "isChainingEnabled":I
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v11    # "temp":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :catch_16f
    move-exception v6

    .line 2174
    .local v6, "e":Ljava/lang/Exception;
    :try_start_170
    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18d
    .catchall {:try_start_170 .. :try_end_18d} :catchall_1ac

    .line 2175
    const/4 v10, -0x1

    goto :goto_118

    .line 2137
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "activateState":I
    .restart local v5    # "cid":I
    .restart local v7    # "interfaceValue":Ljava/lang/String;
    .restart local v8    # "isChainingEnabled":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v11    # "temp":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :cond_18f
    :try_start_18f
    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v12, v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v12, v7}, setDnsSystemProperty(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1aa} :catch_16f
    .catchall {:try_start_18f .. :try_end_1aa} :catchall_1ac

    goto/16 :goto_118

    .line 2081
    .end local v3    # "activateState":I
    .end local v5    # "cid":I
    .end local v7    # "interfaceValue":Ljava/lang/String;
    .end local v8    # "isChainingEnabled":I
    .end local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v10    # "startVpnResult":I
    .end local v11    # "temp":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :catchall_1ac
    move-exception v14

    monitor-exit p0

    throw v14

    .line 2145
    .restart local v3    # "activateState":I
    .restart local v5    # "cid":I
    .restart local v8    # "isChainingEnabled":I
    .restart local v9    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v10    # "startVpnResult":I
    .restart local v11    # "temp":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v13    # "vpnPackageInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    :pswitch_1af
    :try_start_1af
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorPkgName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, addMangleExceptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_1d9

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage: profileName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_1d9
    const/4 v14, -0x2

    if-ne v12, v14, :cond_20e

    .line 2150
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v5, v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    .line 2151
    invoke-direct/range {p0 .. p1}, startVpnProfile(Ljava/lang/String;)I

    move-result v10

    .line 2157
    :goto_1ef
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_118

    const-string v14, "KnoxVpnEngineService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startVpnForPackage (IDLE) : result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    .line 2154
    :cond_20e
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v12, v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V

    .line 2155
    invoke-direct/range {p0 .. p1}, startVpnProfile(Ljava/lang/String;)I

    move-result v10

    goto :goto_1ef

    .line 2161
    :pswitch_222
    const/4 v14, -0x2

    if-ne v12, v14, :cond_236

    .line 2162
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v5, v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRulesRange(ILjava/lang/String;I)V

    goto/16 :goto_118

    .line 2165
    :cond_236
    move-object/from16 v0, p0

    iget-object v14, v0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    sget-object v15, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v12, v15, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addMangleNatRules(ILjava/lang/String;I)V
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_245} :catch_16f
    .catchall {:try_start_1af .. :try_end_245} :catchall_1ac

    goto/16 :goto_118

    .line 2124
    nop

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_1af
        :pswitch_222
        :pswitch_222
        :pswitch_11b
        :pswitch_1af
    .end packed-switch
.end method

.method public declared-synchronized stopConnection(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/KnoxVpnContext;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    monitor-enter p0

    :try_start_1
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "knox vpn profile is going to be stopped for the profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 952
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 953
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_61

    .line 955
    :try_start_2b
    invoke-direct {p0, p1, p2, v1}, validateAdminAndVendorForProfile(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Landroid/app/enterprise/EnterpriseResponseData;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_42
    .catchall {:try_start_2b .. :try_end_2e} :catchall_61

    move-result v3

    if-eqz v3, :cond_33

    .line 969
    :goto_31
    monitor-exit p0

    return-object v1

    .line 958
    :cond_33
    :try_start_33
    invoke-virtual {p0, p2}, getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v2

    .line 959
    .local v2, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v2, :cond_64

    .line 960
    const-string v3, "KnoxVpnEngineService"

    const-string/jumbo v4, "stopping vpn connection : Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_61

    goto :goto_31

    .line 965
    .end local v2    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_42
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopping vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_61

    goto :goto_31

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :catchall_61
    move-exception v3

    monitor-exit p0

    throw v3

    .line 963
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    .restart local v2    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_64
    :try_start_64
    invoke-interface {v2, p2}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 964
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_74} :catch_42
    .catchall {:try_start_64 .. :try_end_74} :catchall_61

    goto :goto_31
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method protected declared-synchronized updateNoUidChain(Ljava/lang/String;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3536
    monitor-enter p0

    :try_start_1
    const-string v7, "KnoxVpnEngineService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uodateNoUidChain : profileName =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 3538
    .local v5, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v5, :cond_28

    .line 3539
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_57

    move-result v0

    .line 3540
    .local v0, "activateState":I
    if-nez v0, :cond_2a

    .line 3558
    .end local v0    # "activateState":I
    :cond_28
    monitor-exit p0

    return-void

    .line 3544
    .restart local v0    # "activateState":I
    :cond_2a
    :try_start_2a
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 3545
    .local v4, "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v6

    .line 3546
    .local v6, "uid":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getCid()I

    move-result v1

    .line 3548
    .local v1, "cid":I
    const/4 v7, -0x2

    if-ne v6, v7, :cond_5a

    .line 3549
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3550
    .local v3, "interfaceName":Ljava/lang/String;
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v8

    invoke-virtual {v7, v1, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleRulesRangeNoUid(ILjava/lang/String;I)V
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_57

    goto :goto_32

    .line 3536
    .end local v0    # "activateState":I
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v6    # "uid":I
    :catchall_57
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3553
    .restart local v0    # "activateState":I
    .restart local v1    # "cid":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "p":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .restart local v5    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v6    # "uid":I
    :cond_5a
    :try_start_5a
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 3554
    .restart local v3    # "interfaceName":Ljava/lang/String;
    iget-object v7, p0, mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v8

    invoke-virtual {v7, v6, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeMangleRulesPacketsNoUid(ILjava/lang/String;I)V
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_57

    goto :goto_32
.end method
