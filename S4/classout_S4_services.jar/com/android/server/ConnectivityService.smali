.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$RouteAttributes;
    }
.end annotation


# static fields
.field private static final ACTION_PKT_CNT_SAMPLE_INTERVAL_ELAPSED:Ljava/lang/String; = "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

.field protected static final ADD:Z = true

.field private static final ADD_ACTION:I = 0x1

.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final ANYCONNECT_BIND_ACTION:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final CHAINING_ENABLED:I = 0x1

.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final DBG:Z = true

.field private static final DEFAULT_FAIL_FAST_TIME_MS:I = 0xea60

.field private static final DEFAULT_SAMPLING_INTERVAL_IN_SECONDS:I = 0x2d0

.field private static final DEFAULT_START_SAMPLING_INTERVAL_IN_SECONDS:I = 0x3c

.field private static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_DEFAULT_NETWORK_SWITCH:I = 0x83ffe

.field private static final EVENT_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0xe

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_SAMPLE_INTERVAL_ELAPSED:I = 0xf

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0xa

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0xc

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final EVENT_VPN_STATE_CHANGED:I = 0xd

.field private static final EXTRA_NETID:Ljava/lang/String; = "netID"

.field private static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "netType"

.field private static final FAIL_FAST_TIME_MS:Ljava/lang/String; = "persist.radio.fail_fast_time_ms"

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final INT_PER_APP_VPN:I = 0x1

.field private static final INT_SYSTEM_VPN:I = 0x0

.field private static final LOGD_RULES:Z = false

.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.debug_level"

.field static final LOG_LEVEL_PROP_HIGH:Ljava/lang/String; = "0x4948"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static final LOG_LEVEL_PROP_MID:Ljava/lang/String; = "0x494d"

.field private static final MAX_NET_ID:I = 0xffff

.field private static final MIN_NET_ID:I = 0x1f5

.field private static final NETID_UPDATE:Ljava/lang/String; = "org.codeaurora.NETID_UPDATE"

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final ONLY_WIFI_AND_BT_TETHER_ENABLE:I = 0x2

.field private static final PER_APP_VPN:Z = false

.field private static final PROVISIONING:I = 0x2

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REDIRECTED_PROVISIONING:I = 0x1

.field protected static final REMOVE:Z = false

.field private static final REMOVE_ACTION:I = 0x2

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final SAMPLE_DBG:Z = false

.field private static final SAMPLE_INTERVAL_ELAPSED_REQUEST_CODE:I = 0x0

.field private static final SYSTEM_VPN:Z = true

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TAG_REDIRECTED_URL:Ljava/lang/String; = "redirectedUrl"

.field private static final VDBG:Z = true

.field private static final VZW_APPS_APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "vzw.telephony.appsapn-restore"

.field private static final is3LMAllowed:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field private final knoxV2Enabled:Z

.field private mActiveDefaultNetwork:I

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mClat:Lcom/android/server/connectivity/Nat464Xlat;

.field private mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetConditionPublished:I

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private mDnsLock:Ljava/lang/Object;

.field private mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

.field private mEnterpriseSytemVPN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterpriseVpnStoreObj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/EnterpriseVpn;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIntentInfo:Landroid/net/NetworkInfo;

.field private mIsMobilePolicyEnabled:Z

.field private volatile mIsNotificationVisible:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPreference:I

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field private mNotificationExtrainfo:Ljava/lang/String;

.field private mNotificationId:I

.field private mNotificationIntent:Landroid/app/PendingIntent;

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field private mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

.field private mRouteIdCtr:I

.field private mRulesLock:Ljava/lang/Object;

.field private mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfConnectedProfile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 767
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 295
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mVpns:Landroid/util/SparseArray;

    .line 304
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mRulesLock:Ljava/lang/Object;

    .line 306
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mUidRules:Landroid/util/SparseIntArray;

    .line 308
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mMeteredIfaces:Ljava/util/HashSet;

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mIntentInfo:Landroid/net/NetworkInfo;

    .line 320
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, mActiveDefaultNetwork:I

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mDefaultInetConditionPublished:I

    .line 324
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mDnsLock:Ljava/lang/Object;

    .line 467
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mDefaultProxy:Landroid/net/ProxyInfo;

    .line 479
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mProxyLock:Ljava/lang/Object;

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mDefaultProxyDisabled:Z

    .line 483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mGlobalProxy:Landroid/net/ProxyInfo;

    .line 485
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 495
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    .line 497
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 499
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, numberOfConnectedProfile:I

    .line 518
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mRouteIdCtr:I

    .line 526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 565
    const/16 v2, 0x1f5

    move-object/from16 v0, p0

    iput v2, v0, mNextNetId:I

    .line 568
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mNextNetworkRequestId:I

    .line 571
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsMobilePolicyEnabled:Z

    .line 586
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, KNOXVPN_FEATURE:I

    .line 587
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, KNOXVPN_MDM_ENABLED:I

    .line 588
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, KNOXVPN_CONTAINER_ENABLED:I

    .line 764
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 1462
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1590
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 1985
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 4107
    const-string/jumbo v2, "v30"

    const-string/jumbo v3, "ro.config.knox"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, knoxV2Enabled:Z

    .line 4687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsNotificationVisible:Z

    .line 4688
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mNotificationIntent:Landroid/app/PendingIntent;

    .line 4689
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNotificationId:I

    .line 4690
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mNotificationExtrainfo:Ljava/lang/String;

    .line 4798
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mProvisioningUrlFile:Ljava/io/File;

    .line 5033
    new-instance v2, Lcom/android/server/ConnectivityService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 5160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkRequests:Ljava/util/HashMap;

    .line 5343
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkForRequestId:Landroid/util/SparseArray;

    .line 5346
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkForNetId:Landroid/util/SparseArray;

    .line 5351
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mNetworkAgentInfos:Ljava/util/HashMap;

    .line 768
    const-string v2, "ConnectivityService starting up"

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 770
    new-instance v21, Landroid/net/NetworkCapabilities;

    invoke-direct/range {v21 .. v21}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 771
    .local v21, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v2, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 772
    const/16 v2, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 773
    new-instance v2, Landroid/net/NetworkRequest;

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, nextNetworkRequestId()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v2, v0, v3, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    .line 774
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 776
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mNetworkRequests:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v12, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v12, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 779
    .local v12, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 780
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 781
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 784
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 787
    .local v15, "id":Ljava/lang/String;
    if-eqz v15, :cond_1e9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e9

    .line 788
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 789
    .local v20, "name":Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .end local v15    # "id":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    :cond_1e9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 796
    .local v9, "dns":Ljava/lang/String;
    if-eqz v9, :cond_1fb

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_206

    .line 797
    :cond_1fb
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 801
    :cond_206
    :try_start_206
    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mDefaultDns:Ljava/net/InetAddress;
    :try_end_20e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_206 .. :try_end_20e} :catch_2b4

    .line 806
    :goto_20e
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, mContext:Landroid/content/Context;

    .line 807
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    .line 808
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 809
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mKeyStore:Landroid/security/KeyStore;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 813
    :try_start_251
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_25c
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_25c} :catch_2cd

    .line 819
    :goto_25c
    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PowerManager;

    .line 821
    .local v23, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mNetTransitionWakeLockTimeout:I

    .line 826
    const/16 v2, 0x1e

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 829
    const/16 v2, 0x1e

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, mNetConfigs:[Landroid/net/NetworkConfig;

    .line 834
    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    .line 835
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2a0
    const/16 v2, 0x1e

    if-ge v13, v2, :cond_2eb

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    new-instance v3, Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$RouteAttributes;-><init>(Lcom/android/server/ConnectivityService;)V

    aput-object v3, v2, v13

    .line 835
    add-int/lit8 v13, v13, 0x1

    goto :goto_2a0

    .line 802
    .end local v13    # "i":I
    .end local v23    # "powerManager":Landroid/os/PowerManager;
    :catch_2b4
    move-exception v10

    .line 803
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto/16 :goto_20e

    .line 814
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2cd
    move-exception v10

    .line 816
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 842
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v13    # "i":I
    .restart local v23    # "powerManager":Landroid/os/PowerManager;
    :cond_2eb
    const-string/jumbo v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 843
    .local v26, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 845
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 847
    .local v25, "salesCode":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 849
    .local v19, "naStrings":[Ljava/lang/String;
    move-object/from16 v8, v19

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_324
    move/from16 v0, v16

    if-ge v14, v0, :cond_414

    aget-object v18, v8, v14

    .line 851
    .local v18, "naString":Ljava/lang/String;
    :try_start_32a
    new-instance v17, Landroid/net/NetworkConfig;

    invoke-direct/range {v17 .. v18}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 852
    .local v17, "n":Landroid/net/NetworkConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_378

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    .line 849
    .end local v17    # "n":Landroid/net/NetworkConfig;
    :goto_375
    add-int/lit8 v14, v14, 0x1

    goto :goto_324

    .line 859
    .restart local v17    # "n":Landroid/net/NetworkConfig;
    :cond_378
    if-eqz v26, :cond_3a1

    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_3a1

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto :goto_375

    .line 879
    .end local v17    # "n":Landroid/net/NetworkConfig;
    :catch_39f
    move-exception v2

    goto :goto_375

    .line 864
    .restart local v17    # "n":Landroid/net/NetworkConfig;
    :cond_3a1
    move-object/from16 v0, p0

    iget-object v2, v0, mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3c8

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto :goto_375

    .line 870
    :cond_3c8
    const-string v2, "SIN"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e6

    const-string v2, "STH"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e6

    const-string v2, "XSP"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    .line 871
    :cond_3e6
    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3f3

    .line 872
    const/4 v2, -0x1

    move-object/from16 v0, v17

    iput v2, v0, Landroid/net/NetworkConfig;->restoreTime:I

    .line 875
    :cond_3f3
    move-object/from16 v0, p0

    iget-object v2, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v17, v2, v3

    .line 878
    move-object/from16 v0, p0

    iget v2, v0, mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mNetworksDefined:I
    :try_end_412
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_412} :catch_39f

    goto/16 :goto_375

    .line 883
    .end local v17    # "n":Landroid/net/NetworkConfig;
    .end local v18    # "naString":Ljava/lang/String;
    :cond_414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworksDefined="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mNetworksDefined:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 885
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mProtectedNetworks:Ljava/util/List;

    .line 886
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v24

    .line 888
    .local v24, "protectedNetworks":[I
    move-object/from16 v8, v24

    .local v8, "arr$":[I
    array-length v0, v8

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_448
    move/from16 v0, v16

    if-ge v14, v0, :cond_48b

    aget v22, v8, v14

    .line 889
    .local v22, "p":I
    move-object/from16 v0, p0

    iget-object v2, v0, mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v22

    if-eqz v2, :cond_472

    move-object/from16 v0, p0

    iget-object v2, v0, mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_472

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :goto_46f
    add-int/lit8 v14, v14, 0x1

    goto :goto_448

    .line 892
    :cond_472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto :goto_46f

    .line 896
    .end local v22    # "p":I
    :cond_48b
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5de

    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5de

    const/4 v2, 0x1

    :goto_4aa
    move-object/from16 v0, p0

    iput-boolean v2, v0, mTestMode:Z

    .line 899
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mTethering:Lcom/android/server/connectivity/Tethering;

    .line 902
    new-instance v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    .line 906
    new-instance v2, Lcom/android/server/connectivity/PermissionMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 910
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 911
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 912
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 916
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    .line 920
    :try_start_531
    move-object/from16 v0, p0

    iget-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_552
    .catch Landroid/os/RemoteException; {:try_start_531 .. :try_end_552} :catch_5e1

    .line 928
    :goto_552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mInetLog:Ljava/util/ArrayList;

    .line 931
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 934
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mAlarmManager:Landroid/app/AlarmManager;

    .line 939
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 940
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 941
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 959
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 961
    const-string/jumbo v2, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, mUserManager:Landroid/os/UserManager;

    .line 962
    return-void

    .line 896
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    :cond_5de
    const/4 v2, 0x0

    goto/16 :goto_4aa

    .line 923
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    :catch_5e1
    move-exception v10

    .line 924
    .restart local v10    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto/16 :goto_552
.end method

.method private IncludeFixedApn(Ljava/lang/String;)Z
    .registers 8
    .param p1, "requestedApnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6590
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigFixedApn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6591
    .local v0, "ConfigFixedApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6592
    const-string v4, "IncludeFixedApn : ConfigFixedApn is empty! return.."

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 6601
    :cond_16
    :goto_16
    return v3

    .line 6595
    :cond_17
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6596
    .local v2, "types":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    array-length v4, v2

    if-ge v1, v4, :cond_16

    .line 6597
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 6598
    const/4 v3, 0x1

    goto :goto_16

    .line 6596
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method static synthetic access$004(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget v0, p0, mRouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mRouteIdCtr:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;IZJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # J

    .prologue
    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget v0, p0, mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    invoke-direct {p0}, handleDefaultNetworkSwitch()V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p2, p3}, sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetworkForNetId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;I)Landroid/net/LinkProperties;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1}, getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget v0, p0, mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    invoke-direct {p0}, handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 231
    invoke-direct {p0, p1}, sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    invoke-direct {p0}, handleNetworkSamplingTimeout()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 231
    invoke-direct {p0, p1}, handleRegisterNetworkRequest(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-boolean v0, p0, mIsNotificationVisible:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1}, onUserStart(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1}, onUserStop(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget v0, p0, mNotificationId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNotificationExtrainfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 231
    iget-object v0, p0, mNotificationIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/app/PendingIntent;

    .prologue
    .line 231
    invoke-direct/range {p0 .. p5}, setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .registers 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    .prologue
    .line 1549
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1550
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_3d

    .line 1551
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1563
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 1565
    :try_start_36
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_59

    .line 1571
    const/4 v3, 0x1

    :goto_3c
    return v3

    .line 1553
    :cond_3d
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 1554
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1556
    invoke-static {p2, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_12

    .line 1560
    :cond_50
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {p2, v3, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_12

    .line 1566
    .end local v2    # "iface":Ljava/lang/String;
    :catch_59
    move-exception v1

    .line 1568
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to add a route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    .line 1569
    const/4 v3, 0x0

    goto :goto_3c
.end method

.method private anyConnectSupportingKnox(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3748
    const/4 v0, 0x0

    .line 3750
    .local v0, "anyconnectSupportingKnox":Z
    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_6b

    .line 3751
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anyConnectSupportingKnox: packageName value is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anyConnectSupportingKnox: userId value is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3754
    .local v2, "i":Landroid/content/Intent;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3755
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 3756
    .local v5, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6b

    .line 3757
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3758
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_84

    move-result v7

    if-eqz v7, :cond_54

    .line 3759
    const/4 v0, 0x1

    .line 3768
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6b
    :goto_6b
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anyConnectSupportingKnox: anyconnectSupportingKnox value is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    return v0

    .line 3765
    :catch_84
    move-exception v1

    .line 3766
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at anyConnectSupportingKnox API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method private assignNextNetId(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const v4, 0xffff

    .line 969
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 970
    const/16 v0, 0x1f5

    .local v0, "i":I
    :goto_8
    if-gt v0, v4, :cond_31

    .line 971
    :try_start_a
    iget v1, p0, mNextNetId:I

    .line 972
    .local v1, "netId":I
    iget v2, p0, mNextNetId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextNetId:I

    if-le v2, v4, :cond_18

    const/16 v2, 0x1f5

    iput v2, p0, mNextNetId:I

    .line 974
    :cond_18
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2e

    .line 975
    new-instance v2, Landroid/net/Network;

    invoke-direct {v2, v1}, Landroid/net/Network;-><init>(I)V

    iput-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 976
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 977
    monitor-exit v3

    return-void

    .line 970
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 980
    .end local v1    # "netId":I
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_3a

    .line 981
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No free netIds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 980
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method private assignNextNetIdForKnoxNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5404
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v4

    .line 5407
    :try_start_3
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 5408
    .local v1, "interfaceName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 5411
    .local v2, "netId":I
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5412
    :cond_12
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "invalid netId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_23

    .line 5430
    .end local v1    # "interfaceName":Ljava/lang/String;
    .end local v2    # "netId":I
    :catch_1a
    move-exception v0

    .line 5431
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "netId allocation failed due to unknown reason"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5433
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v3

    .line 5415
    .restart local v1    # "interfaceName":Ljava/lang/String;
    .restart local v2    # "netId":I
    :cond_26
    :try_start_26
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->knoxProfileName:Ljava/lang/String;

    invoke-interface {v3, v5, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getNetID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5417
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6b

    .line 5418
    const-string v3, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The netId assigned to the knox vpn interface is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_73

    .line 5421
    new-instance v3, Landroid/net/Network;

    invoke-direct {v3, v2}, Landroid/net/Network;-><init>(I)V

    iput-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 5422
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_69} :catch_1a
    .catchall {:try_start_26 .. :try_end_69} :catchall_23

    .line 5423
    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_23

    .line 5434
    :goto_6a
    return-void

    .line 5427
    :cond_6b
    :try_start_6b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "invalid netId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_1a
    .catchall {:try_start_6b .. :try_end_73} :catchall_23

    .line 5433
    :cond_73
    :try_start_73
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_23

    goto :goto_6a
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 10
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    .prologue
    .line 5809
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v3, :cond_5

    .line 5846
    :goto_4
    return-void

    .line 5810
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5811
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v3, Landroid/net/NetworkRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/NetworkRequest;

    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5813
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 5814
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x80005

    if-eq p3, v3, :cond_33

    const v3, 0x80008

    if-eq p3, v3, :cond_33

    .line 5816
    const-class v3, Landroid/net/Network;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5818
    :cond_33
    packed-switch p3, :pswitch_data_aa

    .line 5834
    :goto_36
    :pswitch_36
    iput p3, v2, Landroid/os/Message;->what:I

    .line 5835
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5838
    :try_start_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, notifyTypeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 5841
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_67} :catch_68

    goto :goto_4

    .line 5842
    :catch_68
    move-exception v1

    .line 5844
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_4

    .line 5820
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_82
    const/16 v3, 0x7530

    iput v3, v2, Landroid/os/Message;->arg1:I

    goto :goto_36

    .line 5824
    :pswitch_87
    const-class v3, Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_36

    .line 5829
    :pswitch_98
    const-class v3, Landroid/net/LinkProperties;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_36

    .line 5818
    nop

    :pswitch_data_aa
    .packed-switch 0x80003
        :pswitch_82
        :pswitch_36
        :pswitch_36
        :pswitch_87
        :pswitch_98
    .end packed-switch
.end method

.method private checkIfCallerIsProxyCisco(Lcom/android/internal/net/VpnConfig;I)V
    .registers 13
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "user"    # I

    .prologue
    const/4 v9, 0x1

    .line 3715
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    if-lt v6, v9, :cond_bb

    .line 3716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3717
    .local v5, "transformedVendorName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v6}, getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v2

    .line 3718
    .local v2, "callingApp":Ljava/lang/String;
    const-string v6, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 3719
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    if-eqz v6, :cond_bb

    .line 3721
    :try_start_3a
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getActiveProfilesForVendor(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3722
    .local v1, "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeProfiles = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tv = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    const/4 v0, 0x0

    .line 3724
    .local v0, "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v1, :cond_ac

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_ac

    .line 3725
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeProfiles length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3727
    .restart local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    if-eqz v0, :cond_ac

    .line 3728
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activeAnyConnectProfile not null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    iput-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 3733
    :cond_ac
    if-eqz v0, :cond_bb

    .line 3734
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v4

    .line 3735
    .local v4, "profileType":I
    if-ne v4, v9, :cond_bb

    .line 3736
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_bb} :catch_bc

    .line 3745
    .end local v0    # "activeAnyConnectProfile":Ljava/lang/String;
    .end local v1    # "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "callingApp":Ljava/lang/String;
    .end local v4    # "profileType":I
    .end local v5    # "transformedVendorName":Ljava/lang/String;
    :cond_bb
    :goto_bb
    return-void

    .line 3739
    .restart local v2    # "callingApp":Ljava/lang/String;
    .restart local v5    # "transformedVendorName":Ljava/lang/String;
    :catch_bc
    move-exception v3

    .line 3740
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:checkIfCallerIsKnoxCisco"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb
.end method

.method private checkIfKnoxNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 6
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5392
    const/4 v0, 0x0

    .line 5393
    .local v0, "isKnoxNetwork":Z
    if-eqz p1, :cond_8

    .line 5394
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->knoxProfile:Z

    if-eqz v1, :cond_8

    .line 5395
    const/4 v0, 0x1

    .line 5398
    :cond_8
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hsengiv:checkWhatTypeOfNetwork and the value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    return v0
.end method

.method private checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3865
    const/4 v0, 0x0

    .line 3866
    .local v0, "profileExists":Z
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_21

    .line 3867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3869
    .local v1, "user":I
    iget-object v3, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 3870
    .local v2, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3871
    const/4 v0, 0x1

    .line 3874
    .end local v1    # "user":I
    .end local v2    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_21
    return v0
.end method

.method private checkKnoxVpnProfileType(Lcom/android/internal/net/VpnConfig;)I
    .registers 12
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    const/4 v9, 0x1

    .line 3671
    const/4 v3, 0x0

    .line 3672
    .local v3, "type":I
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    if-ge v6, v9, :cond_26

    .line 3673
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 3695
    .end local v3    # "type":I
    .local v4, "type":I
    :goto_25
    return v4

    .line 3677
    .end local v4    # "type":I
    .restart local v3    # "type":I
    :cond_26
    :try_start_26
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v6

    if-eqz v6, :cond_b1

    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v6, :cond_b1

    .line 3678
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkKnoxVpnProfileType: profile name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3680
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3681
    .local v5, "userId":I
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkKnoxVpnProfileType is called by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    iget-object v6, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v6, v7, v0, v5}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result v2

    .line 3683
    .local v2, "profileCreatedByKnoxAdmin":Z
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkKnoxVpnProfileType: profileCreatedByKnoxAdmin value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    if-eqz v2, :cond_b1

    .line 3685
    iget-object v6, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    iget-object v7, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v3

    .line 3686
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkKnoxVpnProfileType: type value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    if-ne v3, v9, :cond_b1

    .line 3688
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_b1} :catch_b4

    .end local v0    # "callingUid":I
    .end local v2    # "profileCreatedByKnoxAdmin":Z
    .end local v5    # "userId":I
    :cond_b1
    :goto_b1
    move v4, v3

    .line 3695
    .end local v3    # "type":I
    .restart local v4    # "type":I
    goto/16 :goto_25

    .line 3692
    .end local v4    # "type":I
    .restart local v3    # "type":I
    :catch_b4
    move-exception v1

    .line 3693
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at checkIfStrongswanProfileIsKnoxBased "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3516
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 3517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3519
    :cond_8
    return-object p0
.end method

.method private checkSourceRouteCondition(I)Z
    .registers 6
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 5602
    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_1a

    .line 5603
    :cond_5
    const-string v1, "enabled"

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5613
    :cond_19
    :goto_19
    return v0

    .line 5608
    :cond_1a
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_29

    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isExtraCapable(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5609
    const/4 v1, 0x5

    if-eq p1, v1, :cond_19

    .line 5613
    :cond_29
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 6567
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x2000

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 6568
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6569
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 6570
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 6572
    return-object v0
.end method

.method private declared-synchronized disconnect(Ljava/lang/String;I)Z
    .registers 28
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 4276
    monitor-enter p0

    const/4 v11, 0x0

    .line 4277
    .local v11, "isSystemVpn":Z
    const/16 v20, 0x0

    .line 4278
    .local v20, "vpnState":Landroid/net/NetworkInfo$State;
    const-wide/16 v16, -0x1

    .line 4279
    .local v16, "showIdentity":J
    :try_start_6
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "vpn disconnect :  Profile: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " callingUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    invoke-direct/range {p0 .. p0}, getKnoxVpnFeature()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5d

    .line 4281
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, getKnoxVpnFeature()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_3a2

    .line 4282
    const/16 v22, 0x0

    .line 4414
    :goto_5b
    monitor-exit p0

    return v22

    .line 4284
    :cond_5d
    if-nez p1, :cond_6a

    .line 4285
    :try_start_5f
    const-string v22, "ConnectivityService"

    const-string/jumbo v23, "vpn Profile Name passed is null in disconnect"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_3a2

    .line 4414
    :cond_67
    :goto_67
    const/16 v22, 0x0

    goto :goto_5b

    .line 4288
    :cond_6a
    :try_start_6a
    new-instance v3, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v3}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 4289
    .local v3, "config":Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 4290
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "config.session value is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v3, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    const/4 v8, 0x0

    .line 4292
    .local v8, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 4293
    .local v15, "user":I
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "user value is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_d5

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v8, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4298
    .restart local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_d5
    if-nez v8, :cond_141

    .line 4299
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "enterpriseVpn value is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    const/4 v13, 0x0

    .line 4301
    .local v13, "mProfileFound":Z
    const/4 v12, 0x0

    .line 4302
    .local v12, "key":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f4
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_138

    .line 4303
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_13e

    .line 4305
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v8, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4306
    .restart local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v8, :cond_13e

    .line 4307
    const/4 v13, 0x1

    .line 4308
    move v15, v12

    .line 4313
    :cond_138
    if-nez v13, :cond_141

    .line 4314
    const/16 v22, 0x0

    goto/16 :goto_5b

    .line 4302
    :cond_13e
    add-int/lit8 v9, v9, 0x1

    goto :goto_f4

    .line 4318
    .end local v9    # "i":I
    .end local v12    # "key":I
    .end local v13    # "mProfileFound":Z
    :cond_141
    if-eqz v8, :cond_67

    .line 4319
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "enterpriseVpn value is not null "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    const/4 v2, 0x1

    .line 4321
    .local v2, "bVpnDialogCall":Z
    invoke-virtual {v8}, Lcom/android/server/connectivity/EnterpriseVpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    .line 4322
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1ab

    .line 4323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4324
    .local v18, "token":J
    invoke-virtual {v8}, Lcom/android/server/connectivity/EnterpriseVpn;->prepare()Z

    .line 4325
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4326
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.android.vpndialogs"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1aa

    const/16 v22, 0x3e8

    move/from16 v0, p2

    move/from16 v1, v22

    if-eq v0, v1, :cond_1aa

    .line 4327
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->delete(I)V

    .line 4328
    const/4 v2, 0x0

    .line 4330
    :cond_1aa
    const/4 v11, 0x1

    .line 4332
    .end local v18    # "token":J
    :cond_1ab
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "vpn Initial numberOfConnectedProfile value : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "vpnState : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    sget-object v22, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1f7

    sget-object v22, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2ca

    .line 4335
    :cond_1f7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4336
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v3, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Lcom/android/internal/net/VpnConfig;Z)V

    .line 4337
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_205} :catch_383
    .catchall {:try_start_6a .. :try_end_205} :catchall_3a2

    .line 4342
    :try_start_205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4343
    move-object/from16 v0, p0

    iget-boolean v0, v0, knoxV2Enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3a5

    .line 4344
    if-eqz v11, :cond_2ce

    .line 4346
    invoke-virtual {v8}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v5

    .line 4347
    .local v5, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4349
    if-eqz v5, :cond_404

    .line 4350
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_228
    :goto_228
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_404

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4351
    .local v4, "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, hasInterfaceAsUser(I)Z

    move-result v22

    if-nez v22, :cond_228

    .line 4352
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The connected Vpn is not exists in user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    invoke-virtual {v8, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_25d} :catch_25e
    .catchall {:try_start_205 .. :try_end_25d} :catchall_37e

    goto :goto_228

    .line 4391
    .end local v4    # "domain":I
    .end local v5    # "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_25e
    move-exception v7

    .line 4392
    .local v7, "e":Ljava/lang/Exception;
    :try_start_25f
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27b
    .catchall {:try_start_25f .. :try_end_27b} :catchall_37e

    .line 4394
    :try_start_27b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4397
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_27e
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 4398
    .local v21, "vpnStoreObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-eqz v2, :cond_295

    .line 4399
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4400
    :cond_295
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v22

    if-eqz v22, :cond_2a1

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_409

    .line 4401
    :cond_2a1
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "disconnect - deleting vpnStoreObj : user = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2c6
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_2c6} :catch_383
    .catchall {:try_start_27b .. :try_end_2c6} :catchall_3a2

    .line 4408
    :goto_2c6
    const/16 v22, 0x1

    goto/16 :goto_5b

    .line 4339
    .end local v21    # "vpnStoreObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_2ca
    const/16 v22, 0x0

    goto/16 :goto_5b

    .line 4358
    :cond_2ce
    :try_start_2ce
    invoke-direct/range {p0 .. p1}, getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 4359
    .local v6, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_333

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_333

    .line 4360
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2db
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_404

    .line 4361
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, hasInterfaceAsUser(I)Z

    move-result v22

    if-nez v22, :cond_330

    .line 4362
    const-string v23, "ConnectivityService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The connected Vpn is not exists in user "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 4360
    :cond_330
    add-int/lit8 v9, v9, 0x1

    goto :goto_2db

    .line 4368
    .end local v9    # "i":I
    :cond_333
    invoke-virtual {v8}, Lcom/android/server/connectivity/EnterpriseVpn;->getPersonaUserIds()Ljava/util/ArrayList;

    move-result-object v14

    .line 4369
    .local v14, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4371
    if-eqz v14, :cond_404

    .line 4372
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_348
    :goto_348
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_404

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4373
    .restart local v4    # "domain":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, hasInterfaceAsUser(I)Z

    move-result v22

    if-nez v22, :cond_348

    .line 4374
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The connected Vpn is not exists in user "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    invoke-virtual {v8, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_37d} :catch_25e
    .catchall {:try_start_2ce .. :try_end_37d} :catchall_37e

    goto :goto_348

    .line 4394
    .end local v4    # "domain":I
    .end local v6    # "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_37e
    move-exception v22

    :try_start_37f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_37f .. :try_end_383} :catch_383
    .catchall {:try_start_37f .. :try_end_383} :catchall_3a2

    .line 4410
    .end local v2    # "bVpnDialogCall":Z
    .end local v3    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v15    # "user":I
    :catch_383
    move-exception v7

    .line 4411
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_384
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a0
    .catchall {:try_start_384 .. :try_end_3a0} :catchall_3a2

    goto/16 :goto_67

    .line 4276
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3a2
    move-exception v22

    monitor-exit p0

    throw v22

    .line 4382
    .restart local v2    # "bVpnDialogCall":Z
    .restart local v3    # "config":Lcom/android/internal/net/VpnConfig;
    .restart local v8    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v15    # "user":I
    :cond_3a5
    :try_start_3a5
    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v22, v0

    if-lez v22, :cond_3bb

    .line 4383
    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, numberOfConnectedProfile:I

    .line 4385
    :cond_3bb
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "vpn Final numberOfConnectedProfile value is"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v22, v0

    if-nez v22, :cond_404

    .line 4387
    const-string v22, "ConnectivityService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "vpn numberOfConnectedProfile value check if 0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, numberOfConnectedProfile:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    invoke-virtual {v8}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification()V
    :try_end_404
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_404} :catch_25e
    .catchall {:try_start_3a5 .. :try_end_404} :catchall_37e

    .line 4394
    :cond_404
    :try_start_404
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_27e

    .line 4404
    .restart local v21    # "vpnStoreObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_409
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_404 .. :try_end_416} :catch_383
    .catchall {:try_start_404 .. :try_end_416} :catchall_3a2

    goto/16 :goto_2c6
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1689
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 1695
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 1707
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    return-void
.end method

.method private enforceInternetPermission()V
    .registers 4

    .prologue
    .line 1683
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .prologue
    .line 1701
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method private establishEnterpriseVpnForKnox1VpnClients(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "enterpriseVpn"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "user"    # I
    .param p4, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 3990
    const/4 v3, 0x0

    .line 3991
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_26

    .line 3992
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 4025
    :goto_25
    return-object v4

    .line 3996
    :cond_26
    :try_start_26
    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v4, :cond_47

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 3997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4}, getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v1

    .line 3998
    .local v1, "callingApp":Ljava/lang/String;
    const-string v4, "com.mocana.vpn.android"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3999
    iget-object v4, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v4, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4002
    .end local v1    # "callingApp":Ljava/lang/String;
    :cond_47
    if-eqz p1, :cond_94

    .line 4003
    iput-object p4, p2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 4004
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 4005
    if-eqz v3, :cond_7a

    .line 4006
    iget-boolean v4, p0, knoxV2Enabled:Z

    if-nez v4, :cond_5b

    .line 4007
    iget v4, p0, numberOfConnectedProfile:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, numberOfConnectedProfile:I

    .line 4009
    :cond_5b
    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v4, :cond_67

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7a

    .line 4010
    :cond_67
    invoke-virtual {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4011
    .local v0, "callerName":Ljava/lang/String;
    const-string v4, "com.mocana.vpn.android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 4012
    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v5, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-direct {p0, p4, v4, v5}, setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 4016
    .end local v0    # "callerName":Ljava/lang/String;
    :cond_7a
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "establishEnterpriseVpnForKnox1VpnClients : Returning fd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 4017
    goto :goto_25

    .line 4019
    :cond_94
    const-string v4, "ConnectivityService"

    const-string v5, "establishEnterpriseVpnForKnox1VpnClients : Returning fd = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_9b} :catch_9d

    .line 4020
    const/4 v4, 0x0

    goto :goto_25

    .line 4022
    :catch_9d
    move-exception v2

    .line 4023
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at establishEnterpriseVpnForKnox1VpnClients API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 4025
    goto/16 :goto_25
.end method

.method private establishEnterpriseVpnForKnox2VpnClients(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "enterpriseVpn"    # Lcom/android/server/connectivity/EnterpriseVpn;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "user"    # I
    .param p4, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4029
    const/4 v1, 0x0

    .line 4030
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    if-ge v3, v4, :cond_26

    .line 4031
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 4050
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_25
    return-object v2

    .line 4035
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_26
    :try_start_26
    invoke-virtual {p0, p4}, knoxVpnProfileType(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5f

    .line 4036
    const-string v3, "ConnectivityService"

    const-string v4, "establishEnterpriseVpnForKnox2VpnClients: profile is of per-app type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    iget-object v3, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v3, :cond_41

    .line 4038
    const-string v3, "ConnectivityService"

    const-string v4, "establishEnterpriseVpnForKnox2VpnClients: route parameter is set to null by framework"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 4041
    :cond_41
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 4046
    :goto_45
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "establishEnterpriseVpnForKnox2VpnClients:knoxV2Enabled: Returning knoxV2VpnFd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    move-object v2, v1

    .line 4050
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_25

    .line 4043
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_5f
    const-string v3, "ConnectivityService"

    const-string v4, "establishEnterpriseVpnForKnox2VpnClients: profile is of not per-app type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p2}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_71} :catch_73

    move-result-object v1

    goto :goto_45

    .line 4047
    :catch_73
    move-exception v0

    .line 4048
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exeption at establishEnterpriseVpnForKnox2VpnClients API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method private flushVmDnsCache()V
    .registers 6

    .prologue
    .line 2173
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2174
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2178
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2181
    .local v0, "ident":J
    :try_start_15
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 2183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2185
    return-void

    .line 2183
    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getApnType(I)Ljava/lang/String;
    .registers 3
    .param p1, "legacyType"    # I

    .prologue
    .line 6616
    sparse-switch p1, :sswitch_data_e

    .line 6622
    const-string v0, "default"

    :goto_5
    return-object v0

    .line 6618
    :sswitch_6
    const-string v0, "cbs"

    goto :goto_5

    .line 6620
    :sswitch_9
    const-string/jumbo v0, "xcap"

    goto :goto_5

    .line 6616
    nop

    :sswitch_data_e
    .sparse-switch
        0xc -> :sswitch_6
        0x1b -> :sswitch_9
    .end sparse-switch
.end method

.method private getApnTypeFromNetCap(I)Ljava/lang/String;
    .registers 3
    .param p1, "netCap"    # I

    .prologue
    .line 6627
    sparse-switch p1, :sswitch_data_e

    .line 6633
    const-string v0, "default"

    :goto_5
    return-object v0

    .line 6629
    :sswitch_6
    const-string v0, "cbs"

    goto :goto_5

    .line 6631
    :sswitch_9
    const-string/jumbo v0, "xcap"

    goto :goto_5

    .line 6627
    nop

    :sswitch_data_e
    .sparse-switch
        0x5 -> :sswitch_6
        0x9 -> :sswitch_9
    .end sparse-switch
.end method

.method private getConnectivityChangeDelay()I
    .registers 5

    .prologue
    .line 985
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 988
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 991
    .local v1, "defaultDelay":I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
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
    .line 4194
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_46

    .line 4195
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_48

    move-result-object v1

    .line 4197
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_e
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4198
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_29
    .catchall {:try_start_e .. :try_end_1d} :catchall_48

    move-result-object v2

    .line 4207
    .end local v1    # "getProperty":Ljava/lang/String;
    :goto_1e
    monitor-exit p0

    return-object v2

    .line 4200
    .restart local v1    # "getProperty":Ljava/lang/String;
    :cond_20
    :try_start_20
    invoke-direct {p0}, getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_29
    .catchall {:try_start_20 .. :try_end_27} :catchall_48

    move-result-object v2

    goto :goto_1e

    .line 4202
    :catch_29
    move-exception v0

    .line 4203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v2, "ConnectivityService"

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
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_48

    .line 4207
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :cond_46
    const/4 v2, 0x0

    goto :goto_1e

    .line 4194
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getFilteredNetworkInfo(II)Landroid/net/NetworkInfo;
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1048
    invoke-direct {p0, p1}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1049
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0, p1, p2}, getFilteredNetworkInfo(Landroid/net/NetworkInfo;II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkInfo;II)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "networkType"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1056
    invoke-direct {p0, p2, p3}, isNetworkBlocked(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1058
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1059
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string/jumbo v1, "returning Blocked NetworkInfo"

    invoke-static {v1}, log(Ljava/lang/String;)V

    move-object p1, v0

    .line 1062
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_18
    iget-object v1, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_28

    .line 1063
    iget-object v1, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1064
    const-string/jumbo v1, "returning Locked NetworkInfo"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1066
    :cond_28
    return-object p1
.end method

.method private getFilteredNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/net/NetworkInfo;
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1070
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1071
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, isNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1073
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1074
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string/jumbo v2, "returning Blocked NetworkInfo"

    invoke-static {v2}, log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1077
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1a
    iget-object v2, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v2, :cond_2a

    .line 1078
    iget-object v2, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1079
    const-string/jumbo v2, "returning Locked NetworkInfo"

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1081
    :cond_2a
    return-object v0
.end method

.method private getKnoxVpnFeature()I
    .registers 2

    .prologue
    .line 592
    const/4 v0, 0x2

    iput v0, p0, KNOXVPN_FEATURE:I

    .line 594
    iget v0, p0, KNOXVPN_FEATURE:I

    return v0
.end method

.method private getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .registers 4

    .prologue
    .line 4083
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_17

    .line 4084
    iget-object v1, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-nez v1, :cond_17

    .line 4085
    const-string v1, "knox_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4087
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    iput-object v1, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 4090
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_17
    iget-object v1, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v1
.end method

.method private getLinkProperties(II)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1300
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1302
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1303
    iget-object v1, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getEnterpriseNetworkType(II)I

    move-result v0

    .line 1304
    .local v0, "entType":I
    if-eq v0, p1, :cond_12

    .line 1305
    move p1, v0

    .line 1307
    :cond_12
    invoke-direct {p0, p1}, getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1310
    .end local v0    # "entType":I
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "networkType"    # I

    .prologue
    .line 6442
    iget-object v1, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 6443
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_15

    .line 6444
    monitor-enter v0

    .line 6445
    :try_start_9
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v0

    .line 6448
    :goto_11
    return-object v1

    .line 6446
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    .line 6448
    :cond_15
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_11
.end method

.method private getNetworkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;
    .registers 5
    .param p1, "networkType"    # I

    .prologue
    .line 6472
    iget-object v1, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 6473
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_15

    .line 6474
    monitor-enter v0

    .line 6475
    :try_start_9
    new-instance v1, Landroid/net/NetworkCapabilities;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v1, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    monitor-exit v0

    .line 6478
    :goto_11
    return-object v1

    .line 6476
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    .line 6478
    :cond_15
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_11
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, getNetworkInfo(IIZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkInfo(IIZ)Landroid/net/NetworkInfo;
    .registers 8
    .param p1, "networkType"    # I
    .param p2, "uid"    # I
    .param p3, "activeNetworkRequest"    # Z

    .prologue
    .line 1172
    const/4 v2, 0x0

    .line 1174
    .local v2, "info":Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1175
    invoke-direct {p0, p1}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1176
    invoke-direct {p0, p1, p2}, getFilteredNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1181
    :cond_11
    iget-object v3, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getEnterpriseNetworkType(II)I

    move-result v1

    .line 1182
    .local v1, "entType":I
    if-eq v1, p1, :cond_36

    const/4 v3, -0x1

    if-eq v1, v3, :cond_36

    .line 1183
    invoke-direct {p0, v1}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1184
    .local v0, "entInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_36

    if-nez p3, :cond_26

    if-nez p1, :cond_36

    .line 1186
    :cond_26
    new-instance v2, Landroid/net/NetworkInfo;

    .end local v2    # "info":Landroid/net/NetworkInfo;
    invoke-direct {v2, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1187
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    const/4 p1, 0x0

    .line 1188
    invoke-virtual {v2, p1}, Landroid/net/NetworkInfo;->setType(I)V

    .line 1189
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setTypeName(Ljava/lang/String;)V

    .line 1200
    .end local v0    # "entInfo":Landroid/net/NetworkInfo;
    :cond_36
    return-object v2
.end method

.method private getNetworkInfoForType(I)Landroid/net/NetworkInfo;
    .registers 8
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 6452
    iget-object v3, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_b

    move-object v1, v2

    .line 6467
    :cond_a
    :goto_a
    return-object v1

    .line 6455
    :cond_b
    iget-object v3, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 6456
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1e

    .line 6457
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 6458
    .local v1, "result":Landroid/net/NetworkInfo;
    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setType(I)V

    goto :goto_a

    .line 6461
    .end local v1    # "result":Landroid/net/NetworkInfo;
    :cond_1e
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 6463
    .restart local v1    # "result":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6464
    const/16 v2, 0xd

    if-eq p1, v2, :cond_a

    .line 6465
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    goto :goto_a
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    .line 1410
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1411
    invoke-direct {p0, p1}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1412
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1a

    .line 1413
    new-instance v1, Landroid/net/NetworkState;

    invoke-direct {p0, p1}, getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-direct {p0, p1}, getNetworkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 1418
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private getNetworkType(I)I
    .registers 3
    .param p1, "netCap"    # I

    .prologue
    .line 6605
    sparse-switch p1, :sswitch_data_c

    .line 6611
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 6607
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_4

    .line 6609
    :sswitch_8
    const/16 v0, 0x1b

    goto :goto_4

    .line 6605
    nop

    :sswitch_data_c
    .sparse-switch
        0x5 -> :sswitch_5
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method private getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;
    .registers 4

    .prologue
    .line 4543
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_25

    .line 4544
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    const/4 v0, 0x0

    .line 4547
    :goto_24
    return-object v0

    :cond_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    goto :goto_24
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .registers 8
    .param p1, "uid"    # I

    .prologue
    .line 4551
    const/4 v2, 0x0

    .line 4553
    .local v2, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2f

    .line 4554
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4555
    .local v1, "packageList":[Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 4556
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 4557
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageNameFromUid: packageName value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    .line 4563
    .end local v1    # "packageList":[Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object v2

    .line 4560
    :catch_30
    move-exception v0

    .line 4561
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at getPackageName API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private declared-synchronized getProfilesByDomain(I)Ljava/util/List;
    .registers 7
    .param p1, "domain"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4211
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4e

    .line 4212
    const-string v2, "net.vpn.framework"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_50

    move-result-object v1

    .line 4214
    .local v1, "getProperty":Ljava/lang/String;
    :try_start_e
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4215
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_31
    .catchall {:try_start_e .. :try_end_21} :catchall_50

    move-result-object v2

    .line 4224
    .end local v1    # "getProperty":Ljava/lang/String;
    :goto_22
    monitor-exit p0

    return-object v2

    .line 4217
    .restart local v1    # "getProperty":Ljava/lang/String;
    :cond_24
    :try_start_24
    invoke-direct {p0}, getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_31
    .catchall {:try_start_24 .. :try_end_2f} :catchall_50

    move-result-object v2

    goto :goto_22

    .line 4219
    :catch_31
    move-exception v0

    .line 4220
    .local v0, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v2, "ConnectivityService"

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
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_50

    .line 4224
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "getProperty":Ljava/lang/String;
    :cond_4e
    const/4 v2, 0x0

    goto :goto_22

    .line 4211
    :catchall_50
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getProvisioningNetworkInfo()Landroid/net/NetworkInfo;
    .registers 8

    .prologue
    .line 1108
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1111
    const/4 v4, 0x0

    .line 1113
    .local v4, "provNi":Landroid/net/NetworkInfo;
    invoke-virtual {p0}, getAllNetworkInfoEx()[Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    .line 1114
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1115
    move-object v4, v3

    .line 1119
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProvisioningNetworkInfo: X provNi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 1120
    return-object v4

    .line 1113
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private getProvisioningUrlBaseFromFile(I)Ljava/lang/String;
    .registers 14
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 4815
    const/4 v3, 0x0

    .line 4816
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 4817
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4820
    .local v0, "config":Landroid/content/res/Configuration;
    packed-switch p1, :pswitch_data_114

    .line 4828
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProvisioningUrlBaseFromFile: Unexpected parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4822
    :pswitch_29
    const-string/jumbo v8, "provisioningUrl"

    .line 4833
    .local v8, "tagType":Ljava/lang/String;
    :goto_2c
    :try_start_2c
    new-instance v4, Ljava/io/FileReader;

    iget-object v10, p0, mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_33} :catch_111
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_33} :catch_b8
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_d9
    .catchall {:try_start_2c .. :try_end_33} :catchall_fa

    .line 4834
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_33
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 4835
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4836
    const-string/jumbo v10, "provisioningUrls"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4839
    :cond_40
    :goto_40
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4841
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_46} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_46} :catch_10e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_10b
    .catchall {:try_start_33 .. :try_end_46} :catchall_108

    move-result-object v2

    .line 4842
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_54

    .line 4869
    if-eqz v4, :cond_4e

    .line 4871
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_103

    :cond_4e
    :goto_4e
    move-object v3, v4

    .line 4875
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :cond_4f
    :goto_4f
    return-object v9

    .line 4825
    .end local v8    # "tagType":Ljava/lang/String;
    :pswitch_50
    const-string/jumbo v8, "redirectedUrl"

    .line 4826
    .restart local v8    # "tagType":Ljava/lang/String;
    goto :goto_2c

    .line 4844
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_54
    :try_start_54
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 4845
    const/4 v10, 0x0

    const-string v11, "mcc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_60} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_60} :catch_10e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_10b
    .catchall {:try_start_54 .. :try_end_60} :catchall_108

    move-result-object v5

    .line 4847
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_40

    :try_start_63
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v10, v11, :cond_40

    .line 4848
    const/4 v10, 0x0

    const-string v11, "mnc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4849
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_40

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v10, v11, :cond_40

    .line 4850
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4851
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_40

    .line 4852
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_89} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_89} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_89} :catch_10e
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_89} :catch_10b
    .catchall {:try_start_63 .. :try_end_89} :catchall_108

    move-result-object v9

    .line 4869
    if-eqz v4, :cond_8f

    .line 4871
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_101

    :cond_8f
    :goto_8f
    move-object v3, v4

    .line 4872
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4f

    .line 4856
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "mnc":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_91
    move-exception v1

    .line 4857
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, loge(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_a8} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_a8} :catch_10e
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a8} :catch_10b
    .catchall {:try_start_92 .. :try_end_a8} :catchall_108

    goto :goto_40

    .line 4862
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    :catch_a9
    move-exception v1

    move-object v3, v4

    .line 4863
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_ab
    :try_start_ab
    const-string v10, "Carrier Provisioning Urls file not found"

    invoke-static {v10}, loge(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_fa

    .line 4869
    if-eqz v3, :cond_4f

    .line 4871
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_4f

    .line 4872
    :catch_b6
    move-exception v10

    goto :goto_4f

    .line 4864
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_b8
    move-exception v1

    .line 4865
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b9
    :try_start_b9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, loge(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_b9 .. :try_end_cf} :catchall_fa

    .line 4869
    if-eqz v3, :cond_4f

    .line 4871
    :try_start_d1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_4f

    .line 4872
    :catch_d6
    move-exception v10

    goto/16 :goto_4f

    .line 4866
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d9
    move-exception v1

    .line 4867
    .local v1, "e":Ljava/io/IOException;
    :goto_da
    :try_start_da
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, loge(Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_da .. :try_end_f0} :catchall_fa

    .line 4869
    if-eqz v3, :cond_4f

    .line 4871
    :try_start_f2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f7

    goto/16 :goto_4f

    .line 4872
    :catch_f7
    move-exception v10

    goto/16 :goto_4f

    .line 4869
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_fa
    move-exception v9

    :goto_fb
    if-eqz v3, :cond_100

    .line 4871
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_106

    .line 4872
    :cond_100
    :goto_100
    throw v9

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "mcc":Ljava/lang/String;
    .restart local v6    # "mnc":Ljava/lang/String;
    :catch_101
    move-exception v10

    goto :goto_8f

    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :catch_103
    move-exception v10

    goto/16 :goto_4e

    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_106
    move-exception v10

    goto :goto_100

    .line 4869
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_108
    move-exception v9

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_fb

    .line 4866
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_10b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_da

    .line 4864
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_10e
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_b9

    .line 4862
    :catch_111
    move-exception v1

    goto :goto_ab

    .line 4820
    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_50
        :pswitch_29
    .end packed-switch
.end method

.method private getUIDForPackage(ILjava/lang/String;)I
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4521
    const/4 v3, -0x1

    .line 4523
    .local v3, "uid":I
    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5e

    .line 4524
    invoke-direct {p0}, getPackageManagerForQueryUid()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4525
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4526
    .local v4, "token":J
    const/16 v6, 0x2080

    invoke-interface {v2, p2, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4527
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const-string v6, "ConnectivityService"

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

    .line 4528
    if-eqz v1, :cond_39

    .line 4529
    const-string v6, "ConnectivityService"

    const-string v7, "application uid for info : null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4532
    :cond_39
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4533
    const-string v6, "ConnectivityService"

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
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_5f

    .line 4539
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "token":J
    :cond_5e
    :goto_5e
    return v3

    .line 4535
    :catch_5f
    move-exception v0

    .line 4536
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ConnectivityService"

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

    .line 4537
    const/4 v3, -0x1

    goto :goto_5e
.end method

.method private getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 4069
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_21

    .line 4070
    iget-object v1, p0, mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_21

    .line 4071
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4073
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    .line 4074
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4076
    :cond_1b
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 4079
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_21
    iget-object v1, p0, mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 9
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3347
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_18
    const-string v3, "SBM"

    const-string/jumbo v4, "ro.csc.sales_code"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 3350
    :cond_29
    const/4 p1, 0x0

    .line 3352
    :cond_2a
    iget-object v4, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3353
    :try_start_2d
    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3354
    .local v2, "salesCode":Ljava/lang/String;
    const-string v3, "CHN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "CHM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "CHC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "CHU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 3355
    :cond_54
    invoke-virtual {p0}, getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3356
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_72

    .line 3357
    const-string v3, "3gwap"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 3358
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v3, "10.0.0.172"

    const/16 v5, 0x50

    const-string v6, ""

    invoke-direct {v1, v3, v5, v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    .local v1, "proxy":Landroid/net/ProxyInfo;
    move-object p1, v1

    .line 3362
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "proxy":Landroid/net/ProxyInfo;
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_72
    iget-object v3, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v3, :cond_80

    iget-object v3, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    monitor-exit v4

    .line 3388
    :goto_7f
    return-void

    .line 3363
    :cond_80
    iget-object v3, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    if-ne v3, p1, :cond_89

    monitor-exit v4

    goto :goto_7f

    .line 3387
    .end local v2    # "salesCode":Ljava/lang/String;
    :catchall_86
    move-exception v3

    monitor-exit v4
    :try_end_88
    .catchall {:try_start_2d .. :try_end_88} :catchall_86

    throw v3

    .line 3364
    .restart local v2    # "salesCode":Ljava/lang/String;
    :cond_89
    if-eqz p1, :cond_ad

    :try_start_8b
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_ad

    .line 3365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid proxy properties, ignoring: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 3366
    monitor-exit v4

    goto :goto_7f

    .line 3374
    :cond_ad
    iget-object v3, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v3, :cond_d8

    if-eqz p1, :cond_d8

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 3377
    iput-object p1, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3378
    iget-object v3, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v3}, sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3379
    monitor-exit v4

    goto :goto_7f

    .line 3381
    :cond_d8
    iput-object p1, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3383
    iget-object v3, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v3, :cond_e0

    monitor-exit v4

    goto :goto_7f

    .line 3384
    :cond_e0
    iget-boolean v3, p0, mDefaultProxyDisabled:Z

    if-nez v3, :cond_e7

    .line 3385
    invoke-direct {p0, p1}, sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3387
    :cond_e7
    monitor-exit v4
    :try_end_e8
    .catchall {:try_start_8b .. :try_end_e8} :catchall_86

    goto :goto_7f
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2615
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkAgentInfos:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2616
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v9, :cond_28d

    .line 2618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " got DISCONNECTED, was satisfying "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, log(Ljava/lang/String;)V

    .line 2621
    iget-boolean v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v13, :cond_41

    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4c

    .line 2627
    :cond_41
    :try_start_41
    move-object/from16 v0, p0

    iget-object v13, v0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v14, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v14, v14, Landroid/net/Network;->netId:I

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_1c4

    .line 2637
    :cond_4c
    :goto_4c
    const-string v13, "DCGG"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_74

    const-string v13, "DGG"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_74

    const-string v13, "DCGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_74

    const-string v13, "DCGGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_df

    :cond_74
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_df

    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8f

    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/16 v14, 0x1a

    if-ne v13, v14, :cond_df

    .line 2645
    :cond_8f
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, isNonPreferredDataSlotMMSAPN(Landroid/net/NetworkInfo;)Z

    move-result v13

    if-eqz v13, :cond_1e4

    move-object/from16 v0, p0

    iget v13, v0, mActiveDefaultNetwork:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1e4

    .line 2646
    move-object/from16 v0, p0

    iget-object v13, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v0, p0

    iget v14, v0, mActiveDefaultNetwork:I

    invoke-virtual {v13, v14}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 2647
    .local v3, "defaulNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_1dd

    .line 2648
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    invoke-static {v14}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is disconnected, restore tcp buffersize for default network : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mActiveDefaultNetwork:I

    invoke-static {v14}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, log(Ljava/lang/String;)V

    .line 2650
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2663
    .end local v3    # "defaulNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_df
    :goto_df
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_f1

    .line 2664
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    :cond_f1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v13

    if-eqz v13, :cond_fe

    .line 2668
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, mDefaultInetConditionPublished:I

    .line 2670
    :cond_fe
    const v13, 0x80004

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2671
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v14, 0x82007

    invoke-virtual {v13, v14}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2672
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkAgentInfos:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const/4 v13, 0x0

    iget-object v14, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v9}, updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v14, v0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v14

    .line 2675
    :try_start_126
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v15, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v15, v15, Landroid/net/Network;->netId:I

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 2676
    monitor-exit v14
    :try_end_132
    .catchall {:try_start_126 .. :try_end_132} :catchall_200

    .line 2680
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2681
    .local v12, "toActivate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_138
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v7, v13, :cond_22c

    .line 2682
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkRequest;

    .line 2683
    .local v11, "request":Landroid/net/NetworkRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget v14, v11, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2684
    .local v2, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_228

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v13, v13, Landroid/net/Network;->netId:I

    iget-object v14, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v14, v14, Landroid/net/Network;->netId:I

    if-ne v13, v14, :cond_228

    .line 2686
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking for replacement network to handle request "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, log(Ljava/lang/String;)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget v14, v11, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->remove(I)V

    .line 2689
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2690
    const/4 v1, 0x0

    .line 2691
    .local v1, "alternative":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_192
    :goto_192
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_203

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2692
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2693
    .local v6, "existing":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v13, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_192

    iget-object v13, v11, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v14, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v13, v14}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v13

    if-eqz v13, :cond_192

    if-eqz v1, :cond_1c2

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v13

    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v14

    if-ge v13, v14, :cond_192

    .line 2698
    :cond_1c2
    move-object v1, v6

    goto :goto_192

    .line 2628
    .end local v1    # "alternative":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "existing":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "request":Landroid/net/NetworkRequest;
    .end local v12    # "toActivate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :catch_1c4
    move-exception v4

    .line 2629
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception removing network: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, loge(Ljava/lang/String;)V

    goto/16 :goto_4c

    .line 2652
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "defaulNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1dd
    const-string v13, "default nai is null"

    invoke-static {v13}, log(Ljava/lang/String;)V

    goto/16 :goto_df

    .line 2655
    .end local v3    # "defaulNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1e4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mActiveDefaultNetwork : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, mActiveDefaultNetwork:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, log(Ljava/lang/String;)V

    goto/16 :goto_df

    .line 2676
    :catchall_200
    move-exception v13

    :try_start_201
    monitor-exit v14
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_200

    throw v13

    .line 2701
    .restart local v1    # "alternative":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v2    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "request":Landroid/net/NetworkRequest;
    .restart local v12    # "toActivate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_203
    if-eqz v1, :cond_228

    .line 2702
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " found replacement in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, log(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_228

    .line 2704
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    .end local v1    # "alternative":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_228
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_138

    .line 2709
    .end local v2    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "request":Landroid/net/NetworkRequest;
    :cond_22c
    move-object/from16 v0, p0

    iget-object v13, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v13, v9}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2710
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v14, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v14, v14, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_264

    .line 2711
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2712
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, mActiveDefaultNetwork:I

    .line 2714
    move-object/from16 v0, p0

    iget-object v13, v0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    move-object/from16 v0, p0

    iget v14, v0, mActiveDefaultNetwork:I

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->onActiveNetworkChanged(I)V

    .line 2716
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2717
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 2719
    :cond_264
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_268
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_288

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2720
    .local v10, "networkToActivate":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v13, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2721
    iget-object v13, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v14, 0x82001

    invoke-virtual {v13, v14}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2722
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_268

    .line 2725
    .end local v10    # "networkToActivate":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_288
    iget-object v13, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkMonitor;->doQuit()V

    .line 2728
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "toActivate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_28d
    return-void
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x11001

    const/16 v7, 0xd

    const/4 v5, 0x0

    .line 2571
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 2572
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2573
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_63

    .line 2574
    const-string v4, "NetworkFactory connected"

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 2575
    iget-object v4, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2578
    iget-object v4, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2579
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-boolean v4, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v4, :cond_36

    .line 2580
    iget-object v4, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v6, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2581
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const v6, 0x83000

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    :goto_5b
    iget-object v7, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v6, v4, v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_36

    :cond_61
    move v4, v5

    goto :goto_5b

    .line 2585
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_63
    const-string v4, "Error connecting NetworkFactory"

    invoke-static {v4}, loge(Ljava/lang/String;)V

    .line 2586
    iget-object v4, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    :cond_6f
    :goto_6f
    return-void

    .line 2588
    :cond_70
    iget-object v4, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2589
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_a0

    .line 2590
    const-string v4, "NetworkAgent connected"

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 2592
    iget-object v4, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2593
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v7, :cond_9a

    .line 2594
    iget-object v4, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v4, v7, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2596
    :cond_9a
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_6f

    .line 2598
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a0
    const-string v4, "Error connecting NetworkAgent"

    invoke-static {v4}, loge(Ljava/lang/String;)V

    .line 2599
    iget-object v4, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2600
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_6f

    .line 2601
    iget-object v5, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2602
    :try_start_b4
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 2603
    monitor-exit v5
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_c9

    .line 2605
    iget-object v4, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v4, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2608
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->doQuit()V

    goto :goto_6f

    .line 2603
    :catchall_c9
    move-exception v4

    :try_start_ca
    monitor-exit v5
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v4
.end method

.method private handleDefaultNetworkSwitch()V
    .registers 7

    .prologue
    .line 5874
    const/4 v0, 0x0

    .line 5875
    .local v0, "currentDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5876
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v5, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 5877
    move-object v0, v2

    .line 5881
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_24
    if-nez v0, :cond_27

    .line 5896
    :cond_26
    :goto_26
    return-void

    .line 5882
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentDefaultNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 5883
    move-object v3, v0

    .line 5884
    .local v3, "networkSwitchTo":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5885
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 5887
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    if-le v4, v5, :cond_48

    .line 5888
    move-object v3, v2

    goto :goto_48

    .line 5892
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network switch to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 5893
    if-eq v3, v0, :cond_26

    .line 5894
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v5, 0x82001

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    goto :goto_26
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3391
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3393
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 3394
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3395
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1e

    .line 3411
    .end local v0    # "data":[Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 3399
    .restart local v0    # "data":[Ljava/lang/String;
    :cond_1e
    aget-object v4, v0, v8

    .line 3400
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 3401
    .local v5, "proxyPort":I
    array-length v6, v0

    if-le v6, v9, :cond_2c

    .line 3403
    const/4 v6, 0x1

    :try_start_26
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2b} :catch_39

    move-result v5

    .line 3408
    :cond_2c
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3409
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, setGlobalProxy(Landroid/net/ProxyInfo;)V

    goto :goto_1d

    .line 3404
    .end local v2    # "p":Landroid/net/ProxyInfo;
    :catch_39
    move-exception v1

    .line 3405
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1d
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5860
    if-nez p1, :cond_8

    .line 5861
    const-string v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, loge(Ljava/lang/String;)V

    .line 5866
    :goto_7
    return-void

    .line 5864
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 5865
    invoke-direct {p0, p1}, teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_7
.end method

.method private handleNetworkSamplingTimeout()V
    .registers 12

    .prologue
    .line 5099
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5101
    .local v4, "mapIfaceToSample":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v3, :cond_1c

    aget-object v7, v0, v1

    .line 5102
    .local v7, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_19

    .line 5103
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 5104
    .local v2, "ifaceName":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 5105
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5101
    .end local v2    # "ifaceName":Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5111
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1c
    invoke-static {v4}, Landroid/net/SamplingDataTracker;->getSamplingSnapshots(Ljava/util/Map;)V

    .line 5114
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v3, :cond_3e

    aget-object v7, v0, v1

    .line 5115
    .restart local v7    # "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_3b

    .line 5116
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 5117
    .restart local v2    # "ifaceName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 5118
    .local v6, "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    if-eqz v6, :cond_3b

    .line 5120
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 5122
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 5114
    .end local v2    # "ifaceName":Ljava/lang/String;
    .end local v6    # "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 5129
    .end local v7    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_3e
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "connectivity_sampling_interval_in_seconds"

    const/16 v10, 0x2d0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 5137
    .local v5, "samplingIntervalInSeconds":I
    mul-int/lit16 v8, v5, 0x3e8

    iget-object v9, p0, mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v9}, setAlarm(ILandroid/app/PendingIntent;)V

    .line 5138
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5376
    const-string v1, "Got NetworkAgent Messenger"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 5377
    iget-object v1, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5379
    invoke-direct {p0, p1}, checkIfKnoxNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5380
    invoke-direct {p0, p1}, assignNextNetIdForKnoxNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5385
    :goto_15
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5386
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5387
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5388
    invoke-direct {p0, p1, v0}, updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 5389
    return-void

    .line 5382
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_29
    invoke-direct {p0, p1}, assignNextNetId(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_15
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 6
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .prologue
    .line 5317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 5318
    iget-object v0, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5319
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 5320
    return-void
.end method

.method private handleRegisterNetworkRequest(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2731
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-object v5, v7

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2732
    .local v5, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v7, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2733
    .local v3, "newCap":Landroid/net/NetworkCapabilities;
    const/4 v6, 0x0

    .line 2736
    .local v6, "score":I
    const/4 v0, 0x0

    .line 2737
    .local v0, "bestNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v7, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2738
    .local v2, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRegisterNetworkRequest checking "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 2739
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v7}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apparently satisfied.  currentScore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 2741
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 2743
    :cond_6b
    iget-boolean v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-nez v7, :cond_78

    .line 2747
    iget-object v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)V

    .line 2748
    invoke-virtual {p0, v2, v5}, notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_17

    .line 2750
    :cond_78
    move-object v0, v2

    goto :goto_17

    .line 2755
    .end local v2    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_7a
    iget-object v7, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8c

    .line 2756
    const-string v7, "ignoring duplicate request"

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 2789
    :cond_8b
    return-void

    .line 2758
    :cond_8c
    if-eqz v0, :cond_eb

    .line 2759
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 2760
    iget-boolean v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v7, :cond_c2

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 2763
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2764
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v8, 0x82001

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2766
    :cond_c2
    iget-object v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)V

    .line 2767
    iget-object v7, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v8, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2768
    invoke-virtual {p0, v0, v5}, notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2769
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    .line 2770
    iget-boolean v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v7, :cond_eb

    iget-object v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v7, v7, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_eb

    .line 2772
    iget-object v7, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v8, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v7, v8, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2775
    :cond_eb
    iget-object v7, p0, mNetworkRequests:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2776
    iget-boolean v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v7, :cond_8b

    .line 2777
    const-string/jumbo v7, "sending new NetworkRequest to factories"

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 2779
    iget-object v7, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v7, v7, Landroid/net/NetworkRequest;->legacyType:I

    invoke-direct {p0, v7}, getApnType(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, IncludeFixedApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 2780
    iput-object v5, p0, mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2783
    :cond_10c
    iget-object v7, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2784
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v7, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x83000

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_116
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .registers 14
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    .prologue
    .line 2791
    iget-object v8, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2793
    .local v6, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    const/4 v0, 0x0

    .line 2795
    .local v0, "hasImsCapability":Z
    if-eqz v6, :cond_29

    .line 2796
    const/16 v8, 0x3e8

    if-eq v8, p2, :cond_2a

    iget v8, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v8, p2, :cond_2a

    .line 2797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to release unowned NetworkRequest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2869
    :cond_29
    :goto_29
    return-void

    .line 2800
    :cond_2a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "releasing NetworkRequest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 2802
    iget-object v8, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    iget-boolean v8, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v8, :cond_18b

    .line 2806
    iget-object v8, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2807
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_57

    .line 2808
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 2810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Removing from current network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", leaving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requests."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    .line 2817
    .local v3, "keep":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ad
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_c9

    if-nez v3, :cond_c9

    .line 2818
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkRequest;

    .line 2819
    .local v7, "r":Landroid/net/NetworkRequest;
    invoke-direct {p0, v7}, isRequest(Landroid/net/NetworkRequest;)Z

    move-result v8

    if-eqz v8, :cond_c6

    const/4 v3, 0x1

    .line 2817
    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 2821
    .end local v7    # "r":Landroid/net/NetworkRequest;
    :cond_c9
    if-nez v3, :cond_57

    .line 2822
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no live requests for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; disconnecting"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2823
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v8}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto/16 :goto_57

    .line 2833
    .end local v1    # "i":I
    .end local v3    # "keep":Z
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_f2
    iget-object v8, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2834
    .restart local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v4, :cond_16a

    .line 2835
    iget-object v8, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 2837
    invoke-virtual {p0}, isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_158

    .line 2838
    iget-object v8, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->legacyType:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_158

    .line 2839
    iget-object v8, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_121
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_158

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2840
    .local v7, "r":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v8, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    if-eq v8, v9, :cond_121

    .line 2841
    iget-object v8, v7, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v8, v8, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 2842
    if-eqz v0, :cond_121

    .line 2843
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasImsCapability is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2850
    .end local v7    # "r":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_158
    iget-object v8, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_16a

    if-nez v0, :cond_16a

    .line 2851
    iget-object v8, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2856
    :cond_16a
    iget-object v8, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_174
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2857
    .local v5, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v8, v5, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v9, 0x83001

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_174

    .line 2863
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v5    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_18b
    iget-object v8, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_195
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2864
    .restart local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v8, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_195

    .line 2867
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1ab
    const/4 v8, 0x0

    const v9, 0x80008

    invoke-direct {p0, v6, v8, v9}, callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_29
.end method

.method private handleSetDependencyMet(IZ)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1582
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_33

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1588
    :cond_33
    return-void
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1673
    if-nez p1, :cond_15

    .line 1674
    iput-boolean p2, p0, mIsMobilePolicyEnabled:Z

    .line 1675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_POLICY_DATA_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1677
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1680
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_15
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 5329
    iget-object v1, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5330
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_10

    .line 5331
    const-string v1, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {v1}, loge(Ljava/lang/String;)V

    .line 5335
    :goto_f
    return-void

    .line 5334
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private hasInterfaceAsUser(I)Z
    .registers 14
    .param p1, "user"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4110
    const-string v7, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasInterfaceAsUser : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v7

    if-ge v7, v9, :cond_3e

    .line 4112
    const-string v7, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 4155
    :goto_3d
    return v7

    .line 4116
    :cond_3e
    :try_start_3e
    invoke-direct {p0, p1}, getProfilesByDomain(I)Ljava/util/List;

    move-result-object v5

    .line 4117
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 4119
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const-string v7, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasInterfaceAsUser > profiles.size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_11c

    .line 4121
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_67
    iget-object v7, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_118

    .line 4122
    iget-object v7, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4123
    .local v4, "key":I
    const-string v10, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasInterfaceAsUser > vpn key : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", profileName : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    iget-object v7, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_df

    .line 4125
    iget-object v7, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4126
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_dc

    .line 4127
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 4128
    .local v6, "vpnState":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d5

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_d5

    .line 4129
    const-string v7, "ConnectivityService"

    const-string v10, "hasInterfaceAsUser : return true"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 4130
    goto/16 :goto_3d

    .line 4132
    :cond_d5
    const-string v7, "ConnectivityService"

    const-string v10, "hasInterfaceAsUser : interface name is null"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    .end local v6    # "vpnState":Landroid/net/NetworkInfo$State;
    :cond_dc
    :goto_dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 4135
    :cond_df
    const-string v7, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasInterfaceAsUser : mEnterpriseVpnStoreObj is null "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_f7} :catch_f8

    goto :goto_dc

    .line 4153
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "key":I
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_f8
    move-exception v0

    .line 4154
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 4155
    goto/16 :goto_3d

    .line 4120
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_118
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_60

    .line 4141
    .end local v3    # "j":I
    :cond_11c
    :try_start_11c
    iget-object v7, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_14a

    .line 4142
    iget-object v7, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iget-object v10, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4143
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_14a

    .line 4144
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14a

    .line 4145
    const-string v7, "ConnectivityService"

    const-string v10, "hasInterfaceAsUser : return true"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 4146
    goto/16 :goto_3d

    .line 4151
    :cond_14a
    const-string v7, "ConnectivityService"

    const-string v9, "hasInterfaceAsUser : return false"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_151} :catch_f8

    move v7, v8

    .line 4152
    goto/16 :goto_3d
.end method

.method private static isDebugLevelNotLow()Z
    .registers 3

    .prologue
    .line 6557
    const-string/jumbo v1, "ro.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6559
    .local v0, "sysLoglevel":Ljava/lang/String;
    const-string v1, "0x4f4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6560
    const/4 v1, 0x0

    .line 6562
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5357
    iget-object v0, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v1, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isDnsBlockByTestApp()Z
    .registers 9

    .prologue
    .line 6640
    const/4 v5, 0x0

    .line 6642
    .local v5, "result":Z
    const-string v1, "/data/data/com.test.LTEfunctionality/files/blockdns"

    .line 6643
    .local v1, "fileBlockDns":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/data/com.test.LTEfunctionality/files/blockdns"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6644
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 6645
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6646
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android"

    .line 6647
    .local v2, "pkg1":Ljava/lang/String;
    const-string v3, "com.test.LTEfunctionality"

    .line 6649
    .local v3, "pkg2":Ljava/lang/String;
    const-string v6, "android"

    const-string v7, "com.test.LTEfunctionality"

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_25

    .line 6650
    const/4 v5, 0x1

    .line 6652
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LTETest SIGNATURE_MATCH:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_40

    const-string v6, "TRUE"

    :goto_34
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 6656
    .end local v2    # "pkg1":Ljava/lang/String;
    .end local v3    # "pkg2":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_3f
    return v5

    .line 6652
    .restart local v2    # "pkg1":Ljava/lang/String;
    .restart local v3    # "pkg2":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_40
    const-string v6, "FALSE"

    goto :goto_34

    .line 6654
    .end local v2    # "pkg1":Ljava/lang/String;
    .end local v3    # "pkg2":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_43
    const-string v6, "LTETest block dns file not exists"

    invoke-static {v6}, log(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2325
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-nez v2, :cond_6

    .line 2335
    :goto_5
    return v1

    .line 2327
    :cond_6
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 2328
    :try_start_9
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2329
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_20

    .line 2330
    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v1, 0x1

    goto :goto_5

    .line 2329
    .end local v0    # "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 2331
    .restart local v0    # "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_23
    if-nez v0, :cond_25

    .line 2332
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private isNetworkBlocked(II)Z
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0, p2}, isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    move-result v0

    return v0
.end method

.method private isNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "uid"    # I

    .prologue
    .line 1017
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2}, isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    move-result v0

    return v0
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .registers 4
    .param p1, "networkType"    # I

    .prologue
    .line 1452
    invoke-direct {p0, p1}, getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1453
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_e

    .line 1455
    :try_start_6
    iget-object v1, p0, mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 1459
    :goto_c
    return v1

    .line 1456
    :catch_d
    move-exception v1

    .line 1459
    :cond_e
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z
    .registers 10
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1027
    if-nez p1, :cond_1e

    const-string v0, ""

    .line 1028
    .local v0, "iface":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1029
    :try_start_8
    iget-object v5, p0, mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1030
    .local v1, "networkCostly":Z
    iget-object v5, p0, mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1031
    .local v2, "uidRules":I
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_23

    .line 1033
    if-eqz v1, :cond_1d

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1d

    .line 1034
    const/4 v3, 0x1

    .line 1038
    :cond_1d
    return v3

    .line 1027
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :cond_1e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1031
    .restart local v0    # "iface":Ljava/lang/String;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method private isNonPreferredDataSlotMMSAPN(Landroid/net/NetworkInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 2093
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 2094
    .local v0, "prefSimId":I
    const/4 v1, -0x1

    .line 2095
    .local v1, "slotOfApn":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    .line 2096
    const/4 v1, 0x0

    .line 2101
    :cond_e
    :goto_e
    const/4 v3, -0x1

    if-ne v1, v3, :cond_51

    .line 2102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prefSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotOfApn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", no mms connection.  so, datacross will not set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2106
    :cond_46
    :goto_46
    return v2

    .line 2098
    :cond_47
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_e

    .line 2099
    const/4 v1, 0x1

    goto :goto_e

    .line 2105
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prefSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotOfApn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2106
    if-eq v0, v1, :cond_46

    const/4 v2, 0x1

    goto :goto_46
.end method

.method private isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 6519
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6538
    :cond_d
    :goto_d
    return v8

    .line 6522
    :cond_e
    const/4 v8, 0x0

    .line 6523
    .local v8, "result":Z
    const/4 v6, 0x0

    .line 6524
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6526
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_16
    const-string v1, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6527
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6528
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_51
    .catchall {:try_start_16 .. :try_end_34} :catchall_5b

    move-result v8

    .line 6533
    :cond_35
    if-eqz v6, :cond_3a

    .line 6534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6537
    :cond_3a
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAvsAuthorized result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto :goto_d

    .line 6530
    :catch_51
    move-exception v7

    .line 6531
    .local v7, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5b

    .line 6533
    if-eqz v6, :cond_3a

    .line 6534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    .line 6533
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_5b
    move-exception v1

    if-eqz v6, :cond_61

    .line 6534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v1
.end method

.method private isRequest(Landroid/net/NetworkRequest;)Z
    .registers 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 2339
    iget-object v0, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    return v0
.end method

.method private loadGlobalProxy()V
    .registers 11

    .prologue
    .line 3302
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3303
    .local v7, "res":Landroid/content/ContentResolver;
    const-string v8, "global_http_proxy_host"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3304
    .local v1, "host":Ljava/lang/String;
    const-string v8, "global_http_proxy_port"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3306
    .local v2, "port":I
    const-string v8, "global_http_proxy_username"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3307
    .local v3, "username":Ljava/lang/String;
    const-string v8, "global_http_proxy_password"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3309
    .local v4, "password":Ljava/lang/String;
    const-string v8, "global_http_proxy_exclusion_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3311
    .local v5, "exclList":Ljava/lang/String;
    const-string v8, "global_proxy_pac_url"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3312
    .local v6, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 3314
    :cond_37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 3315
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v0, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_42
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v8

    if-nez v8, :cond_79

    .line 3326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 3334
    .end local v0    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_62
    :goto_62
    return-void

    .line 3318
    :cond_63
    if-eqz v3, :cond_73

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_73

    .line 3319
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_42

    .line 3321
    .end local v0    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_73
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v0    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_42

    .line 3330
    :cond_79
    iget-object v9, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3331
    :try_start_7c
    iput-object v0, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3332
    monitor-exit v9

    goto :goto_62

    :catchall_80
    move-exception v8

    monitor-exit v9
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    throw v8
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3451
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3455
    const-string v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to new default network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 5900
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iput v1, p0, mActiveDefaultNetwork:I

    .line 5901
    invoke-direct {p0, p1}, setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5903
    :try_start_21
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_41

    .line 5909
    :goto_2a
    iget-object v1, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget v2, p0, mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->onActiveNetworkChanged(I)V

    .line 5912
    invoke-direct {p0, p1}, notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5913
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 5914
    invoke-direct {p0, p1}, updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5915
    return-void

    .line 5904
    :catch_41
    move-exception v0

    .line 5905
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, loge(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1746
    iget-object v4, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v4, :cond_c

    .line 1747
    iget-object v4, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v4, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1750
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "VZW-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_9c

    .line 1754
    invoke-direct {p0, p1}, createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1755
    .local v3, "ni":Landroid/net/NetworkInfo;
    const-string v4, "networkInfo"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1756
    const-string v4, "networkType"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1763
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :goto_35
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1764
    const-string v4, "isFailover"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1765
    invoke-virtual {p1, v7}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1767
    :cond_43
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 1768
    const-string/jumbo v4, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    :cond_53
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 1771
    const-string v4, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1774
    :cond_62
    iget-object v4, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v5, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1775
    .local v0, "def":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v2, 0x0

    .line 1776
    .local v2, "isDefault":Z
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_7e

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1778
    const/4 v2, 0x1

    .line 1780
    :cond_7e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_8d

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1782
    const/4 v2, 0x1

    .line 1784
    :cond_8d
    const-string v4, "isDefault"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1785
    const-string v4, "inetCondition"

    iget v5, p0, mDefaultInetConditionPublished:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1786
    iput-object p1, p0, mIntentInfo:Landroid/net/NetworkInfo;

    .line 1787
    return-object v1

    .line 1758
    .end local v0    # "def":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "isDefault":Z
    :cond_9c
    const-string v4, "networkInfo"

    new-instance v5, Landroid/net/NetworkInfo;

    invoke-direct {v5, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1759
    const-string v4, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_35
.end method

.method private maskAsMobile(Landroid/content/Intent;Landroid/net/NetworkInfo;)Landroid/content/Intent;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    .line 1815
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1816
    .local v0, "maskInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setType(I)V

    .line 1817
    invoke-static {v1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setTypeName(Ljava/lang/String;)V

    .line 1818
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1819
    const-string v1, "networkType"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1821
    return-object p1
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .registers 3

    .prologue
    .line 965
    monitor-enter p0

    :try_start_1
    iget v0, p0, mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mNextNetworkRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 6190
    iget-object v0, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_13

    .line 6191
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6192
    iget-object v0, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    .line 6197
    :cond_13
    :goto_13
    return-void

    .line 6194
    :cond_14
    iget-object v0, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    goto :goto_13
.end method

.method private notifyTypeToName(I)Ljava/lang/String;
    .registers 3
    .param p1, "notifyType"    # I

    .prologue
    .line 6428
    packed-switch p1, :pswitch_data_1e

    .line 6438
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 6429
    :pswitch_6
    const-string v0, "PRECHECK"

    goto :goto_5

    .line 6430
    :pswitch_9
    const-string v0, "AVAILABLE"

    goto :goto_5

    .line 6431
    :pswitch_c
    const-string v0, "LOSING"

    goto :goto_5

    .line 6432
    :pswitch_f
    const-string v0, "LOST"

    goto :goto_5

    .line 6433
    :pswitch_12
    const-string v0, "UNAVAILABLE"

    goto :goto_5

    .line 6434
    :pswitch_15
    const-string v0, "CAP_CHANGED"

    goto :goto_5

    .line 6435
    :pswitch_18
    const-string v0, "IP_CHANGED"

    goto :goto_5

    .line 6436
    :pswitch_1b
    const-string v0, "RELEASED"

    goto :goto_5

    .line 6428
    :pswitch_data_1e
    .packed-switch 0x80001
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private declared-synchronized onUserStart(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 5009
    monitor-enter p0

    :try_start_1
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserStart for userid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    iget-object v6, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_62

    .line 5011
    :try_start_1c
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 5012
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_2e

    .line 5013
    const-string v1, "Starting user already has a VPN"

    invoke-static {v1}, loge(Ljava/lang/String;)V

    .line 5014
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_5f

    .line 5020
    :goto_2c
    monitor-exit p0

    return-void

    .line 5016
    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 5017
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userVpn value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5019
    monitor-exit v6

    goto :goto_2c

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_5f
    move-exception v1

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_5f

    :try_start_61
    throw v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 5009
    :catchall_62
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onUserStop(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 5023
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5024
    :try_start_3
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 5025
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_14

    .line 5026
    const-string v1, "Stopping user has no VPN"

    invoke-static {v1}, loge(Ljava/lang/String;)V

    .line 5027
    monitor-exit v2

    .line 5031
    :goto_13
    return-void

    .line 5029
    :cond_14
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5030
    monitor-exit v2

    goto :goto_13

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    .prologue
    const/4 v3, 0x0

    .line 6165
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ge p2, v2, :cond_d

    .line 6166
    invoke-direct {p0, p1, v3}, rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6172
    :cond_c
    return-void

    .line 6168
    :cond_d
    iget-object v2, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6169
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1, v3}, rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_17
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 30
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nascent"    # Z

    .prologue
    .line 5947
    if-nez p1, :cond_8

    .line 5948
    const-string v22, "Unknown NetworkAgentInfo in handleConnectionValidated"

    invoke-static/range {v22 .. v22}, loge(Ljava/lang/String;)V

    .line 6146
    :cond_7
    :goto_7
    return-void

    .line 5951
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 5953
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    move/from16 v22, v0

    if-nez v22, :cond_27

    const-string v22, "ERROR: uncreated network being rematched."

    invoke-static/range {v22 .. v22}, loge(Ljava/lang/String;)V

    .line 5954
    :cond_27
    if-eqz p2, :cond_36

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->validated:Z

    move/from16 v22, v0

    if-nez v22, :cond_36

    const-string v22, "ERROR: nascent network not validated."

    invoke-static/range {v22 .. v22}, loge(Ljava/lang/String;)V

    .line 5955
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v13

    .line 5956
    .local v13, "keep":Z
    const/4 v12, 0x0

    .line 5957
    .local v12, "isNewDefault":Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "rematching "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 5960
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5961
    .local v4, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " network has: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 5962
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkRequests:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_85
    :goto_85
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_40b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5963
    .local v16, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    const-string v22, "DCGG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b9

    const-string v22, "DGG"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b9

    const-string v22, "DCGS"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b9

    const-string v22, "DCGGS"

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_101

    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_101

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_fb

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0x1a

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_101

    .line 5970
    :cond_fb
    const-string v22, "mms/mms2 should not be default active network"

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    goto :goto_85

    .line 5974
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkForRequestId:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5975
    .local v8, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p1

    if-ne v0, v8, :cond_15c

    .line 5977
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Network "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " was already satisfying"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " request "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". No change."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 5980
    const/4 v13, 0x1

    .line 5981
    goto/16 :goto_85

    .line 5985
    :cond_15c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  checking if request is satisfied: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 5986
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v22

    if-eqz v22, :cond_85

    .line 5988
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    move/from16 v22, v0

    if-nez v22, :cond_1a7

    .line 5991
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)V

    goto/16 :goto_85

    .line 5996
    :cond_1a7
    const-string/jumbo v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 5997
    .local v17, "salesCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, isDomesticModel()Z

    move-result v22

    if-nez v22, :cond_1dc

    const-string v22, "XME"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1dc

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1dc

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_RIL_ConfigAlwaysOnApn"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_21a

    .line 6000
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_21a

    .line 6001
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 6003
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v22

    if-nez v22, :cond_21a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    if-eqz v22, :cond_85

    .line 6011
    .end local v7    # "cm":Landroid/net/ConnectivityManager;
    :cond_21a
    const-string v22, "CHN"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24a

    const-string v22, "CHM"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24a

    const-string v22, "CHC"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_24a

    const-string v22, "CHU"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_270

    .line 6012
    :cond_24a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_270

    .line 6013
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_85

    .line 6021
    :cond_270
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "currentScore = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-eqz v8, :cond_3f0

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v22

    :goto_281
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", newScore = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 6025
    if-eqz v8, :cond_2ae

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_85

    .line 6027
    :cond_2ae
    if-eqz v8, :cond_3f4

    .line 6028
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "   accepting network in place of "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 6029
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->remove(I)V

    .line 6030
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6031
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6035
    :goto_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, mNetworkForRequestId:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6036
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)V

    .line 6037
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    move/from16 v22, v0

    if-eqz v22, :cond_34c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_34c

    .line 6038
    move-object/from16 v0, p0

    iget-object v0, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6040
    :cond_34c
    const/4 v13, 0x1

    .line 6046
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 6047
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultRequest:Landroid/net/NetworkRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_85

    .line 6048
    const/4 v12, 0x1

    .line 6050
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mActiveDefaultNetwork:I

    .line 6051
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3fb

    .line 6052
    invoke-direct/range {p0 .. p1}, updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6053
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 6062
    :goto_3ab
    if-eqz v8, :cond_3c2

    .line 6063
    move-object/from16 v0, p0

    iget-object v0, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6066
    :cond_3c2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->validated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_408

    const/16 v22, 0x64

    :goto_3cc
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, mDefaultInetConditionPublished:I

    .line 6067
    move-object/from16 v0, p0

    iget-object v0, v0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6068
    invoke-direct/range {p0 .. p1}, notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_85

    .line 6021
    :cond_3f0
    const/16 v22, 0x0

    goto/16 :goto_281

    .line 6033
    :cond_3f4
    const-string v22, "   accepting network in place of null"

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    goto/16 :goto_2ed

    .line 6056
    :cond_3fb
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    goto :goto_3ab

    .line 6066
    :cond_408
    const/16 v22, 0x0

    goto :goto_3cc

    .line 6074
    .end local v8    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v17    # "salesCode":Ljava/lang/String;
    :cond_40b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_40f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4e4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6075
    .local v14, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v14}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v22

    if-nez v22, :cond_466

    const/16 v20, 0x1

    .line 6076
    .local v20, "teardown":Z
    :goto_423
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "teardown :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 6077
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_43f
    iget-object v0, v14, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_4a3

    if-eqz v20, :cond_4a3

    .line 6078
    iget-object v0, v14, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkRequest;

    .line 6080
    .local v15, "nr":Landroid/net/NetworkRequest;
    :try_start_459
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, isRequest(Landroid/net/NetworkRequest;)Z
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_45e} :catch_469

    move-result v22

    if-eqz v22, :cond_463

    .line 6081
    const/16 v20, 0x0

    .line 6077
    :cond_463
    :goto_463
    add-int/lit8 v10, v10, 0x1

    goto :goto_43f

    .line 6075
    .end local v10    # "i":I
    .end local v15    # "nr":Landroid/net/NetworkRequest;
    .end local v20    # "teardown":Z
    :cond_466
    const/16 v20, 0x0

    goto :goto_423

    .line 6083
    .restart local v10    # "i":I
    .restart local v15    # "nr":Landroid/net/NetworkRequest;
    .restart local v20    # "teardown":Z
    :catch_469
    move-exception v9

    .line 6084
    .local v9, "e":Ljava/lang/Exception;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Request "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " not found in mNetworkRequests."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, loge(Ljava/lang/String;)V

    .line 6085
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "  it came from request list  of "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, loge(Ljava/lang/String;)V

    goto :goto_463

    .line 6088
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "nr":Landroid/net/NetworkRequest;
    :cond_4a3
    if-eqz v20, :cond_4bb

    .line 6089
    iget-object v0, v14, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v22, v0

    const v23, 0x82003

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 6090
    const v22, 0x80003

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v14, v1}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_40f

    .line 6096
    :cond_4bb
    iget-object v0, v14, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 6097
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Lingered for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cleared"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    goto/16 :goto_40f

    .line 6100
    .end local v10    # "i":I
    .end local v14    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v20    # "teardown":Z
    :cond_4e4
    if-eqz v13, :cond_572

    .line 6101
    if-eqz v12, :cond_518

    .line 6103
    invoke-direct/range {p0 .. p1}, makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6104
    monitor-enter p0

    .line 6108
    :try_start_4ec
    move-object/from16 v0, p0

    iget-object v0, v0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v22

    if-eqz v22, :cond_517

    .line 6109
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    move-object/from16 v0, p0

    iget v0, v0, mNetTransitionWakeLockSerialNumber:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6114
    :cond_517
    monitor-exit p0
    :try_end_518
    .catchall {:try_start_4ec .. :try_end_518} :catchall_56f

    .line 6121
    :cond_518
    :try_start_518
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    .line 6122
    .local v6, "bs":Lcom/android/internal/app/IBatteryStats;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    .line 6124
    .local v21, "type":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 6125
    .local v5, "baseIface":Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v6, v5, v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 6126
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_543
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_561

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/LinkProperties;

    .line 6127
    .local v18, "stacked":Landroid/net/LinkProperties;
    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    .line 6128
    .local v19, "stackedIface":Ljava/lang/String;
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 6129
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55f
    .catch Landroid/os/RemoteException; {:try_start_518 .. :try_end_55f} :catch_560

    goto :goto_543

    .line 6131
    .end local v5    # "baseIface":Ljava/lang/String;
    .end local v6    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v18    # "stacked":Landroid/net/LinkProperties;
    .end local v19    # "stackedIface":Ljava/lang/String;
    .end local v21    # "type":I
    :catch_560
    move-exception v22

    .line 6134
    :cond_561
    const v22, 0x80002

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_7

    .line 6114
    :catchall_56f
    move-exception v22

    :try_start_570
    monitor-exit p0
    :try_end_571
    .catchall {:try_start_570 .. :try_end_571} :catchall_56f

    throw v22

    .line 6135
    :cond_572
    if-eqz p2, :cond_7

    .line 6143
    const-string v22, "Validated network turns out to be unwanted.  Tear it down."

    invoke-static/range {v22 .. v22}, log(Ljava/lang/String;)V

    .line 6144
    invoke-direct/range {p0 .. p1}, teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_7
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 2047
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2048
    .local v2, "iface":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2050
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2054
    :cond_18
    :try_start_18
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 2059
    :cond_1d
    :goto_1d
    return-void

    .line 2055
    :catch_1e
    move-exception v1

    .line 2056
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removeDataActivityTracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 8
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 3184
    const/4 v0, 0x0

    .line 3185
    .local v0, "serialNum":I
    monitor-enter p0

    .line 3186
    :try_start_2
    iget-object v2, p0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    monitor-exit p0

    .line 3194
    :goto_b
    return-void

    .line 3187
    :cond_c
    iget v2, p0, mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, mNetTransitionWakeLockSerialNumber:I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_2d

    .line 3188
    .end local v0    # "serialNum":I
    .local v1, "serialNum":I
    :try_start_12
    iget-object v2, p0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3189
    iput-object p1, p0, mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 3190
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_30

    .line 3191
    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, mNetTransitionWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    .line 3194
    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    goto :goto_b

    .line 3190
    :catchall_2d
    move-exception v2

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .end local v0    # "serialNum":I
    .restart local v1    # "serialNum":I
    :catchall_30
    move-exception v2

    move v0, v1

    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    goto :goto_2e
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "delayMs"    # I

    .prologue
    .line 1729
    const-string v1, "VZW-CDMA"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_21

    .line 1731
    invoke-direct {p0, p1}, createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1732
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1733
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1, p2}, sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 1739
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_20
    return-void

    .line 1735
    :cond_21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1736
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1, p2}, sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    goto :goto_20
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .registers 20
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 1799
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v3, "intent":Landroid/content/Intent;
    const-string v2, "deviceType"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    const-string v2, "isActive"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    const-string/jumbo v2, "tsNanos"

    move-wide/from16 v0, p3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1805
    .local v12, "ident":J
    :try_start_21
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_33

    .line 1808
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    return-void

    .line 1808
    :catchall_33
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 1791
    invoke-direct {p0, p1, p2}, makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1792
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;
    .param p3, "delayMs"    # I

    .prologue
    .line 1795
    invoke-direct {p0, p1, p2}, makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 1796
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1742
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1743
    return-void
.end method

.method private sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    .registers 13
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "connected"    # Z
    .param p3, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6358
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 6359
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 6360
    if-eqz p2, :cond_1f

    .line 6361
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v8, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    invoke-direct {p0}, getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, v1, v5}, sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 6408
    :cond_1e
    :goto_1e
    return-void

    .line 6364
    :cond_1f
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v8, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 6365
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6367
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "VZW-CDMA"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_ce

    .line 6369
    invoke-direct {p0, v1}, createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 6370
    .local v4, "ni":Landroid/net/NetworkInfo;
    const-string v5, "networkInfo"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6371
    const-string v5, "networkType"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6377
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :goto_53
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 6378
    const-string v5, "isFailover"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6379
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 6381
    :cond_64
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 6382
    const-string/jumbo v5, "reason"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6384
    :cond_74
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    .line 6385
    const-string v5, "extraInfo"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6387
    :cond_83
    const/4 v3, 0x0

    .line 6388
    .local v3, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v6, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a6

    .line 6389
    iget-object v5, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v6, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6390
    .restart local v3    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_de

    .line 6391
    const-string/jumbo v5, "otherNetwork"

    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6397
    :cond_a6
    :goto_a6
    const-string v5, "inetCondition"

    iget v6, p0, mDefaultInetConditionPublished:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6400
    .local v0, "immediateIntent":Landroid/content/Intent;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6401
    invoke-direct {p0, v0}, sendStickyBroadcast(Landroid/content/Intent;)V

    .line 6402
    invoke-direct {p0}, getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, v2, v5}, sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 6403
    if-eqz v3, :cond_1e

    .line 6404
    iget-object v5, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0}, getConnectivityChangeDelay()I

    move-result v6

    invoke-direct {p0, v5, v6}, sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    goto/16 :goto_1e

    .line 6373
    .end local v0    # "immediateIntent":Landroid/content/Intent;
    .end local v3    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_ce
    const-string v5, "networkInfo"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6374
    const-string v5, "networkType"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_53

    .line 6394
    .restart local v3    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_de
    const-string v5, "noConnectivity"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a6
.end method

.method private sendNetworkInfoUpdateBroadcast(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "netid"    # I

    .prologue
    .line 6200
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.NETID_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6201
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "netType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6202
    const-string v2, "netID"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNetworkInfoUpdateBroadcast type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 6205
    :try_start_33
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_38} :catch_39

    .line 6209
    :goto_38
    return-void

    .line 6206
    :catch_39
    move-exception v1

    .line 6207
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    goto :goto_38
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    .registers 8
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3414
    if-nez p1, :cond_c

    new-instance p1, Landroid/net/ProxyInfo;

    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {p1, v3, v4, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3415
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_c
    iget-object v3, p0, mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3427
    :goto_14
    return-void

    .line 3416
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 3417
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3418
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3420
    const-string v3, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3423
    .local v0, "ident":J
    :try_start_41
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4c

    .line 3425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    :catchall_4c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1826
    monitor-enter p0

    .line 1827
    :try_start_1
    iget-boolean v6, p0, mSystemReady:Z

    if-nez v6, :cond_c

    .line 1828
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v6, p0, mInitialBroadcast:Landroid/content/Intent;

    .line 1830
    :cond_c
    const/high16 v6, 0x4000000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendStickyBroadcast: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 1835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_6f

    move-result-wide v2

    .line 1838
    .local v2, "ident":J
    :try_start_30
    const-string v6, "networkType"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1840
    .local v4, "networkType":I
    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 1842
    .local v5, "userMgr":Landroid/os/IUserManager;
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 1917
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_53
    .catchall {:try_start_30 .. :try_end_4e} :catchall_72

    .line 1922
    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1924
    .end local v0    # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "networkType":I
    .end local v5    # "userMgr":Landroid/os/IUserManager;
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_6f

    .line 1925
    return-void

    .line 1919
    :catch_53
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/Exception;
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendStickyBroadcast exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_72

    .line 1922
    :try_start_6b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_51

    .line 1924
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ident":J
    :catchall_6f
    move-exception v6

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_6f

    throw v6

    .line 1922
    .restart local v2    # "ident":J
    :catchall_72
    move-exception v6

    :try_start_73
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_6f
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delayMs"    # I

    .prologue
    .line 1934
    if-gtz p2, :cond_6

    .line 1935
    invoke-direct {p0, p1}, sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1944
    :goto_5
    return-void

    .line 1938
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendStickyBroadcastDelayed: delayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private sendStickyBroadcastToUser(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # I

    .prologue
    .line 1929
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1930
    return-void
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .registers 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 5800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending new Min Network Score("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 5801
    iget-object v2, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 5802
    .local v1, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x83000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2f

    .line 5805
    .end local v1    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_45
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 5792
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 5794
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, isRequest(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 5791
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5795
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    invoke-direct {p0, v1, v2}, sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    goto :goto_17

    .line 5797
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_22
    return-void
.end method

.method private setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5727
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    .line 5728
    .local v4, "last":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 5729
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    .line 5730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5731
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 5732
    .local v5, "value":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5734
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    :goto_30
    iget v6, p0, mNumDnsEntries:I

    if-gt v1, v6, :cond_4f

    .line 5735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5736
    .restart local v3    # "key":Ljava/lang/String;
    const-string v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5734
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 5738
    .end local v3    # "key":Ljava/lang/String;
    :cond_4f
    iput v4, p0, mNumDnsEntries:I

    .line 5739
    return-void
.end method

.method private setDnsToVpnV10(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
    .line 4055
    .local p2, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDnsToVpn : profileName = "

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

    .line 4056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4058
    .local v2, "token":J
    :try_start_27
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_35

    .line 4059
    invoke-direct {p0}, getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_39
    .catchall {:try_start_27 .. :try_end_35} :catchall_5a

    .line 4064
    :cond_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4066
    :goto_38
    return-void

    .line 4061
    :catch_39
    move-exception v0

    .line 4062
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v1, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_5a

    .line 4064
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setEnableFailFastMobileData(I)V
    .registers 6
    .param p1, "enabled"    # I

    .prologue
    .line 4671
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 4672
    iget-object v1, p0, mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 4676
    .local v0, "tag":I
    :goto_9
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4678
    return-void

    .line 4674
    .end local v0    # "tag":I
    :cond_17
    iget-object v1, p0, mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .restart local v0    # "tag":I
    goto :goto_9
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 6
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    .line 4612
    iget-object v0, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4613
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4614
    if-eqz v0, :cond_a

    .line 4615
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 4619
    :cond_a
    if-eqz p1, :cond_22

    .line 4620
    :try_start_c
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 4621
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 4622
    iput-object p1, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 4623
    iget-object v1, p0, mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 4630
    :goto_21
    return-void

    .line 4625
    :cond_22
    iget-object v1, p0, mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29

    goto :goto_21

    .line 4627
    :catch_29
    move-exception v1

    goto :goto_21
.end method

.method private setNullDnsSystemProperties(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5743
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gt v0, v2, :cond_22

    .line 5744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.dns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5745
    .local v1, "key":Ljava/lang/String;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5747
    .end local v1    # "key":Ljava/lang/String;
    :cond_22
    return-void
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 11
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProvNotificationVisible: E visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 4697
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4698
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v3, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 4700
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const/high16 v0, 0x10000

    add-int/lit8 v1, p2, 0x1

    add-int v2, v0, v1

    .line 4701
    .local v2, "id":I
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 4702
    return-void
.end method

.method private setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "networkType"    # I
    .param p4, "extraInfo"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 4714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setProvNotificationVisibleIntent: E visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extraInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, log(Ljava/lang/String;)V

    .line 4718
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 4719
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 4722
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_116

    .line 4726
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 4727
    .local v4, "notification":Landroid/app/Notification;
    packed-switch p3, :pswitch_data_144

    .line 4748
    :pswitch_47
    const v9, 0x10404b7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4749
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x10404b8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p4, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4751
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x108086f

    .line 4755
    .local v3, "icon":I
    :goto_69
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Landroid/app/Notification;->when:J

    .line 4756
    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 4757
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 4758
    iput-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4759
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060058

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v4, Landroid/app/Notification;->color:I

    .line 4761
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v8, v2, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4762
    move-object/from16 v0, p5

    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4765
    :try_start_8f
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 4766
    iget-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v9, p0, mNotificationIntent:Landroid/app/PendingIntent;

    .line 4767
    iput p2, p0, mNotificationId:I

    .line 4768
    move-object/from16 v0, p4

    iput-object v0, p0, mNotificationExtrainfo:Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_9e} :catch_fa

    .line 4784
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_9e
    iput-boolean p1, p0, mIsNotificationVisible:Z

    .line 4785
    :cond_a0
    return-void

    .line 4729
    .restart local v4    # "notification":Landroid/app/Notification;
    :pswitch_a1
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ba

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, showCaptivePortalCheckNotification(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 4734
    :cond_ba
    const v9, 0x10404b6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4735
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const v9, 0x10404b8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p4, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4737
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x1080877

    .line 4738
    .restart local v3    # "icon":I
    goto :goto_69

    .line 4741
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_dd
    const v9, 0x10404b7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4744
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 4745
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x108086f

    .line 4746
    .restart local v3    # "icon":I
    goto/16 :goto_69

    .line 4769
    :catch_fa
    move-exception v6

    .line 4770
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, loge(Ljava/lang/String;)V

    .line 4771
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9e

    .line 4775
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_116
    :try_start_116
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4776
    const/4 v9, 0x0

    iput-object v9, p0, mNotificationIntent:Landroid/app/PendingIntent;

    .line 4777
    const/4 v9, 0x0

    iput v9, p0, mNotificationId:I

    .line 4778
    const/4 v9, 0x0

    iput-object v9, p0, mNotificationExtrainfo:Ljava/lang/String;
    :try_end_124
    .catch Ljava/lang/NullPointerException; {:try_start_116 .. :try_end_124} :catch_126

    goto/16 :goto_9e

    .line 4779
    :catch_126
    move-exception v6

    .line 4780
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, loge(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_9e

    .line 4727
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_a1
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_dd
    .end packed-switch
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v6, 0x0

    .line 2011
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .local v1, "iface":Ljava/lang/String;
    const/4 v3, -0x1

    .line 2016
    .local v3, "type":I
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2018
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_activity_timeout_mobile"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2021
    .local v2, "timeout":I
    const/4 v3, 0x0

    .line 2033
    :goto_1e
    if-lez v2, :cond_2a

    if-eqz v1, :cond_2a

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2a

    .line 2035
    :try_start_25
    iget-object v4, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_44

    .line 2041
    :cond_2a
    :goto_2a
    return-void

    .line 2022
    .end local v2    # "timeout":I
    :cond_2b
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2024
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_activity_timeout_wifi"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2027
    .restart local v2    # "timeout":I
    const/4 v3, 0x1

    goto :goto_1e

    .line 2030
    .end local v2    # "timeout":I
    :cond_42
    const/4 v2, 0x0

    .restart local v2    # "timeout":I
    goto :goto_1e

    .line 2036
    :catch_44
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setupDataActivityTracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, loge(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private showCaptivePortalCheckNotification(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 6481
    const-string v0, "\"gogoinflight\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\"Carnival-WiFi\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6485
    :cond_10
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung captive portal check is skipped. Show only notification when connecting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6486
    const/4 v0, 0x1

    .line 6488
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .registers 4
    .param p1, "netTracker"    # Landroid/net/NetworkStateTracker;

    .prologue
    const/4 v0, 0x1

    .line 996
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 997
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1000
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 5850
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 5852
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, isRequest(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 5849
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5853
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead network still had at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, loge(Ljava/lang/String;)V

    .line 5856
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_30
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 5857
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .registers 3

    .prologue
    .line 4633
    iget-boolean v0, p0, mLockdownEnabled:Z

    if-eqz v0, :cond_c

    .line 4634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4636
    :cond_c
    return-void
.end method

.method private updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 9
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5754
    const/4 v0, 0x0

    .line 5755
    .local v0, "action":I
    const/4 v2, 0x0

    .line 5756
    .local v2, "types":[I
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 5758
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5759
    .local v1, "oldNetCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 5760
    invoke-virtual {v1, p2}, Landroid/net/NetworkCapabilities;->getDiffCapabilities(Landroid/net/NetworkCapabilities;)[I

    move-result-object v2

    .line 5761
    array-length v3, v2

    if-ne v3, v5, :cond_36

    aget v3, v2, v4

    invoke-direct {p0, v3}, getApnTypeFromNetCap(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, IncludeFixedApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 5762
    const/4 v0, 0x1

    .line 5763
    iget-object v3, p0, mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    if-eqz v3, :cond_36

    .line 5764
    iget-object v3, p0, mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)V

    .line 5765
    const/4 v3, 0x0

    iput-object v3, p0, mTempNri:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5776
    :cond_36
    :goto_36
    monitor-enter p1

    .line 5777
    :try_start_37
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 5778
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_69

    .line 5780
    if-ne v0, v5, :cond_6c

    .line 5781
    iget-object v3, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    aget v4, v2, v4

    invoke-direct {p0, v4}, getNetworkType(I)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5786
    :cond_47
    :goto_47
    const v3, 0x80006

    invoke-virtual {p0, p1, v3}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5788
    .end local v1    # "oldNetCap":Landroid/net/NetworkCapabilities;
    :cond_4d
    return-void

    .line 5768
    .restart local v1    # "oldNetCap":Landroid/net/NetworkCapabilities;
    :cond_4e
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 5769
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->getDiffCapabilities(Landroid/net/NetworkCapabilities;)[I

    move-result-object v2

    .line 5770
    array-length v3, v2

    if-ne v3, v5, :cond_36

    aget v3, v2, v4

    invoke-direct {p0, v3}, getApnTypeFromNetCap(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, IncludeFixedApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 5771
    const/4 v0, 0x2

    goto :goto_36

    .line 5778
    :catchall_69
    move-exception v3

    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v3

    .line 5782
    :cond_6c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_47

    .line 5783
    iget-object v3, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    aget v4, v2, v4

    invoke-direct {p0, v4}, getNetworkType(I)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_47
.end method

.method private updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 5494
    iget-object v3, p0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v3, p3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    .line 5495
    .local v2, "wasRunningClat":Z
    invoke-static {p3}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 5496
    .local v1, "shouldRunClat":Z
    const/4 v0, 0x1

    .line 5499
    .local v0, "mhasCapability":Z
    invoke-virtual {p0}, isDomesticModel()Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "TMB"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 5500
    :cond_20
    iget-object v3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 5503
    :cond_28
    if-nez v2, :cond_34

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 5505
    iget-object v3, p0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v3, p3}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5509
    :cond_33
    :goto_33
    return-void

    .line 5506
    :cond_34
    if-eqz v2, :cond_33

    if-nez v1, :cond_33

    if-eqz v0, :cond_33

    .line 5507
    iget-object v3, p0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_33
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZ)V
    .registers 11
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I
    .param p4, "flush"    # Z

    .prologue
    .line 5683
    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 5684
    :cond_8
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 5685
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, mDefaultDns:Ljava/net/InetAddress;

    if-eqz v3, :cond_42

    .line 5686
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5687
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 5688
    iget-object v3, p0, mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no dns provided for netId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", so using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    .line 5695
    :cond_42
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Dns servers for network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 5698
    invoke-direct {p0}, isDnsBlockByTestApp()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 5699
    const-string v3, "adding dns null for IOT TEST (block dns)"

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 5700
    invoke-direct {p0, v1}, setNullDnsSystemProperties(Ljava/util/Collection;)V

    .line 5724
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_70
    :goto_70
    return-void

    .line 5691
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_71
    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove dns info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "while DATA_SUSPEND"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_42

    .line 5706
    :cond_99
    :try_start_99
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a6} :catch_c1

    .line 5711
    :goto_a6
    iget-object v3, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v4, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5712
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_bd

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    if-ne v3, p3, :cond_bd

    .line 5713
    invoke-direct {p0, v1}, setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 5715
    :cond_bd
    invoke-direct {p0}, flushVmDnsCache()V

    goto :goto_70

    .line 5708
    .end local v0    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_c1
    move-exception v2

    .line 5709
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setDnsServersForNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_a6

    .line 5716
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d9
    if-eqz p4, :cond_70

    .line 5718
    :try_start_db
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3}, Landroid/os/INetworkManagementService;->flushNetworkDnsCache(I)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e0} :catch_e4

    .line 5722
    :goto_e0
    invoke-direct {p0}, flushVmDnsCache()V

    goto :goto_70

    .line 5719
    :catch_e4
    move-exception v2

    .line 5720
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in flushNetworkDnsCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_e0
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "valid"    # Z

    .prologue
    .line 6176
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->validated:Z

    if-nez v1, :cond_5

    .line 6187
    :cond_4
    :goto_4
    return-void

    .line 6179
    :cond_5
    invoke-direct {p0, p1}, isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6181
    if-eqz p2, :cond_1b

    const/16 v0, 0x64

    .line 6183
    .local v0, "newInetCondition":I
    :goto_f
    iget v1, p0, mDefaultInetConditionPublished:I

    if-eq v0, v1, :cond_4

    .line 6185
    iput v0, p0, mDefaultInetConditionPublished:I

    .line 6186
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_4

    .line 6181
    .end local v0    # "newInetCondition":I
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 10
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .prologue
    .line 5512
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5513
    .local v3, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    if-eqz p2, :cond_5b

    .line 5514
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v3

    .line 5518
    :cond_b
    :goto_b
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5520
    .local v2, "iface":Ljava/lang/String;
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 5521
    iget-object v4, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_42} :catch_43

    goto :goto_11

    .line 5522
    :catch_43
    move-exception v0

    .line 5523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception adding interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, loge(Ljava/lang/String;)V

    goto :goto_11

    .line 5515
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_5b
    if-eqz p1, :cond_b

    .line 5516
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    goto :goto_b

    .line 5526
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_64
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5528
    .restart local v2    # "iface":Ljava/lang/String;
    :try_start_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 5529
    iget-object v4, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_9b} :catch_9c

    goto :goto_6a

    .line 5530
    :catch_9c
    move-exception v0

    .line 5531
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception removing interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, loge(Ljava/lang/String;)V

    goto :goto_6a

    .line 5534
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_b4
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 12
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 5437
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5438
    .local v4, "newLp":Landroid/net/LinkProperties;
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v6, Landroid/net/Network;->netId:I

    .line 5440
    .local v2, "netId":I
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 5441
    .local v3, "netType":I
    const/4 v0, 0x0

    .line 5442
    .local v0, "flushDns":Z
    const/4 v1, 0x1

    .line 5444
    .local v1, "hasCapability":Z
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5445
    .local v5, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_29

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 5446
    const-string v6, "ConnectivityService"

    const-string/jumbo v7, "updateLinkProperties: ignore addRoute while SUSPENDED."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5491
    :cond_28
    :goto_28
    return-void

    .line 5454
    :cond_29
    iget-object v6, p0, mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 5456
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateLinkProperties: newLp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 5458
    invoke-direct {p0, v4, p2, v2}, updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 5459
    invoke-direct {p0, v4, p2, v2}, updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    move-result v0

    .line 5463
    :goto_54
    invoke-direct {p0, v4, p2}, updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 5468
    invoke-direct {p0, p1}, updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5471
    invoke-virtual {p0}, isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 5472
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 5476
    :cond_68
    if-eqz v1, :cond_6d

    .line 5477
    invoke-direct {p0, v4, p2, v3}, updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 5480
    :cond_6d
    invoke-direct {p0, v4, p2, v2, v0}, updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZ)V

    .line 5481
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_a5

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a5

    .line 5482
    const-string v6, "ConnectivityService"

    const-string/jumbo v7, "updateLinkProperties: skip updateClat when SUSPENDED."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5486
    :goto_86
    invoke-direct {p0, p1}, isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v6

    invoke-direct {p0, v6}, handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 5488
    :cond_93
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 5489
    const v6, 0x80007

    invoke-virtual {p0, p1, v6}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_28

    .line 5461
    :cond_a0
    invoke-direct {p0, v4, p2, v2}, updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    move-result v0

    goto :goto_54

    .line 5484
    :cond_a5
    invoke-direct {p0, v4, p2, p1}, updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_86
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 9
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2066
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 2067
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 2068
    .local v2, "mtu":I
    if-eqz p2, :cond_16

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2069
    const-string v3, "identical MTU - not setting"

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2090
    :goto_15
    return-void

    .line 2073
    :cond_16
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v3

    if-nez v3, :cond_41

    .line 2074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_15

    .line 2079
    :cond_41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2080
    const-string v3, "Setting MTU size with null iface."

    invoke-static {v3}, loge(Ljava/lang/String;)V

    goto :goto_15

    .line 2085
    :cond_4d
    :try_start_4d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting MTU size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2086
    iget-object v3, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_72} :catch_73

    goto :goto_15

    .line 2087
    :catch_73
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 15
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 6212
    const-string v6, "ConnectivityService"

    const-string/jumbo v8, "updateNetworkInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 6214
    .local v4, "state":Landroid/net/NetworkInfo$State;
    const/4 v3, 0x0

    .line 6216
    .local v3, "oldInfo":Landroid/net/NetworkInfo;
    monitor-enter p1

    .line 6217
    :try_start_11
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6218
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6219
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_80

    .line 6220
    invoke-direct {p0, p1}, notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6222
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_53

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v8, :cond_53

    .line 6227
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 6228
    iget-object v9, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_83

    move v8, v7

    :goto_42
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v6, :cond_4c

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez v6, :cond_85

    :cond_4c
    move v6, v7

    :goto_4d
    invoke-interface {v9, v10, v8, v6}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_50} :catch_91

    .line 6238
    :goto_50
    invoke-direct {p0, p1, v11}, updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 6241
    :cond_53
    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, v4, :cond_a9

    .line 6242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring duplicate network state non-change. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 6321
    :cond_7f
    :goto_7f
    return-void

    .line 6219
    :catchall_80
    move-exception v6

    :try_start_81
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v6

    :cond_83
    move v8, v2

    .line 6228
    goto :goto_42

    :cond_85
    move v6, v2

    goto :goto_4d

    .line 6233
    :cond_87
    :try_start_87
    iget-object v6, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_91

    goto :goto_50

    .line 6235
    :catch_91
    move-exception v1

    .line 6236
    .local v1, "ee":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, loge(Ljava/lang/String;)V

    goto :goto_50

    .line 6248
    .end local v1    # "ee":Ljava/lang/Exception;
    :cond_a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_1a2

    const-string v6, "null"

    :goto_c0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", reason = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 6254
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_1e7

    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v6, :cond_1e7

    .line 6255
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v7, :cond_126

    .line 6259
    :try_start_ff
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v6

    if-eqz v6, :cond_1ae

    .line 6260
    iget-object v9, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a8

    move v8, v7

    :goto_118
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v6, :cond_122

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->allowBypass:Z

    if-nez v6, :cond_1ab

    :cond_122
    move v6, v7

    :goto_123
    invoke-interface {v9, v10, v8, v6}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_126} :catch_1b9

    .line 6273
    :cond_126
    :goto_126
    iput-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 6274
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v7, :cond_133

    .line 6276
    invoke-direct {p0, p1, v11}, updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 6278
    :cond_133
    const v6, 0x80001

    invoke-virtual {p0, p1, v6}, notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6279
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v8, 0x82001

    invoke-virtual {v6, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 6280
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 6282
    iget-object v8, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 6283
    :try_start_14a
    iget-boolean v6, p0, mDefaultProxyDisabled:Z

    if-nez v6, :cond_15d

    .line 6284
    const/4 v6, 0x1

    iput-boolean v6, p0, mDefaultProxyDisabled:Z

    .line 6285
    iget-object v6, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v6, :cond_15d

    iget-object v6, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v6, :cond_15d

    .line 6286
    const/4 v6, 0x0

    invoke-direct {p0, v6}, sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 6289
    :cond_15d
    monitor-exit v8
    :try_end_15e
    .catchall {:try_start_14a .. :try_end_15e} :catchall_1e4

    .line 6293
    :cond_15e
    invoke-direct {p0, p1, v2}, rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 6294
    const-string/jumbo v6, "persist.cne.feature"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 6295
    .local v5, "val":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_16c

    move v2, v7

    .line 6296
    .local v2, "isPropFeatureEnabled":Z
    :cond_16c
    if-eqz v2, :cond_7f

    .line 6297
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eq v6, v7, :cond_17a

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_7f

    .line 6300
    :cond_17a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending network info update for type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 6302
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-direct {p0, v6, v7}, sendNetworkInfoUpdateBroadcast(II)V

    goto/16 :goto_7f

    .line 6248
    .end local v2    # "isPropFeatureEnabled":Z
    .end local v5    # "val":I
    :cond_1a2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    goto/16 :goto_c0

    :cond_1a8
    move v8, v2

    .line 6260
    goto/16 :goto_118

    :cond_1ab
    move v6, v2

    goto/16 :goto_123

    .line 6265
    :cond_1ae
    :try_start_1ae
    iget-object v6, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(I)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b7} :catch_1b9

    goto/16 :goto_126

    .line 6267
    :catch_1b9
    move-exception v0

    .line 6268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, loge(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 6289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1e4
    move-exception v6

    :try_start_1e5
    monitor-exit v8
    :try_end_1e6
    .catchall {:try_start_1e5 .. :try_end_1e6} :catchall_1e4

    throw v6

    .line 6305
    :cond_1e7
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_21d

    .line 6306
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_1fa

    .line 6307
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v6}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 6308
    :cond_1fa
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 6309
    iget-object v7, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6310
    :try_start_203
    iget-boolean v6, p0, mDefaultProxyDisabled:Z

    if-eqz v6, :cond_217

    .line 6311
    const/4 v6, 0x0

    iput-boolean v6, p0, mDefaultProxyDisabled:Z

    .line 6312
    iget-object v6, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v6, :cond_217

    iget-object v6, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v6, :cond_217

    .line 6313
    iget-object v6, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v6}, sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 6316
    :cond_217
    monitor-exit v7

    goto/16 :goto_7f

    :catchall_21a
    move-exception v6

    monitor-exit v7
    :try_end_21c
    .catchall {:try_start_203 .. :try_end_21c} :catchall_21a

    throw v6

    .line 6318
    :cond_21d
    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_7f

    .line 6319
    const-string v6, "Don\'t disconnect PDP in SUSPENDED"

    invoke-static {v6}, log(Ljava/lang/String;)V

    goto/16 :goto_7f
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    .prologue
    .line 6324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkScore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 6325
    if-gez p2, :cond_53

    .line 6326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkScore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got a negative score ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").  Bumping score to min of 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, loge(Ljava/lang/String;)V

    .line 6328
    const/4 p2, 0x0

    .line 6331
    :cond_53
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6332
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 6334
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_61

    invoke-direct {p0, p1, v0}, rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6336
    :cond_61
    invoke-direct {p0, p1}, sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6337
    return-void
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .registers 11
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .prologue
    .line 5541
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5542
    .local v4, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_6d

    .line 5543
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 5551
    :cond_b
    :goto_b
    iget-object v5, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 5552
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-nez v5, :cond_11

    .line 5553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 5555
    :try_start_43
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v3}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_11

    .line 5556
    :catch_49
    move-exception v1

    .line 5557
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_56

    .line 5558
    :cond_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in addRoute for non-gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, loge(Ljava/lang/String;)V

    goto :goto_11

    .line 5544
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_6d
    if-eqz p1, :cond_b

    .line 5545
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    goto :goto_b

    .line 5562
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_76
    iget-object v5, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7c
    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 5563
    .restart local v3    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 5566
    const-string v5, "DCGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 5567
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 5568
    .local v0, "direct":Landroid/net/RouteInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding direct Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 5570
    :try_start_c4
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v0}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c9} :catch_110

    .line 5575
    .end local v0    # "direct":Landroid/net/RouteInfo;
    :cond_c9
    :goto_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 5577
    :try_start_e9
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v3}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ee} :catch_ef

    goto :goto_7c

    .line 5578
    :catch_ef
    move-exception v1

    .line 5579
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_f8

    .line 5580
    :cond_f8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in addRoute for gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, loge(Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 5571
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "direct":Landroid/net/RouteInfo;
    :catch_110
    move-exception v1

    .line 5572
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in add direct Route for gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, loge(Ljava/lang/String;)V

    goto :goto_c9

    .line 5585
    .end local v0    # "direct":Landroid/net/RouteInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_128
    iget-object v5, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_178

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 5586
    .restart local v3    # "route":Landroid/net/RouteInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 5588
    :try_start_15a
    iget-object v5, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v3}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_15f} :catch_160

    goto :goto_12e

    .line 5589
    :catch_160
    move-exception v1

    .line 5590
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in removeRoute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, loge(Ljava/lang/String;)V

    goto :goto_12e

    .line 5593
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_178
    iget-object v5, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_188

    iget-object v5, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18a

    :cond_188
    const/4 v5, 0x1

    :goto_189
    return v5

    :cond_18a
    const/4 v5, 0x0

    goto :goto_189
.end method

.method private updateSourceRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 18
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "curLp"    # Landroid/net/LinkProperties;
    .param p3, "netType"    # I

    .prologue
    .line 5617
    move/from16 v0, p3

    invoke-direct {p0, v0}, checkSourceRouteCondition(I)Z

    move-result v10

    if-nez v10, :cond_f

    .line 5618
    const-string/jumbo v10, "updateSourceRoutes : no source routing conditions"

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 5678
    :cond_e
    return-void

    .line 5622
    :cond_f
    new-instance v7, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v7}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5623
    .local v7, "localAddrDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_9c

    .line 5624
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 5629
    :cond_1c
    :goto_1c
    iget-object v10, p0, mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    aget-object v9, v10, p3

    .line 5631
    .local v9, "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSourceRoutes : add source routing for type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 5632
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_a6

    .line 5633
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 5634
    .local v6, "la":Landroid/net/LinkAddress;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSourceRoutes : removing src route for:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 5636
    :try_start_72
    iget-object v10, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_83} :catch_84

    goto :goto_47

    .line 5637
    :catch_84
    move-exception v1

    .line 5638
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to remove src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, loge(Ljava/lang/String;)V

    goto :goto_47

    .line 5625
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "la":Landroid/net/LinkAddress;
    .end local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_9c
    if-eqz p1, :cond_1c

    .line 5626
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v10

    iput-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    goto/16 :goto_1c

    .line 5643
    .restart local v9    # "ra":Lcom/android/server/ConnectivityService$RouteAttributes;
    :cond_a6
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_e

    .line 5644
    const/4 v2, 0x0

    .local v2, "gw4Addr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 5645
    .local v3, "gw6Addr":Ljava/net/InetAddress;
    if-eqz p1, :cond_e

    .line 5646
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 5647
    .local v5, "ifaceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 5648
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .line 5649
    .local v8, "r":Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_dd

    .line 5650
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_c4

    .line 5652
    :cond_dd
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_c4

    .line 5655
    .end local v8    # "r":Landroid/net/RouteInfo;
    :cond_e2
    iget-object v10, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e8
    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 5657
    .restart local v6    # "la":Landroid/net/LinkAddress;
    :try_start_f4
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_14b

    .line 5658
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSourceRoutes : add src route for:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 5659
    if-eqz v2, :cond_e8

    .line 5660
    iget-object v10, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_132} :catch_133

    goto :goto_e8

    .line 5670
    :catch_133
    move-exception v1

    .line 5672
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while trying to add src route: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, loge(Ljava/lang/String;)V

    goto :goto_e8

    .line 5664
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14b
    :try_start_14b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSourceRoutes : add src route for:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 5665
    if-eqz v3, :cond_e8

    .line 5666
    iget-object v10, p0, mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v13

    invoke-interface {v10, v5, v11, v12, v13}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_181} :catch_133

    goto/16 :goto_e8
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 14
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 2112
    invoke-direct {p0, p1}, isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 2113
    const-string v8, "DCGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    const-string v8, "DGG"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    const-string v8, "DCGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    const-string v8, "DCGGS"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    :cond_30
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v8, v10, :cond_42

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_ac

    .line 2119
    :cond_42
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v8}, isNonPreferredDataSlotMMSAPN(Landroid/net/NetworkInfo;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 2120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update tcp buffersize for type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-static {v9}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2130
    :cond_6b
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v6

    .line 2131
    .local v6, "tcpBufferSizes":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2132
    .local v7, "values":[Ljava/lang/String;
    if-eqz v6, :cond_7a

    .line 2133
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2136
    :cond_7a
    if-eqz v7, :cond_80

    array-length v8, v7

    const/4 v9, 0x6

    if-eq v8, v9, :cond_a4

    .line 2137
    :cond_80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid tcpBufferSizes string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", using defaults"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 2138
    const-string v6, "4096,87380,110208,4096,16384,110208"

    .line 2139
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2142
    :cond_a4
    iget-object v8, p0, mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 2167
    .end local v6    # "tcpBufferSizes":Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 2122
    :cond_ad
    const-string v8, "no need to update tcp buffersize"

    invoke-static {v8}, log(Ljava/lang/String;)V

    goto :goto_ac

    .line 2145
    .restart local v6    # "tcpBufferSizes":Ljava/lang/String;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_b3
    :try_start_b3
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting tx/rx TCP buffers to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const-string v3, "/sys/kernel/ipv4/tcp_"

    .line 2148
    .local v3, "prefix":Ljava/lang/String;
    const-string v8, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string v8, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string v8, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string v8, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    const-string v8, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const-string v8, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v9, 0x5

    aget-object v9, v7, v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iput-object v6, p0, mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ff} :catch_12c

    .line 2159
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_ff
    const-string v0, "net.tcp.default_init_rwnd"

    .line 2160
    .local v0, "defaultRwndKey":Ljava/lang/String;
    const-string v8, "net.tcp.default_init_rwnd"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2161
    .local v1, "defaultRwndValue":I
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "tcp_default_init_rwnd"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2163
    .local v4, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v5, "sys.sysctl.tcp_def_init_rwnd"

    .line 2164
    .local v5, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_ac

    .line 2165
    const-string/jumbo v8, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 2155
    .end local v0    # "defaultRwndKey":Ljava/lang/String;
    .end local v1    # "defaultRwndValue":I
    .end local v4    # "rwndValue":Ljava/lang/Integer;
    .end local v5    # "sysctlKey":Ljava/lang/String;
    :catch_12c
    move-exception v2

    .line 2156
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, loge(Ljava/lang/String;)V

    goto :goto_ff
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 6493
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 6494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6495
    .local v0, "user":I
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6496
    :try_start_e
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 6497
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 1999
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckCompleted: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2002
    return-void
.end method

.method public checkMobileProvisioning(I)I
    .registers 3
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 4683
    const/4 v0, -0x1

    return v0
.end method

.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 3459
    move v0, p1

    .line 3461
    .local v0, "usedNetworkType":I
    if-nez p1, :cond_d0

    .line 3462
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3463
    const/4 v0, 0x2

    .line 3512
    :goto_c
    return v0

    .line 3464
    :cond_d
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3465
    const/4 v0, 0x3

    goto :goto_c

    .line 3466
    :cond_17
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3468
    :cond_27
    const/4 v0, 0x4

    goto :goto_c

    .line 3469
    :cond_29
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3470
    const/4 v0, 0x5

    goto :goto_c

    .line 3471
    :cond_33
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3472
    const/16 v0, 0xa

    goto :goto_c

    .line 3473
    :cond_3e
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3474
    const/16 v0, 0xb

    goto :goto_c

    .line 3475
    :cond_49
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3476
    const/16 v0, 0xc

    goto :goto_c

    .line 3477
    :cond_54
    const-string v1, "enableEmergency"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 3478
    const/16 v0, 0xf

    goto :goto_c

    .line 3480
    :cond_5f
    const-string v1, "enableCMDM"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3481
    const/16 v0, 0x14

    goto :goto_c

    .line 3482
    :cond_6a
    const-string v1, "enableCMMAIL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 3483
    const/16 v0, 0x15

    goto :goto_c

    .line 3484
    :cond_75
    const-string v1, "enableWAP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 3485
    const/16 v0, 0x16

    goto :goto_c

    .line 3486
    :cond_80
    const-string v1, "enableBIP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 3487
    const/16 v0, 0x17

    goto :goto_c

    .line 3489
    :cond_8b
    const-string v1, "enable800APN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3490
    const/16 v0, 0x18

    goto/16 :goto_c

    .line 3491
    :cond_97
    const-string v1, "enableMMS2"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 3492
    const/16 v0, 0x1a

    goto/16 :goto_c

    .line 3493
    :cond_a3
    const-string v1, "enableXCAP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 3494
    const/16 v0, 0x1b

    goto/16 :goto_c

    .line 3496
    :cond_af
    const-string v1, "enableENT1"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 3497
    const/16 v0, 0x1c

    goto/16 :goto_c

    .line 3498
    :cond_bb
    const-string v1, "enableENT2"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 3499
    const/16 v0, 0x1d

    goto/16 :goto_c

    .line 3501
    :cond_c7
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3503
    :cond_d0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e9

    .line 3504
    const-string/jumbo v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 3505
    const/16 v0, 0xd

    goto/16 :goto_c

    .line 3507
    :cond_e0
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3510
    :cond_e9
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method public declared-synchronized createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3832
    monitor-enter p0

    :try_start_3
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    if-ge v1, v9, :cond_40

    .line 3834
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_c6

    move v1, v9

    .line 3860
    :goto_3e
    monitor-exit p0

    return v1

    .line 3837
    :cond_40
    if-eqz p1, :cond_44

    if-nez p2, :cond_4d

    .line 3838
    :cond_44
    :try_start_44
    const-string v1, "ConnectivityService"

    const-string v2, "Package Name or Profile Name passed is null in createEnterpriseVpn"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_c6

    move v1, v10

    .line 3839
    goto :goto_3e

    .line 3842
    :cond_4d
    :try_start_4d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3843
    .local v6, "user":I
    invoke-direct {p0, p2}, checkIfKnoxVpnProfileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 3844
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mNetd:Landroid/os/INetworkManagementService;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 3845
    .local v0, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v1, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 3846
    .local v8, "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    if-nez v8, :cond_7b

    .line 3847
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3849
    .restart local v8    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_7b
    invoke-virtual {v8, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3850
    iget-object v1, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3851
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside create enterprise vpn: Storing obj for user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 3860
    goto :goto_3e

    .line 3853
    .end local v0    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v8    # "vpnStoreMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/EnterpriseVpn;>;"
    :cond_9d
    const-string v1, "ConnectivityService"

    const-string v2, " createEnterpriseVpn : Profile exists with same name. Cannot create a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_a4} :catch_a6
    .catchall {:try_start_4d .. :try_end_a4} :catchall_c6

    move v1, v10

    .line 3854
    goto :goto_3e

    .line 3856
    .end local v6    # "user":I
    :catch_a6
    move-exception v7

    .line 3857
    .local v7, "e":Ljava/lang/Exception;
    :try_start_a7
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_c6

    move v1, v10

    .line 3858
    goto/16 :goto_3e

    .line 3832
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_c6
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "isConnectedProfile"    # Z

    .prologue
    .line 4266
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_27

    .line 4267
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    .line 4268
    const/4 v1, 0x0

    .line 4272
    :goto_25
    monitor-exit p0

    return v1

    .line 4271
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4272
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, disconnect(Ljava/lang/String;I)Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_30

    move-result v1

    goto :goto_25

    .line 4266
    .end local v0    # "callingUid":I
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnectPerAppVpn(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 4434
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_27

    .line 4435
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2c

    .line 4436
    const/4 v0, 0x0

    .line 4438
    :goto_25
    monitor-exit p0

    return v0

    :cond_27
    :try_start_27
    invoke-direct {p0, p1, p2}, disconnect(Ljava/lang/String;I)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    move-result v0

    goto :goto_25

    .line 4434
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSystemVpn(I)V
    .registers 7
    .param p1, "user"    # I

    .prologue
    .line 4419
    monitor-enter p0

    :try_start_1
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectSystemVpn: user going to be removed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_68

    .line 4421
    iget-object v2, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4422
    .local v1, "systemVPNProfile":Ljava/lang/String;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectSystemVpn: systemVPNProfile is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    if-eqz v1, :cond_68

    .line 4424
    const-string v2, "ConnectivityService"

    const-string v3, "disconnect is called from disconnectSystemVpn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4426
    .local v0, "callingUid":I
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The callingUid value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    invoke-direct {p0, v1, v0}, disconnect(Ljava/lang/String;I)Z
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6a

    .line 4430
    .end local v0    # "callingUid":I
    .end local v1    # "systemVPNProfile":Ljava/lang/String;
    :cond_68
    monitor-exit p0

    return-void

    .line 4419
    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2233
    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v9, p2, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2234
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3a

    .line 2237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2322
    :cond_39
    :goto_39
    return-void

    .line 2243
    :cond_3a
    const-string v10, "NetworkFactories for:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2245
    iget-object v10, p0, mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2246
    .local v6, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    .line 2248
    .end local v6    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_5e
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2249
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2251
    iget-object v10, p0, mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v11, p0, mDefaultRequest:Landroid/net/NetworkRequest;

    iget v11, v11, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2252
    .local v1, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string v10, "Active default network: "

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    if-nez v1, :cond_ca

    .line 2254
    const-string v10, "none"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    :goto_7c
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2260
    const-string v10, "Current Networks:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2262
    iget-object v10, p0, mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2263
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2265
    const-string v10, "Requests:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2267
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b0
    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_d2

    .line 2268
    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkRequest;

    invoke-virtual {v10}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 2256
    .end local v2    # "i":I
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_ca
    iget-object v10, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v10, Landroid/net/Network;->netId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_7c

    .line 2270
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v2    # "i":I
    .restart local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_d2
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2271
    const-string v10, "Lingered:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2273
    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_e3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkRequest;

    .local v7, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v7}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e3

    .line 2274
    .end local v7    # "nr":Landroid/net/NetworkRequest;
    :cond_f7
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2275
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_91

    .line 2277
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_fe
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2278
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2280
    const-string v10, "Network Requests:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2282
    iget-object v10, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_116
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2283
    .local v8, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v8}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_116

    .line 2285
    .end local v8    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_12a
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2286
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActiveDefaultNetwork: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mActiveDefaultNetwork:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    iget v10, p0, mActiveDefaultNetwork:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_17b

    .line 2290
    invoke-virtual {p0}, getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2291
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_17b

    .line 2292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2296
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_17b
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2298
    const-string v10, "mLegacyTypeTracker:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2300
    iget-object v10, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v10, v9}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2301
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2302
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2304
    monitor-enter p0

    .line 2305
    :try_start_192
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkTransitionWakeLock is currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_1fd

    const-string v10, ""

    :goto_1a7
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "held."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It was last requested for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    monitor-exit p0
    :try_end_1d1
    .catchall {:try_start_192 .. :try_end_1d1} :catchall_200

    .line 2309
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2311
    iget-object v10, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, v9, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2313
    iget-object v10, p0, mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_39

    .line 2314
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2315
    const-string v10, "Inet condition reports:"

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2317
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1e9
    iget-object v10, p0, mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_203

    .line 2318
    iget-object v10, p0, mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2317
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e9

    .line 2305
    .end local v2    # "i":I
    :cond_1fd
    :try_start_1fd
    const-string v10, "not "

    goto :goto_1a7

    .line 2308
    :catchall_200
    move-exception v10

    monitor-exit p0
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_200

    throw v10

    .line 2320
    .restart local v2    # "i":I
    :cond_203
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_39
.end method

.method public enforceVzw800ApnPermission(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 6548
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6549
    .local v1, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 6550
    .local v0, "callingPackageName":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "VZW800APN"

    invoke-direct {p0, v2, v3}, isPackageAvsAuthorized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 6551
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller do not have APN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6554
    :cond_1d
    return-void
.end method

.method public declared-synchronized establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 3928
    monitor-enter p0

    const/4 v3, 0x0

    .line 3929
    .local v3, "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_28

    .line 3930
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_15f

    move-object v4, v3

    .line 3985
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .local v4, "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :goto_26
    monitor-exit p0

    return-object v4

    .line 3933
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_28
    if-eqz p1, :cond_2c

    if-nez p2, :cond_35

    .line 3934
    :cond_2c
    :try_start_2c
    const-string v6, "ConnectivityService"

    const-string v7, "Config or Profile Name passed is null in establishEnterpriseVpn"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 3935
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_26

    .line 3937
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_35
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "establishEnterpriseVpn : user = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_15f

    .line 3939
    :try_start_59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 3940
    .local v5, "user":I
    const-string v6, "net.vpn.framework"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3941
    .local v2, "getProperty":Ljava/lang/String;
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "establishEnterpriseVpn: getProperty value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    const/4 v1, 0x0

    .line 3943
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v6, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c9

    .line 3944
    iget-object v6, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 3949
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-boolean v6, p0, knoxV2Enabled:Z

    if-nez v6, :cond_ee

    .line 3950
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn: knox version 1 is reached"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    if-eqz v1, :cond_e4

    .line 3952
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn:knoxV1Enabled:Returning enterpriseVpn is not null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-direct {p0, v1, p1, v5, p2}, establishEnterpriseVpnForKnox1VpnClients(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_ad} :catch_13f
    .catchall {:try_start_59 .. :try_end_ad} :catchall_15f

    move-result-object v3

    .line 3984
    :goto_ae
    :try_start_ae
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "establishEnterpriseVpn: knoxVpnFd value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ae .. :try_end_c6} :catchall_15f

    move-object v4, v3

    .line 3985
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3946
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_c9
    :try_start_c9
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find enterpriseVpn object in hashmap : user = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 3947
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3955
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_e4
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn:knoxV1Enabled:Returning enterpriseVpn = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 3956
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3958
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_ee
    iget-boolean v6, p0, knoxV2Enabled:Z

    if-eqz v6, :cond_135

    .line 3959
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn: knox version 2 is reached"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    if-eqz v1, :cond_12b

    .line 3961
    iput-object p2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 3962
    const-string v6, "1.0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 3963
    invoke-direct {p0, v1, p1, v5, p2}, establishEnterpriseVpnForKnox1VpnClients(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_ae

    .line 3965
    :cond_10a
    const-string v6, "2.0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 3966
    invoke-direct {p0, v1, p1, v5, p2}, establishEnterpriseVpnForKnox2VpnClients(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/internal/net/VpnConfig;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_ae

    .line 3969
    :cond_117
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn: KNOX VPN is not activated"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    iget-object v6, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_ae

    .line 3973
    :cond_12b
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn:knoxV2Enabled:Returning enterpriseVpn = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 3974
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3977
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :cond_135
    const-string v6, "ConnectivityService"

    const-string v7, "establishEnterpriseVpn: unsupported knox version is reached"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_13c} :catch_13f
    .catchall {:try_start_c9 .. :try_end_13c} :catchall_15f

    move-object v4, v3

    .line 3978
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3980
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "getProperty":Ljava/lang/String;
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "user":I
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :catch_13f
    move-exception v0

    .line 3981
    .local v0, "e":Ljava/lang/Exception;
    :try_start_140
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_140 .. :try_end_15c} :catchall_15f

    move-object v4, v3

    .line 3982
    .end local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_26

    .line 3928
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "knoxVpnFd":Landroid/os/ParcelFileDescriptor;
    :catchall_15f
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    const/4 v6, 0x1

    .line 3603
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 3604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3606
    .local v2, "user":I
    const/4 v1, 0x0

    .line 3607
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    if-lt v3, v6, :cond_10c

    .line 3608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3}, getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3609
    .local v0, "callingApp":Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "establishVpn called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    const-string v3, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3611
    const-string v3, "ConnectivityService"

    const-string v4, "establishVpn called by anyconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    invoke-direct {p0, v0, v2}, anyConnectSupportingKnox(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_79

    .line 3613
    invoke-direct {p0, p1, v2}, checkIfCallerIsProxyCisco(Lcom/android/internal/net/VpnConfig;I)V

    .line 3614
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3615
    :try_start_4e
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3616
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_76

    .line 3650
    .end local v0    # "callingApp":Ljava/lang/String;
    :cond_5b
    :goto_5b
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "establishVpn: config.session value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    return-object v1

    .line 3616
    .restart local v0    # "callingApp":Ljava/lang/String;
    :catchall_76
    move-exception v3

    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v3

    .line 3618
    :cond_79
    invoke-direct {p0, p1}, checkKnoxVpnProfileType(Lcom/android/internal/net/VpnConfig;)I

    move-result v3

    if-ne v3, v6, :cond_94

    .line 3619
    const-string v3, "ConnectivityService"

    const-string v4, "establishVpn called by knox per app vpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3621
    :try_start_89
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3622
    monitor-exit v4

    goto :goto_5b

    :catchall_91
    move-exception v3

    monitor-exit v4
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_91

    throw v3

    .line 3623
    :cond_94
    invoke-direct {p0, p1}, checkKnoxVpnProfileType(Lcom/android/internal/net/VpnConfig;)I

    move-result v3

    if-nez v3, :cond_5b

    .line 3624
    const-string v3, "ConnectivityService"

    const-string v4, "establishVpn called by knox system vpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3626
    :try_start_a4
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3627
    monitor-exit v4

    goto :goto_5b

    :catchall_b2
    move-exception v3

    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_b2

    throw v3

    .line 3630
    :cond_b5
    invoke-direct {p0, p1}, checkKnoxVpnProfileType(Lcom/android/internal/net/VpnConfig;)I

    move-result v3

    if-ne v3, v6, :cond_f0

    .line 3631
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "establishVpn called by f5 and the route value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    const-string v3, "ConnectivityService"

    const-string v4, "establishVpn called by knox per app vpn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3634
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3635
    :try_start_e4
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3636
    monitor-exit v4

    goto/16 :goto_5b

    :catchall_ed
    move-exception v3

    monitor-exit v4
    :try_end_ef
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_ed

    throw v3

    .line 3638
    :cond_f0
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3639
    :try_start_f3
    const-string v3, "ConnectivityService"

    const-string v5, "establishVpn called by non-knox vpn"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3641
    monitor-exit v4

    goto/16 :goto_5b

    :catchall_109
    move-exception v3

    monitor-exit v4
    :try_end_10b
    .catchall {:try_start_f3 .. :try_end_10b} :catchall_109

    throw v3

    .line 3646
    .end local v0    # "callingApp":Ljava/lang/String;
    :cond_10c
    iget-object v4, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3647
    :try_start_10f
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3648
    monitor-exit v4

    goto/16 :goto_5b

    :catchall_11e
    move-exception v3

    monitor-exit v4
    :try_end_120
    .catchall {:try_start_10f .. :try_end_120} :catchall_11e

    throw v3
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 4647
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4660
    :goto_a
    return v3

    .line 4651
    :cond_b
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v4

    .line 4652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    :try_start_f
    iget-object v5, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3f

    .line 4653
    iget-object v5, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4654
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v1, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 4655
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_3c

    .line 4656
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    monitor-exit v4

    goto :goto_a

    .line 4659
    .end local v1    # "lp":Landroid/net/LinkProperties;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_39

    throw v3

    .line 4652
    .restart local v1    # "lp":Landroid/net/LinkProperties;
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 4659
    .end local v1    # "lp":Landroid/net/LinkProperties;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3f
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_39

    goto :goto_a
.end method

.method public getActiveEnterpriseNetworkType(Ljava/lang/String;)I
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 3160
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3161
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getActiveEnterpriseNetworkType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1293
    .local v0, "uid":I
    iget v1, p0, mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, getLinkProperties(II)Landroid/net/LinkProperties;

    move-result-object v1

    return-object v1
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .registers 3

    .prologue
    .line 5067
    invoke-direct {p0}, enforceAccessPermission()V

    .line 5068
    iget v0, p0, mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1e

    .line 5070
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 5072
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 1093
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1095
    .local v1, "uid":I
    iget v2, p0, mActiveDefaultNetwork:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, getNetworkInfo(IIZ)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1096
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2b

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning getActiveNetworkInfo :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1099
    :cond_2b
    return-object v0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 1152
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 1153
    iget v0, p0, mActiveDefaultNetwork:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, getNetworkInfo(IIZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 1143
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1144
    iget v0, p0, mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1145
    iget v0, p0, mActiveDefaultNetwork:I

    invoke-direct {p0, v0}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1147
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 5

    .prologue
    .line 1423
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1427
    .local v2, "token":J
    :try_start_7
    iget v1, p0, mActiveDefaultNetwork:I

    invoke-direct {p0, v1}, getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    move-result-object v0

    .line 1428
    .local v0, "state":Landroid/net/NetworkState;
    if-eqz v0, :cond_1a

    .line 1430
    :try_start_f
    iget-object v1, p0, mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_1f

    move-result-object v1

    .line 1436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    return-object v1

    .line 1431
    :catch_19
    move-exception v1

    .line 1434
    :cond_1a
    const/4 v1, 0x0

    .line 1436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v0    # "state":Landroid/net/NetworkState;
    :catchall_1f
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .registers 8

    .prologue
    .line 5078
    invoke-direct {p0}, enforceAccessPermission()V

    .line 5079
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 5080
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkQualityInfo;>;"
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_1d

    aget-object v5, v0, v1

    .line 5081
    .local v5, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1a

    .line 5082
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v3

    .line 5083
    .local v3, "li":Landroid/net/LinkQualityInfo;
    if-eqz v3, :cond_1a

    .line 5084
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5080
    .end local v3    # "li":Landroid/net/LinkQualityInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 5089
    .end local v5    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/LinkQualityInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkQualityInfo;

    return-object v6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 1223
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1225
    .local v2, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1226
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v0, 0x0

    .local v0, "networkType":I
    :goto_c
    const/16 v3, 0x11

    if-gt v0, v3, :cond_20

    .line 1228
    invoke-direct {p0, v0}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1229
    invoke-direct {p0, v0, v2}, getFilteredNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1232
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/NetworkInfo;

    return-object v3
.end method

.method public getAllNetworkInfoEx()[Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 1238
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1240
    .local v2, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1241
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v0, 0x0

    .local v0, "networkType":I
    :goto_c
    const/16 v3, 0x1d

    if-gt v0, v3, :cond_20

    .line 1243
    invoke-direct {p0, v0}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1244
    invoke-direct {p0, v0, v2}, getFilteredNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1247
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/NetworkInfo;

    return-object v3
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1366
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1368
    .local v10, "uid":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1372
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    const/4 v6, 0x0

    .local v6, "networkType":I
    :goto_d
    const/16 v0, 0x1d

    if-gt v6, v0, :cond_b5

    .line 1375
    invoke-direct {p0, v6}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 1376
    invoke-direct {p0, v6, v10}, getFilteredNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1377
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, v6}, getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1378
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v6}, getNetworkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1379
    .local v3, "netcap":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    .line 1380
    .local v4, "subscriberId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1381
    .local v5, "networkId":Ljava/lang/String;
    const-string v0, "DCGG"

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "DGG"

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "DCGS"

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "DCGGS"

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_4d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1387
    sparse-switch v6, :sswitch_data_c2

    .line 1395
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v8

    .line 1398
    .local v8, "subId":J
    :goto_5a
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b3

    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v8, v9}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v4

    .line 1399
    :goto_64
    invoke-static {}, isDebugLevelNotLow()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllNetworkState, networkType = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", subscriberId = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", phoneId = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8, v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1403
    .end local v8    # "subId":J
    :cond_98
    new-instance v0, Landroid/net/NetworkState;

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "netcap":Landroid/net/NetworkCapabilities;
    .end local v4    # "subscriberId":Ljava/lang/String;
    .end local v5    # "networkId":Ljava/lang/String;
    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 1389
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "netcap":Landroid/net/NetworkCapabilities;
    .restart local v4    # "subscriberId":Ljava/lang/String;
    .restart local v5    # "networkId":Ljava/lang/String;
    :sswitch_a4
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    aget-wide v8, v0, v12

    .line 1390
    .restart local v8    # "subId":J
    goto :goto_5a

    .line 1392
    .end local v8    # "subId":J
    :sswitch_ab
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    aget-wide v8, v0, v12

    .line 1393
    .restart local v8    # "subId":J
    goto :goto_5a

    .line 1398
    :cond_b3
    const/4 v4, 0x0

    goto :goto_64

    .line 1406
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "netcap":Landroid/net/NetworkCapabilities;
    .end local v4    # "subscriberId":Ljava/lang/String;
    .end local v5    # "networkId":Ljava/lang/String;
    .end local v8    # "subId":J
    :cond_b5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkState;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkState;

    return-object v0

    .line 1387
    :sswitch_data_c2
    .sparse-switch
        0x2 -> :sswitch_a4
        0x1a -> :sswitch_ab
    .end sparse-switch
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 6

    .prologue
    .line 1264
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Network;>;"
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    :try_start_c
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1268
    new-instance v4, Landroid/net/Network;

    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {v4, v2}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1270
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_37

    .line 1271
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    return-object v2

    .line 1270
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getChainingEnabledForProfile(I)Z
    .registers 5
    .param p1, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 3904
    :try_start_1
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3905
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(I)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_15

    move-result v2

    packed-switch v2, :pswitch_data_18

    .line 3915
    :cond_12
    :goto_12
    return v1

    .line 3907
    :pswitch_13
    const/4 v1, 0x1

    goto :goto_12

    .line 3914
    :catch_15
    move-exception v0

    .line 3915
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_12

    .line 3905
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 4927
    const-string v4, "ConnectivityService"

    const-string v6, "getDhcpServerConfiguration()"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4929
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v3}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 4931
    .local v3, "serverConfig":Landroid/net/DhcpServerConfiguration;
    :try_start_13
    const-string/jumbo v4, "wifiap_local_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 4932
    const-string/jumbo v4, "wifiap_subnet_mask"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 4933
    const-string/jumbo v4, "wifiap_dhcp_enable"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_56

    move v4, v5

    :goto_2f
    iput-boolean v4, v3, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 4934
    const-string/jumbo v4, "wifiap_dhcp_start_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 4935
    const-string/jumbo v4, "wifiap_dhcp_end_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 4936
    const-string/jumbo v4, "wifiap_dhcp_lease_time"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 4937
    const-string/jumbo v4, "wifiap_dhcp_max_user"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->maxClient:I
    :try_end_55
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_55} :catch_58

    .line 4953
    .end local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :goto_55
    return-object v3

    .line 4933
    .restart local v3    # "serverConfig":Landroid/net/DhcpServerConfiguration;
    :cond_56
    const/4 v4, 0x0

    goto :goto_2f

    .line 4940
    :catch_58
    move-exception v2

    .line 4941
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "ConnectivityService"

    const-string v6, "getWifiApProfileConfiguration AP settings not found, returning"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    new-instance v1, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v1}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 4944
    .local v1, "defaultServerConfig":Landroid/net/DhcpServerConfiguration;
    const-string v4, "192.168.128.1"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 4945
    const-string v4, "255.255.255.0"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 4946
    iput-boolean v5, v1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 4947
    const-string v4, "192.168.128.100"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 4948
    const-string v4, "192.168.128.254"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 4949
    const/16 v4, 0x5a

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 4950
    const/16 v4, 0x64

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 4952
    invoke-virtual {p0, v1}, saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-object v3, v1

    .line 4953
    goto :goto_55
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .prologue
    .line 3341
    iget-object v1, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3342
    :try_start_3
    iget-object v0, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v1

    return-object v0

    .line 3343
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4234
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_26

    .line 4235
    const-string v3, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 4256
    :goto_25
    return-object v3

    .line 4238
    :cond_26
    if-nez p1, :cond_31

    .line 4239
    const-string v3, "ConnectivityService"

    const-string v5, "Profile Name passed is null in getInterfaceName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 4240
    goto :goto_25

    .line 4243
    :cond_31
    :try_start_31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4244
    .local v2, "user":I
    const/4 v1, 0x0

    .line 4245
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v3, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 4246
    iget-object v3, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4248
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_50
    if-eqz v1, :cond_57

    .line 4249
    invoke-virtual {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_59

    move-result-object v3

    goto :goto_25

    :cond_57
    move-object v3, v4

    .line 4252
    goto :goto_25

    .line 4254
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "user":I
    :catch_59
    move-exception v0

    .line 4255
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 4256
    goto :goto_25
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2996
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 2998
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2999
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 3001
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    .prologue
    .line 4487
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 4488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4489
    .local v0, "user":I
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4490
    :try_start_e
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 4491
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1335
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1336
    const/4 v1, 0x0

    .line 1337
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1338
    :try_start_7
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 1339
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_20

    .line 1341
    if-eqz v1, :cond_26

    .line 1342
    monitor-enter v1

    .line 1343
    :try_start_17
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 1346
    :goto_1f
    return-object v2

    .line 1339
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 1344
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2

    .line 1346
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "networkType"    # I

    .prologue
    .line 1316
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1317
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1321
    .local v1, "uid":I
    iget-object v2, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getEnterpriseNetworkType(II)I

    move-result v0

    .line 1322
    .local v0, "entType":I
    if-eq v0, p1, :cond_16

    .line 1323
    move p1, v0

    .line 1327
    :cond_16
    invoke-direct {p0, p1}, getLinkPropertiesForTypeInternal(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1329
    .end local v0    # "entType":I
    .end local v1    # "uid":I
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 5057
    invoke-direct {p0}, enforceAccessPermission()V

    .line 5058
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_18

    .line 5059
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 5061
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 4890
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4891
    invoke-direct {p0, v5}, getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 4892
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4893
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 4899
    :goto_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 4900
    iget-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 4901
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4902
    const-string v0, "0000000000"

    .line 4904
    :cond_45
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4910
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_60
    return-object v1

    .line 4896
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4880
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4881
    const/4 v1, 0x1

    invoke-direct {p0, v1}, getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 4882
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4883
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4885
    :cond_1b
    return-object v0
.end method

.method public getNetIdForInterface(Ljava/lang/String;)I
    .registers 10
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 4442
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetIdForInterface: interfaceName value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v5, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v5

    .line 4444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    :try_start_1c
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_5f

    .line 4445
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4446
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v1, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 4447
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_5c

    .line 4448
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v4, Landroid/net/Network;->netId:I

    .line 4449
    .local v3, "netId":I
    const-string v4, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetIdForInterface: netId value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    monitor-exit v5

    return v3

    .line 4444
    .end local v3    # "netId":I
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 4453
    .end local v1    # "lp":Landroid/net/LinkProperties;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_1c .. :try_end_60} :catchall_68

    .line 4454
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "netId not found for the interface"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4453
    :catchall_68
    move-exception v4

    :try_start_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v4
.end method

.method public getNetIdForNetworkInfo(Landroid/net/NetworkInfo;)I
    .registers 7
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3658
    const/4 v1, -0x1

    .line 3659
    .local v1, "netId":I
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    :try_start_5
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 3661
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3662
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3660
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3665
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_48

    .line 3666
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called getNeId - netId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    return v1

    .line 3665
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1351
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1352
    const/4 v1, 0x0

    .line 1353
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1354
    :try_start_7
    iget-object v2, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 1355
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_20

    .line 1356
    if-eqz v1, :cond_26

    .line 1357
    monitor-enter v1

    .line 1358
    :try_start_17
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 1361
    :goto_1f
    return-object v2

    .line 1355
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 1359
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2

    .line 1361
    :cond_26
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1253
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1255
    .local v1, "uid":I
    invoke-direct {p0, p1, v1}, isNetworkBlocked(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1259
    :cond_e
    :goto_e
    return-object v2

    .line 1258
    :cond_f
    iget-object v3, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1259
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_e
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 6
    .param p1, "networkType"    # I

    .prologue
    .line 1158
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1160
    .local v1, "uid":I
    invoke-direct {p0, p1, v1}, getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1161
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_32

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning getNetworkInfo(networkType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1164
    :cond_32
    return-object v0
.end method

.method public getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .registers 9
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x0

    .line 1205
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1206
    if-nez p1, :cond_8

    move-object v3, v4

    .line 1217
    :goto_7
    return-object v3

    .line 1208
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1209
    .local v2, "uid":I
    const/4 v1, 0x0

    .line 1210
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v5, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1211
    :try_start_10
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 1212
    monitor-exit v5

    .line 1213
    if-nez v1, :cond_24

    move-object v3, v4

    goto :goto_7

    .line 1212
    :catchall_21
    move-exception v3

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v3

    .line 1214
    :cond_24
    monitor-enter v1

    .line 1215
    :try_start_25
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_2c

    monitor-exit v1

    move-object v3, v4

    goto :goto_7

    .line 1217
    :cond_2c
    invoke-direct {p0, v1, v2}, getFilteredNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/net/NetworkInfo;

    move-result-object v3

    monitor-exit v1

    goto :goto_7

    .line 1218
    :catchall_32
    move-exception v3

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_32

    throw v3
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 5

    .prologue
    .line 1131
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1133
    invoke-direct {p0}, getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1134
    .local v0, "provNi":Landroid/net/NetworkInfo;
    if-nez v0, :cond_14

    .line 1135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1136
    .local v1, "uid":I
    iget v2, p0, mActiveDefaultNetwork:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, getNetworkInfo(IIZ)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1138
    .end local v1    # "uid":I
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisioningOrActiveNetworkInfo: X provNi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1139
    return-object v0
.end method

.method public getProxy()Landroid/net/ProxyInfo;
    .registers 4

    .prologue
    .line 3233
    iget-object v2, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3234
    :try_start_3
    iget-object v0, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3235
    .local v0, "ret":Landroid/net/ProxyInfo;
    if-nez v0, :cond_d

    iget-boolean v1, p0, mDefaultProxyDisabled:Z

    if-nez v1, :cond_d

    iget-object v0, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3236
    :cond_d
    monitor-exit v2

    return-object v0

    .line 3237
    .end local v0    # "ret":Landroid/net/ProxyInfo;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .registers 8
    .param p1, "networkType"    # I

    .prologue
    .line 2192
    const-string v4, "VZW-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2193
    const/16 v4, 0xc

    if-ne p1, v4, :cond_27

    .line 2194
    const-string/jumbo v4, "vzw.telephony.appsapn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2195
    .local v2, "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27

    .line 2197
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_26

    move-result v3

    .line 2228
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_25
    :goto_25
    return v3

    .line 2198
    .restart local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :catch_26
    move-exception v4

    .line 2205
    .end local v2    # "restoreVzwAppsApnDelayStr":Ljava/lang/String;
    :cond_27
    const-string v4, "android.telephony.apn-restore"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2209
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    const/16 v4, 0xb

    if-eq p1, v4, :cond_46

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_46

    .line 2213
    :try_start_39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_40} :catch_42

    move-result v3

    goto :goto_25

    .line 2214
    :catch_42
    move-exception v0

    .line 2215
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2221
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_46
    const v3, 0xea60

    .line 2224
    .local v3, "ret":I
    const/16 v4, 0x1d

    if-gt p1, v4, :cond_25

    iget-object v4, p0, mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    if-eqz v4, :cond_25

    .line 2226
    iget-object v4, p0, mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, p1

    iget v3, v4, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_25
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3031
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3032
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3033
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3035
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3091
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3092
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3007
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3008
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3015
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3017
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3022
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3023
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3024
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3026
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3106
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3107
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3096
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3097
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3101
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3102
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 3152
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3153
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getUidsForApnType(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getUsersForEnterpriseNetwork(I)[I
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 3168
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3169
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->getUsersForNetwork(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .registers 7

    .prologue
    .line 4502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4503
    .local v0, "user":I
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVpnConfig > user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4505
    :try_start_23
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 4507
    .local v1, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_45

    .line 4508
    if-nez v1, :cond_47

    .line 4509
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 4515
    :cond_45
    :goto_45
    monitor-exit v3

    return-object v1

    .line 4511
    :cond_47
    const-string v2, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVpnConfig > session : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 4516
    .end local v1    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :catchall_62
    move-exception v2

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_23 .. :try_end_64} :catchall_62

    throw v2
.end method

.method public isActiveNetworkMetered()Z
    .registers 4

    .prologue
    .line 1442
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1445
    .local v0, "token":J
    :try_start_7
    iget v2, p0, mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, isNetworkMeteredUnchecked(I)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    move-result v2

    .line 1447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDomesticModel()Z
    .registers 3

    .prologue
    .line 6579
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "KTT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6582
    :cond_1e
    const/4 v0, 0x1

    .line 6585
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isEntApnEnabled(I)Z
    .registers 3
    .param p1, "connectionType"    # I

    .prologue
    .line 3144
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3145
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->isEntApnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isEnterpriseApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    .line 3175
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMobilePolicyDataEnable()Z
    .registers 4

    .prologue
    .line 5178
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5179
    :try_start_3
    iget-boolean v0, p0, mIsMobilePolicyEnabled:Z

    .line 5180
    .local v0, "enabled":Z
    monitor-exit v2

    .line 5181
    return v0

    .line 5180
    .end local v0    # "enabled":Z
    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 1276
    invoke-direct {p0}, enforceAccessPermission()V

    .line 1277
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, getNetworkInfoForType(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isSplitBillingEnabled()Z
    .registers 2

    .prologue
    .line 3136
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3137
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->isAnyConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isTetheringSupported()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3114
    invoke-direct {p0}, enforceTetherAccessPermission()V

    .line 3115
    const-string/jumbo v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v0, v2

    .line 3116
    .local v0, "defaultVal":I
    :goto_16
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    const-string v5, "no_config_tethering"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    move v1, v3

    .line 3127
    .local v1, "tetherEnabledInSettings":Z
    :goto_30
    if-eqz v1, :cond_5b

    iget-object v4, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_4d

    iget-object v4, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_4d

    iget-object v4, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_5b

    :cond_4d
    iget-object v4, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_5b

    :goto_56
    return v3

    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_57
    move v0, v3

    .line 3115
    goto :goto_16

    .restart local v0    # "defaultVal":I
    :cond_59
    move v1, v2

    .line 3116
    goto :goto_30

    .restart local v1    # "tetherEnabledInSettings":Z
    :cond_5b
    move v3, v2

    .line 3127
    goto :goto_56
.end method

.method public knoxVpnProfileType(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3699
    const/4 v1, 0x0

    .line 3701
    .local v1, "profileType":I
    :try_start_1
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    .line 3702
    if-eqz p1, :cond_16

    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 3703
    iget-object v2, p0, mKnoxVpnPolicy:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_2f

    move-result v1

    .line 3709
    :cond_16
    :goto_16
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knoxVpnProfileType:profileType value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    return v1

    .line 3706
    :catch_2f
    move-exception v0

    .line 3707
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at knoxVpnProfileType API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .registers 10
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5286
    invoke-direct {p0}, enforceAccessPermission()V

    .line 5288
    new-instance v3, Landroid/net/NetworkRequest;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/4 v2, -0x1

    invoke-direct {p0}, nextNetworkRequestId()I

    move-result v4

    invoke-direct {v3, v1, v2, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 5290
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForNetwork for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 5291
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 5294
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5295
    return-object v3
.end method

.method protected notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .prologue
    .line 6341
    const v0, 0x80002

    .line 6348
    .local v0, "notifyType":I
    invoke-direct {p0, p2, p1, v0}, callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6349
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 12
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    .prologue
    .line 6411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, notifyTypeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 6414
    const-string v0, "calling update connectivity"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 6415
    iget-object v0, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->onNetworkChanged(Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;ILandroid/net/LinkProperties;I)V

    .line 6419
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_72

    .line 6420
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkRequest;

    .line 6421
    .local v7, "nr":Landroid/net/NetworkRequest;
    iget-object v0, p0, mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6422
    .local v8, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sending notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 6423
    invoke-direct {p0, v8, p1, p2}, callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6419
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 6425
    .end local v7    # "nr":Landroid/net/NetworkRequest;
    .end local v8    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_72
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 5301
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .registers 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 5280
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 12
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "profile"    # Ljava/lang/String;
    .param p4, "type"    # Z
    .param p5, "isConnecting"    # Z

    .prologue
    const/4 v5, 0x1

    .line 3882
    monitor-enter p0

    :try_start_2
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareEnterpriseVpn : profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  :isConnecting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    const/4 v0, 0x1

    .line 3884
    .local v0, "returnVal":Z
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v2

    if-lt v2, v5, :cond_59

    .line 3885
    if-eqz p5, :cond_59

    .line 3886
    if-ne p4, v5, :cond_5c

    .line 3887
    const-string v2, "ConnectivityService"

    const-string/jumbo v3, "prepareEnterpriseVpn : System VPN. Calling prepare"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3890
    .local v1, "user":I
    invoke-virtual {p0, p1, p2}, prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3891
    invoke-virtual {p0, p1, p3}, createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3892
    iget-object v2, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_61

    .end local v1    # "user":I
    :cond_59
    move v2, v0

    .line 3899
    :goto_5a
    monitor-exit p0

    return v2

    .line 3895
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, p1, p3}, createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_61

    move-result v2

    goto :goto_5a

    .line 3882
    .end local v0    # "returnVal":Z
    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 20
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "isConnecting"    # Z
    .param p4, "isMetaEnabled"    # Z

    .prologue
    .line 3774
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 3775
    .local v14, "user":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3776
    .local v7, "callingUid":I
    const/4 v11, 0x1

    .line 3777
    .local v11, "returnVal":Z
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_34

    .line 3778
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Knox VPN is not supported Knox VPN feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_14e

    move v12, v11

    .line 3821
    .end local v11    # "returnVal":Z
    .local v12, "returnVal":I
    :goto_32
    monitor-exit p0

    return v12

    .line 3781
    .end local v12    # "returnVal":I
    .restart local v11    # "returnVal":Z
    :cond_34
    :try_start_34
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareEnterpriseVpnExt : profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isConnecting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :isMetaEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "caller is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    if-eqz p2, :cond_ae

    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    :try_end_78
    .catchall {:try_start_34 .. :try_end_78} :catchall_14e

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 3784
    if-eqz p4, :cond_c9

    .line 3785
    :try_start_7d
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v7, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getUidPidEnabled(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c9

    .line 3786
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unauthorized Call to enable meta data"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_91} :catch_91
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_91} :catch_12f
    .catchall {:try_start_7d .. :try_end_91} :catchall_14e

    .line 3814
    :catch_91
    move-exception v8

    .line 3815
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_92
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in prepareEnterpriseVpnExt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_ae
    :goto_ae
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The return value in prepareEnterpriseVpnExt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_92 .. :try_end_c6} :catchall_14e

    move v12, v11

    .line 3821
    .restart local v12    # "returnVal":I
    goto/16 :goto_32

    .line 3789
    .end local v12    # "returnVal":I
    :cond_c9
    :try_start_c9
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v0, v7, v14}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 3790
    invoke-direct {p0}, getKnoxVpnPolicy()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v13

    .line 3791
    .local v13, "type":I
    if-nez v13, :cond_fc

    .line 3792
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn;->setMetaDataStateInIP(Z)V

    .line 3793
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v11

    goto :goto_ae

    .line 3794
    :cond_fc
    const/4 v1, 0x1

    if-ne v13, v1, :cond_ae

    .line 3795
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v11

    .line 3796
    if-eqz p3, :cond_ae

    .line 3797
    const/4 v9, 0x0

    .line 3798
    .local v9, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    iget-object v1, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15a

    .line 3799
    iget-object v1, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v9, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 3800
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v9, :cond_151

    .line 3801
    move/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->setMetaDataStateInIP(Z)V
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_12e} :catch_91
    .catch Ljava/lang/NullPointerException; {:try_start_c9 .. :try_end_12e} :catch_12f
    .catchall {:try_start_c9 .. :try_end_12e} :catchall_14e

    goto :goto_ae

    .line 3816
    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v13    # "type":I
    :catch_12f
    move-exception v10

    .line 3817
    .local v10, "ne":Ljava/lang/NullPointerException;
    :try_start_130
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException in prepareEnterpriseVpnExt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_130 .. :try_end_14c} :catchall_14e

    goto/16 :goto_ae

    .line 3774
    .end local v7    # "callingUid":I
    .end local v10    # "ne":Ljava/lang/NullPointerException;
    .end local v11    # "returnVal":Z
    .end local v14    # "user":I
    :catchall_14e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3803
    .restart local v7    # "callingUid":I
    .restart local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v11    # "returnVal":Z
    .restart local v13    # "type":I
    .restart local v14    # "user":I
    :cond_151
    :try_start_151
    const-string v1, "ConnectivityService"

    const-string v2, "EnterpriseVpn object returned is null in prepareEnterpriseVpnExt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 3806
    :cond_15a
    const-string v1, "ConnectivityService"

    const-string v2, "No EnterpriseVpn object found for user in prepareEnterpriseVpnExt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 3812
    .end local v9    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v13    # "type":I
    :cond_163
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_16f} :catch_91
    .catch Ljava/lang/NullPointerException; {:try_start_151 .. :try_end_16f} :catch_12f
    .catchall {:try_start_151 .. :try_end_16f} :catchall_14e

    move-result v11

    goto/16 :goto_ae
.end method

.method public declared-synchronized prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3530
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 3531
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3533
    .local v3, "user":I
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v6

    const/4 v8, 0x1

    if-lt v6, v8, :cond_7f

    .line 3534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3535
    .local v0, "callingUid":I
    const-string v6, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepare is called by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3537
    .local v4, "token":J
    iget-object v6, p0, mEnterpriseSytemVPN:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3538
    .local v1, "enterpriseSystemProfile":Ljava/lang/String;
    if-eqz v1, :cond_5a

    iget-object v6, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 3539
    iget-object v6, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 3540
    .local v2, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v2, :cond_7a

    .line 3541
    invoke-direct {p0, v1, v0}, disconnect(Ljava/lang/String;I)Z

    .line 3547
    .end local v2    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    :cond_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3550
    invoke-direct {p0, v0}, getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.mocana.vpn.android"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    iget-object v6, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn;->getVpnType()Z
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_93

    move-result v6

    if-nez v6, :cond_7f

    move v6, v7

    .line 3575
    .end local v0    # "callingUid":I
    .end local v1    # "enterpriseSystemProfile":Ljava/lang/String;
    .end local v4    # "token":J
    :goto_78
    monitor-exit p0

    return v6

    .line 3543
    .restart local v0    # "callingUid":I
    .restart local v1    # "enterpriseSystemProfile":Ljava/lang/String;
    .restart local v2    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v4    # "token":J
    :cond_7a
    :try_start_7a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 3544
    goto :goto_78

    .line 3557
    .end local v0    # "callingUid":I
    .end local v1    # "enterpriseSystemProfile":Ljava/lang/String;
    .end local v2    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v4    # "token":J
    :cond_7f
    iget-object v7, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_93

    .line 3575
    :try_start_82
    iget-object v6, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    monitor-exit v7

    goto :goto_78

    .line 3577
    :catchall_90
    move-exception v6

    monitor-exit v7
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_90

    :try_start_92
    throw v6
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 3530
    .end local v3    # "user":I
    :catchall_93
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)V
    .registers 18
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkMisc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 5363
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 5364
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, p2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5, p3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6, p4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v8, p0, mContext:Landroid/content/Context;

    iget-object v9, p0, mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v10, Landroid/net/NetworkMisc;

    move-object/from16 v0, p6

    invoke-direct {v10, v0}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    move-object v2, p1

    move/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;)V

    .line 5368
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-enter p0

    .line 5369
    :try_start_2b
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, mSystemReady:Z

    iput-boolean v3, v2, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 5370
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_57

    .line 5371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkAgent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 5372
    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5373
    return-void

    .line 5370
    :catchall_57
    move-exception v2

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v2
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .registers 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5311
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 5312
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    .line 5313
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5314
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 7
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 5305
    iget-object v0, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x16

    invoke-static {}, getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5307
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 6502
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 6503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6504
    .local v0, "user":I
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6505
    :try_start_e
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 6506
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 3205
    invoke-direct {p0}, enforceAccessPermission()V

    .line 3206
    invoke-direct {p0}, enforceInternetPermission()V

    .line 3208
    if-nez p1, :cond_9

    .line 3226
    :cond_8
    :goto_8
    return-void

    .line 3210
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3211
    .local v2, "uid":I
    const/4 v1, 0x0

    .line 3212
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3213
    :try_start_11
    iget-object v3, p0, mNetworkForNetId:Landroid/util/SparseArray;

    iget v5, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 3214
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_4f

    .line 3215
    if-eqz v1, :cond_8

    .line 3216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportBadNetwork("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 3217
    monitor-enter v1

    .line 3220
    :try_start_46
    iget-boolean v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v3, :cond_52

    monitor-exit v1

    goto :goto_8

    .line 3225
    :catchall_4c
    move-exception v3

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4c

    throw v3

    .line 3214
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v3

    .line 3222
    :cond_52
    :try_start_52
    invoke-direct {p0, v1, v2}, isNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    monitor-exit v1

    goto :goto_8

    .line 3224
    :cond_5a
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v4, 0x82008

    invoke-virtual {v3, v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 3225
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_4c

    goto :goto_8
.end method

.method public reportInetCondition(II)V
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 3199
    const/16 v1, 0x32

    if-le p2, v1, :cond_5

    .line 3202
    :cond_4
    :goto_4
    return-void

    .line 3200
    :cond_5
    iget-object v1, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3201
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {p0, v1}, reportBadNetwork(Landroid/net/Network;)V

    goto :goto_4
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .registers 15
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    .prologue
    const/16 v5, 0xb

    .line 5235
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 5237
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 5242
    :goto_d
    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 5245
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v6, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 5248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5249
    .local v7, "uid":I
    iget-object v2, p0, mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5250
    :try_start_1f
    iget-object v1, p0, mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 5251
    .local v8, "uidRules":I
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_41

    .line 5252
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_2e

    .line 5255
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5259
    .end local v7    # "uid":I
    .end local v8    # "uidRules":I
    :cond_2e
    if-ltz p3, :cond_35

    const v1, 0x5b8d80

    if-le p3, v1, :cond_44

    .line 5260
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad timeout specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5239
    .end local v6    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_3d
    invoke-direct {p0}, enforceChangePermission()V

    goto :goto_d

    .line 5251
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local v6    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local v7    # "uid":I
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 5262
    .end local v7    # "uid":I
    :cond_44
    new-instance v3, Landroid/net/NetworkRequest;

    invoke-direct {p0}, nextNetworkRequestId()I

    move-result v1

    invoke-direct {v3, v6, p5, v1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 5264
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNetwork for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 5265
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 5268
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5269
    if-lez p3, :cond_8a

    .line 5270
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p3

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5273
    :cond_8a
    return-object v3
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 15
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    .prologue
    const/4 v6, 0x0

    .line 1480
    invoke-direct {p0}, enforceChangePermission()V

    .line 1481
    iget-object v10, p0, mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1482
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 1487
    :cond_13
    :try_start_13
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_16} :catch_45

    move-result-object v0

    .line 1494
    .local v0, "addr":Ljava/net/InetAddress;
    const-string v10, "VZW-CDMA"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 1495
    const/16 v10, 0x2000

    if-ne p1, v10, :cond_27

    .line 1497
    const/16 p1, 0x18

    .line 1502
    :cond_27
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_62

    .line 1503
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    .line 1544
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_44
    return v6

    .line 1488
    :catch_45
    move-exception v1

    .line 1489
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    goto :goto_44

    .line 1507
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_62
    iget-object v10, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 1508
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v3, :cond_a2

    .line 1509
    iget-object v10, p0, mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v10

    if-nez v10, :cond_8a

    .line 1510
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    goto :goto_44

    .line 1512
    :cond_8a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on down network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    goto :goto_44

    .line 1518
    :cond_a2
    monitor-enter v3

    .line 1519
    :try_start_a3
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 1520
    .local v5, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_db

    .line 1522
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_de

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_de

    .line 1524
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on down network ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") - dropped"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " netState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1520
    .end local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :catchall_db
    move-exception v10

    :try_start_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v10

    .line 1531
    .restart local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :cond_de
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1532
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1536
    .local v8, "token":J
    :try_start_e6
    monitor-enter v3
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_111

    .line 1537
    :try_start_e7
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1538
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v10, Landroid/net/Network;->netId:I

    .line 1539
    .local v4, "netId":I
    monitor-exit v3
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_10e

    .line 1540
    :try_start_ee
    invoke-direct {p0, v2, v0, v4, v7}, addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v6

    .line 1541
    .local v6, "ok":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress ok="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, log(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_ee .. :try_end_109} :catchall_111

    .line 1544
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_44

    .line 1539
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "netId":I
    .end local v6    # "ok":Z
    :catchall_10e
    move-exception v10

    :try_start_10f
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    :try_start_110
    throw v10
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_111

    .line 1544
    :catchall_111
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .registers 6
    .param p1, "newConfig"    # Landroid/net/DhcpServerConfiguration;

    .prologue
    .line 4958
    const-string v2, "ConnectivityService"

    const-string/jumbo v3, "saveDhcpServerConfiguration()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    const/4 v0, 0x0

    .line 4960
    .local v0, "changeHappened":Z
    if-nez p1, :cond_d

    .line 4961
    const/4 v0, 0x0

    .line 4976
    :goto_c
    return v0

    .line 4963
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4965
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifiap_local_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4966
    const-string/jumbo v2, "wifiap_subnet_mask"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4967
    const-string/jumbo v3, "wifiap_dhcp_enable"

    iget-boolean v2, p1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    :goto_2b
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4968
    const-string/jumbo v2, "wifiap_dhcp_start_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4969
    const-string/jumbo v2, "wifiap_dhcp_end_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4970
    const-string/jumbo v2, "wifiap_dhcp_lease_time"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4971
    const-string/jumbo v2, "wifiap_dhcp_max_user"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4973
    const/4 v0, 0x1

    goto :goto_c

    .line 4967
    :cond_50
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1713
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 1715
    const-string v1, "VZW-CDMA"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_24

    .line 1717
    invoke-direct {p0, p1}, createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1718
    .local v0, "ni":Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1719
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1725
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :goto_23
    return-void

    .line 1721
    :cond_24
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1722
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1}, sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public setAirplaneMode(Z)V
    .registers 10
    .param p1, "enable"    # Z

    .prologue
    .line 4980
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4983
    .local v2, "ident":J
    :try_start_7
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4984
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_4a

    const/4 v4, 0x1

    :goto_12
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4985
    const-string v4, "ConnectivityService"

    const-string/jumbo v5, "setAirplaneMode() IMS Change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-eqz p1, :cond_4c

    .line 4988
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4989
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4990
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4991
    iget-object v4, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v5, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v5, p0}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_5f

    .line 5004
    :goto_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5006
    return-void

    .line 4984
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4a
    const/4 v4, 0x0

    goto :goto_12

    .line 4999
    :cond_4c
    :try_start_4c
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5000
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5001
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_5f

    goto :goto_46

    .line 5004
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_5f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method setAlarm(ILandroid/app/PendingIntent;)V
    .registers 11
    .param p1, "timeoutInMilliseconds"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 5144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 5153
    .local v2, "wakeupTime":J
    const/4 v0, 0x3

    .line 5155
    .local v0, "alarmType":I
    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0, v2, v3, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5156
    return-void
.end method

.method public setDataDependency(IZ)V
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1575
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 1577
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xa

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    return-void

    .line 1577
    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 15
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3241
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 3243
    iget-object v10, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3244
    :try_start_6
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-ne p1, v9, :cond_c

    monitor-exit v10

    .line 3299
    :goto_b
    return-void

    .line 3245
    :cond_c
    if-eqz p1, :cond_1b

    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v9}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    monitor-exit v10

    goto :goto_b

    .line 3298
    :catchall_18
    move-exception v9

    monitor-exit v10
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v9

    .line 3246
    :cond_1b
    :try_start_1b
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v9, :cond_29

    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    monitor-exit v10

    goto :goto_b

    .line 3247
    :cond_29
    const-string v9, "SBM"

    const-string/jumbo v11, "ro.csc.sales_code"

    const-string v12, "none"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    const/4 p1, 0x0

    .line 3249
    :cond_3b
    const-string v1, ""

    .line 3250
    .local v1, "host":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3252
    .local v4, "port":I
    const-string v8, ""

    .line 3253
    .local v8, "username":Ljava/lang/String;
    const-string v3, ""

    .line 3255
    .local v3, "password":Ljava/lang/String;
    const-string v0, ""

    .line 3256
    .local v0, "exclList":Ljava/lang/String;
    const-string v2, ""

    .line 3257
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_f0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5e

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f0

    .line 3259
    :cond_5e
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v9

    if-nez v9, :cond_80

    .line 3261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid proxy properties, ignoring: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, log(Ljava/lang/String;)V

    .line 3262
    monitor-exit v10

    goto :goto_b

    .line 3264
    :cond_80
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3265
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3266
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    .line 3268
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 3269
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 3271
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    .line 3272
    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b9

    .line 3273
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3278
    :cond_b9
    :goto_b9
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3279
    .local v5, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c2
    .catchall {:try_start_1b .. :try_end_c2} :catchall_18

    move-result-wide v6

    .line 3281
    .local v6, "token":J
    :try_start_c3
    const-string v9, "global_http_proxy_host"

    invoke-static {v5, v9, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3282
    const-string v9, "global_http_proxy_port"

    invoke-static {v5, v9, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3284
    const-string v9, "global_http_proxy_username"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3285
    const-string v9, "global_http_proxy_password"

    invoke-static {v5, v9, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3287
    const-string v9, "global_http_proxy_exclusion_list"

    invoke-static {v5, v9, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3289
    const-string v9, "global_proxy_pac_url"

    invoke-static {v5, v9, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e1
    .catchall {:try_start_c3 .. :try_end_e1} :catchall_f4

    .line 3291
    :try_start_e1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3294
    iget-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v9, :cond_ea

    .line 3295
    iget-object p1, p0, mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3297
    :cond_ea
    invoke-direct {p0, p1}, sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3298
    monitor-exit v10

    goto/16 :goto_b

    .line 3276
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :cond_f0
    const/4 v9, 0x0

    iput-object v9, p0, mGlobalProxy:Landroid/net/ProxyInfo;

    goto :goto_b9

    .line 3291
    .restart local v5    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_f4
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_f9
    .catchall {:try_start_e1 .. :try_end_f9} :catchall_18
.end method

.method public setNcmTethering(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 3083
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 3084
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setNcmTethering(Z)I

    move-result v0

    return v0
.end method

.method public setPolicyDataEnable(IZ)V
    .registers 7
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1649
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1653
    return-void

    .line 1651
    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 7
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 4916
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4919
    .local v0, "ident":J
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 4921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4923
    return-void

    .line 4921
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUsbTethering(Z)I
    .registers 11
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x2

    .line 3040
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 3042
    const-string v7, "SBM"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 3043
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3044
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3045
    .local v4, "pid":I
    const-string v3, ""

    .line 3046
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3047
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v4, :cond_28

    .line 3048
    iget-object v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_28

    .line 3052
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbTethering: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 3054
    const-string v7, "jp.softbank.mb.tether"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 3076
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_5a
    :goto_5a
    return v6

    .line 3068
    :cond_5b
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3070
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 3073
    :cond_71
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 3074
    iget-object v6, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v6

    goto :goto_5a

    .line 3076
    :cond_7e
    const/4 v6, 0x3

    goto :goto_5a
.end method

.method public setVpnPackageAuthorization(Z)V
    .registers 5
    .param p1, "authorized"    # Z

    .prologue
    .line 3588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3589
    .local v0, "user":I
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3590
    :try_start_b
    iget-object v1, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Z)V

    .line 3591
    monitor-exit v2

    .line 3592
    return-void

    .line 3591
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 7
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 4465
    invoke-direct {p0}, throwIfLockdownEnabled()V

    .line 4466
    invoke-virtual {p0}, getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 4467
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_11

    .line 4468
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4470
    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4471
    .local v1, "user":I
    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4473
    const/4 v2, 0x0

    :try_start_1d
    const-string v4, "[Legacy VPN]"

    invoke-virtual {p0, v2, v4}, prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4475
    iget-object v2, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 4476
    monitor-exit v3

    .line 4477
    return-void

    .line 4476
    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_31

    throw v2
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 4639
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 4641
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_16

    .line 4642
    iget-object v0, p0, mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 4644
    :cond_16
    return-void
.end method

.method systemReady()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1948
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    .line 1953
    const v2, 0xea60

    iget-object v3, p0, mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v3}, setAlarm(ILandroid/app/PendingIntent;)V

    .line 1955
    invoke-direct {p0}, loadGlobalProxy()V

    .line 1957
    monitor-enter p0

    .line 1958
    const/4 v2, 0x1

    :try_start_26
    iput-boolean v2, p0, mSystemReady:Z

    .line 1959
    iget-object v2, p0, mInitialBroadcast:Landroid/content/Intent;

    if-eqz v2, :cond_38

    .line 1960
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mInitialBroadcast:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1961
    const/4 v2, 0x0

    iput-object v2, p0, mInitialBroadcast:Landroid/content/Intent;

    .line 1963
    :cond_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_72

    .line 1965
    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1969
    invoke-virtual {p0}, updateLockdownVpn()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1970
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1974
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_5a
    iget-object v2, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1976
    iget-object v2, p0, mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v2}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 1980
    iget-object v2, p0, mEnterpriseConnectivity:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->systemReady()V

    .line 1983
    return-void

    .line 1963
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2975
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2976
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2977
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 2979
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 5324
    invoke-direct {p0}, enforceConnectivityInternalPermission()V

    .line 5325
    iget-object v0, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5326
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2985
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2987
    invoke-virtual {p0}, isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2988
    iget-object v0, p0, mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 2990
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public updateEnterpriseVpn(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "domain"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 4161
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseVpn profileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , flag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", domain : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    :try_start_2d
    invoke-direct {p0}, getKnoxVpnFeature()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_85

    .line 4164
    const/4 v1, 0x0

    .line 4166
    .local v1, "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    iget-object v4, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5c

    .line 4167
    iget-object v4, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4168
    .local v3, "key":I
    iget-object v4, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 4169
    iget-object v4, p0, mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 4170
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    if-eqz v1, :cond_86

    .line 4176
    .end local v3    # "key":I
    :cond_5c
    if-eqz v1, :cond_85

    .line 4177
    if-nez p3, :cond_89

    .line 4178
    invoke-direct {p0, p2}, hasInterfaceAsUser(I)Z

    move-result v4

    if-nez v4, :cond_85

    .line 4179
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseVpn The connected Vpn is not exists in user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    invoke-virtual {v1, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V

    .line 4181
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 4191
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    :cond_85
    :goto_85
    return-void

    .line 4166
    .restart local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .restart local v2    # "i":I
    .restart local v3    # "key":I
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 4184
    .end local v3    # "key":I
    :cond_89
    invoke-virtual {v1, p3, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(ZI)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8c} :catch_8d

    goto :goto_85

    .line 4188
    .end local v1    # "enterpriseVpn":Lcom/android/server/connectivity/EnterpriseVpn;
    .end local v2    # "i":I
    :catch_8d
    move-exception v0

    .line 4189
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method public updateLockdownVpn()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 4569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_13

    .line 4570
    const-string v1, "ConnectivityService"

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :goto_12
    return v0

    .line 4575
    :cond_13
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, mLockdownEnabled:Z

    .line 4576
    iget-boolean v1, p0, mLockdownEnabled:Z

    if-eqz v1, :cond_a5

    .line 4577
    iget-object v1, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 4578
    const-string v1, "ConnectivityService"

    const-string v2, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 4582
    :cond_2d
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 4583
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 4585
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4587
    .local v7, "user":I
    const-string v0, "DCM"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "KDI"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "SBM"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_7d
    if-eqz v6, :cond_81

    if-nez v5, :cond_86

    .line 4591
    :cond_81
    invoke-direct {p0, v3}, setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    move v0, v8

    .line 4592
    goto :goto_12

    .line 4595
    :cond_86
    iget-object v9, p0, mVpns:Landroid/util/SparseArray;

    monitor-enter v9

    .line 4596
    :try_start_89
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 4598
    monitor-exit v9

    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_9f
    move v0, v8

    .line 4603
    goto/16 :goto_12

    .line 4598
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_a2
    move-exception v0

    monitor-exit v9
    :try_end_a4
    .catchall {:try_start_89 .. :try_end_a4} :catchall_a2

    throw v0

    .line 4600
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_a5
    invoke-direct {p0, v3}, setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_9f
.end method
