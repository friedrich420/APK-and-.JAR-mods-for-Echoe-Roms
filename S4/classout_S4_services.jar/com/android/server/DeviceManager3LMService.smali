.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;,
        Lcom/android/server/DeviceManager3LMService$PublicKey3LM;,
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# static fields
.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field public static final ACTION_USB_LOCK_ENABLED:Ljava/lang/String; = "android.action.Usblockenabled"

.field private static final API_VERSION:I = 0x11

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final KITTING_PKG:Ljava/lang/String; = "com.anfacto.km"

.field private static NFCSavedState:I = 0x0

.field private static final PROPERTY_ACTIVATION_STATE:Ljava/lang/String; = "persist.security.3lm.activated"

.field private static final PROPERTY_EXTERNAL_STORAGE_ENABLED:Ljava/lang/String; = "persist.security.3lm.storage"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final PROPERTY_WIFI_LOCKOUT:Ljava/lang/String; = "persist.security.wifi.lockout"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"

.field private static final TUN_DNS1:Ljava/lang/String; = "vpn.net.tun.dns1"

.field private static final TUN_DNS2:Ljava/lang/String; = "vpn.net.tun.dns2"

.field private static final VENDOR_NAME:Ljava/lang/String; = "BoxTone"

.field private static final is3LMAllowed:Z

.field private static mCurrentUserId:I

.field private static final sProjection:[Ljava/lang/String;

.field static sService:Lcom/android/server/DeviceManager3LMService;


# instance fields
.field private final APN_API_RET_ACCESS_NOT_ALLOWED:I

.field private final APN_API_RET_APN_DOES_NOT_EXIST:I

.field private final APN_API_RET_DB_ERROR:I

.field private final APN_API_RET_INVALID_MCC_MNC:I

.field private final APN_API_RET_IN_LOCK_MODE:I

.field private final APN_API_RET_SUCCESS:I

.field private final DEBUG:Z

.field public final MAX_WAIT_TIME:J

.field private final SCAN_3LM_RESULT_ALLOW:I

.field private final SCAN_3LM_RESULT_DENY:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field private SalesCode:Ljava/lang/String;

.field public final WAIT_TIME_INCR:J

.field private isSimulatorPermitted:Z

.field private mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mAndroidIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAndroidIdsNotified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApnList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApnProvisioningMutex:Ljava/lang/Object;

.field private mBluetoothEnabled:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootLocked:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContext:Landroid/content/Context;

.field private mDeviceAdminLock:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDidSetProtectUsb:Z

.field private mInitialized:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mMultiUserEnabled:Z

.field private mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationText:Ljava/lang/String;

.field private mOEMEncryptionManager:Landroid/os/OEMEncryption;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackagePerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagePermsRenameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageScanFailOnTimeout:Z

.field private mPackageScanTimeoutMillis:I

.field private mPackageScanner:Ljava/lang/String;

.field private mPackageScannerMutex:Ljava/lang/Object;

.field private mPackageWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionedSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

.field private mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mSecurePrimaryClip:Z

.field private final mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mUid:I

.field private mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mUseCustomNotification:Z

.field private mVpnHasOriginalData:Z

.field private mVpnOriginalDns1:Ljava/lang/String;

.field private mVpnOriginalDns2:Ljava/lang/String;

.field private mVpnOriginalDnsSuffixes:Ljava/lang/String;

.field private mVpnSettingsMutex:Ljava/lang/String;

.field private mWifiFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 210
    sput v2, mCurrentUserId:I

    .line 217
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, sProjection:[Ljava/lang/String;

    .line 2422
    const/4 v0, -0x1

    sput v0, NFCSavedState:I

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    .line 116
    iput-boolean v3, p0, DEBUG:Z

    .line 119
    iput-boolean v3, p0, isSimulatorPermitted:Z

    .line 122
    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, MAX_WAIT_TIME:J

    .line 123
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, WAIT_TIME_INCR:J

    .line 125
    iput v4, p0, STATE_UNSUPPORTED:I

    .line 126
    iput v3, p0, STATE_DISABLED:I

    .line 127
    iput v2, p0, STATE_ENABLED:I

    .line 132
    iput-boolean v3, p0, mDidSetProtectUsb:Z

    .line 185
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDnsSuffixes:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDns1:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, mVpnOriginalDns2:Ljava/lang/String;

    .line 188
    iput-boolean v3, p0, mVpnHasOriginalData:Z

    .line 189
    const-string v0, ""

    iput-object v0, p0, mVpnSettingsMutex:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, SalesCode:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mPackageScannerMutex:Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, mPackageScanner:Ljava/lang/String;

    .line 207
    iput-boolean v3, p0, mPackageScanFailOnTimeout:Z

    .line 208
    const/16 v0, 0x2710

    iput v0, p0, mPackageScanTimeoutMillis:I

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mApnProvisioningMutex:Ljava/lang/Object;

    .line 242
    iput v3, p0, APN_API_RET_SUCCESS:I

    .line 243
    iput v4, p0, APN_API_RET_ACCESS_NOT_ALLOWED:I

    .line 244
    const/4 v0, -0x2

    iput v0, p0, APN_API_RET_IN_LOCK_MODE:I

    .line 245
    const/4 v0, -0x3

    iput v0, p0, APN_API_RET_DB_ERROR:I

    .line 246
    const/4 v0, -0x4

    iput v0, p0, APN_API_RET_APN_DOES_NOT_EXIST:I

    .line 247
    const/4 v0, -0x5

    iput v0, p0, APN_API_RET_INVALID_MCC_MNC:I

    .line 3008
    const/16 v0, 0x3e8

    iput v0, p0, SCAN_3LM_RESULT_ALLOW:I

    .line 3009
    const/16 v0, 0x3e9

    iput v0, p0, SCAN_3LM_RESULT_DENY:I

    .line 3058
    new-instance v0, Lcom/android/server/DeviceManager3LMService$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$4;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3839
    new-instance v0, Lcom/android/server/DeviceManager3LMService$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$5;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4282
    new-instance v0, Lcom/android/server/DeviceManager3LMService$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$6;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    invoke-direct {p0}, initAndroidIds()V

    .line 270
    iput-boolean v3, p0, mInitialized:Z

    .line 271
    iput-boolean v2, p0, mBluetoothEnabled:Z

    .line 272
    iput-boolean v2, p0, mMultiUserEnabled:Z

    .line 273
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 274
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 275
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 276
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 277
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackagePerms:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    .line 280
    iget-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE_V2_CLIENT_MAPPED"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, mPackagePermsRenameMap:Ljava/util/Map;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE_V2_CLIENT_MAPPED"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, mKeyStore:Landroid/security/KeyStore;

    .line 287
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 288
    iput-boolean v3, p0, mSecurePrimaryClip:Z

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 110
    iget-object v0, p0, SalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceManager3LMService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 110
    iget-boolean v0, p0, mUseCustomNotification:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 110
    iget-object v0, p0, mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, mNotificationText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;

    .prologue
    .line 110
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 110
    iput-object p1, p0, mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/DeviceManager3LMService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceManager3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, setCurrentUserId(I)V

    return-void
.end method

.method private clearNotification(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 798
    new-instance v0, Lcom/android/server/DeviceManager3LMService$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DeviceManager3LMService$3;-><init>(Lcom/android/server/DeviceManager3LMService;I)V

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$3;->start()V

    .line 803
    return-void
.end method

.method private fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "apnMap"    # Ljava/util/Map;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3804
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3805
    const-string v0, "name"

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    const-string v0, "apn"

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3807
    const-string/jumbo v0, "proxy"

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    const-string/jumbo v0, "port"

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    const-string/jumbo v0, "user"

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    const-string/jumbo v0, "server"

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3811
    const-string/jumbo v0, "password"

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    const-string v0, "mmsc"

    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    const-string v0, "mcc"

    const/16 v1, 0x9

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    const-string v0, "mnc"

    const/16 v1, 0xa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3815
    const-string v0, "numeric"

    const/16 v1, 0xb

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    const-string v0, "mmsproxy"

    const/16 v1, 0xc

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3817
    const-string v0, "mmsport"

    const/16 v1, 0xd

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3818
    const-string v0, "authtype"

    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3819
    const-string/jumbo v0, "type"

    const/16 v1, 0xf

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3820
    const-string/jumbo v0, "protocol"

    const/16 v1, 0x10

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    const-string v0, "carrier_enabled"

    const/16 v1, 0x11

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    const-string v0, "bearer"

    const/16 v1, 0x12

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    const-string/jumbo v0, "roaming_protocol"

    const/16 v1, 0x13

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    const-string v0, "mvno_type"

    const/16 v1, 0x14

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3825
    const-string v0, "mvno_match_data"

    const/16 v1, 0x15

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3826
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .registers 4

    .prologue
    .line 3835
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    sget v0, mCurrentUserId:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/DeviceManager3LMService;
    .registers 2

    .prologue
    .line 260
    const-class v1, Lcom/android/server/DeviceManager3LMService;

    monitor-enter v1

    :try_start_3
    sget-object v0, sService:Lcom/android/server/DeviceManager3LMService;

    if-nez v0, :cond_e

    .line 261
    new-instance v0, Lcom/android/server/DeviceManager3LMService;

    invoke-direct {v0}, <init>()V

    sput-object v0, sService:Lcom/android/server/DeviceManager3LMService;

    .line 263
    :cond_e
    sget-object v0, sService:Lcom/android/server/DeviceManager3LMService;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 260
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNFCSavedState()I
    .registers 1

    .prologue
    .line 2428
    sget v0, NFCSavedState:I

    return v0
.end method

.method private initAndroidIds()V
    .registers 1

    .prologue
    .line 517
    return-void
.end method

.method private isAccessPermitted()Z
    .registers 2

    .prologue
    .line 1676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isAccessPermitted(Z)Z

    move-result v0

    return v0
.end method

.method private isAccessPermitted(Z)Z
    .registers 3
    .param p1, "onlyAF"    # Z

    .prologue
    .line 1681
    const/4 v0, 0x1

    return v0
.end method

.method private isApnLockModeEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3758
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_lock_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 762
    return-void
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "flags"    # I

    .prologue
    .line 769
    new-instance v0, Lcom/android/server/DeviceManager3LMService$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p4

    move-object v6, p3

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DeviceManager3LMService$2;-><init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$2;->start()V

    .line 790
    return-void
.end method

.method private setApnLockMode(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3747
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_lock_mode"

    if-eqz p1, :cond_13

    move v0, v1

    :goto_f
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3750
    return v1

    .line 3747
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setCurrentUserId(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3830
    sput p1, mCurrentUserId:I

    .line 3831
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    return-void
.end method

.method private static setNFCSavedState(I)V
    .registers 1
    .param p0, "CurentState"    # I

    .prologue
    .line 2435
    sput p0, NFCSavedState:I

    .line 2436
    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 1185
    return-void
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .registers 2
    .param p1, "re"    # Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .prologue
    .line 2783
    return-void
.end method

.method private validate(Lcom/android/internal/net/VpnProfile;)Z
    .registers 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4069
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 4087
    :cond_23
    :goto_23
    :pswitch_23
    return v0

    .line 4074
    :cond_24
    iget v2, p1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_40

    move v0, v1

    .line 4087
    goto :goto_23

    .line 4081
    :pswitch_2b
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_23

    .line 4085
    :pswitch_35
    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_23

    .line 4074
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_35
        :pswitch_2b
        :pswitch_35
        :pswitch_23
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 4092
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v6, :cond_67

    aget-object v0, v1, v4

    .line 4093
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 4092
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4097
    :cond_15
    const/16 v8, 0x20

    .line 4098
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2a

    .line 4099
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 4100
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 4101
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4103
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2a
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 4104
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 4106
    .local v5, "integer":I
    array-length v9, v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_64

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    if-ltz v8, :cond_62

    const/16 v9, 0x20

    if-gt v8, v9, :cond_62

    const/16 v9, 0x20

    if-ge v8, v9, :cond_12

    shl-int v9, v5, v8

    if-eqz v9, :cond_12

    .line 4108
    :cond_62
    const/4 v9, 0x0

    .line 4114
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_63
    return v9

    .line 4111
    :catch_64
    move-exception v3

    .line 4112
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_63

    .line 4114
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_67
    const/4 v9, 0x1

    goto :goto_63
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .registers 2
    .param p1, "list"    # Ljava/util/Map;

    .prologue
    .line 3145
    return-void
.end method

.method public addEmailAccount(Ljava/util/Map;)Z
    .registers 9
    .param p1, "account"    # Ljava/util/Map;

    .prologue
    const/4 v6, 0x0

    .line 4205
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 4237
    :goto_8
    return v4

    .line 4207
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4208
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.email.CREATE_KITTING_ACCOUNT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4209
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4210
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "in_port"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string/jumbo v4, "out_port"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string/jumbo v4, "syncFreq"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "lookback"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "deletePolicy"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 4218
    :cond_65
    :try_start_65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_78} :catch_79

    goto :goto_1b

    .line 4219
    :catch_79
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v4, v6

    .line 4220
    goto :goto_8

    .line 4223
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    const-string v4, "attachments"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string/jumbo v4, "syncEmail"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string/jumbo v4, "syncContacts"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string/jumbo v4, "syncCalendar"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 4229
    :cond_af
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1b

    .line 4232
    :cond_c4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1b

    .line 4235
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d5
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4236
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4237
    const/4 v4, 0x1

    goto/16 :goto_8
.end method

.method public addOrUpdateApn(Ljava/util/Map;I)Z
    .registers 5
    .param p1, "list"    # Ljava/util/Map;
    .param p2, "id"    # I

    .prologue
    .line 3610
    invoke-virtual {p0, p1, p2}, addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v0

    .line 3611
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public addOrUpdateApnResult(Ljava/util/Map;I)I
    .registers 26
    .param p1, "list"    # Ljava/util/Map;
    .param p2, "id"    # I

    .prologue
    .line 3625
    invoke-direct/range {p0 .. p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v18, -0x1

    .line 3701
    :goto_8
    return v18

    .line 3627
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, mApnProvisioningMutex:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 3629
    :try_start_10
    invoke-direct/range {p0 .. p0}, isApnLockModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v18, -0x2

    monitor-exit v22

    goto :goto_8

    .line 3702
    :catchall_1a
    move-exception v2

    monitor-exit v22
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v2

    .line 3631
    :cond_1d
    :try_start_1d
    const-string v8, ""

    .line 3632
    .local v8, "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 3633
    .local v17, "res":Landroid/content/res/Resources;
    const v2, 0x107005b

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 3634
    .local v12, "key":[Ljava/lang/String;
    const v2, 0x107005c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 3636
    .local v15, "oem":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3637
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 3638
    .local v21, "values":Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 3640
    .local v16, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_56
    array-length v2, v12

    if-ge v10, v2, :cond_65

    .line 3641
    aget-object v2, v12, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3647
    :cond_65
    array-length v2, v12

    if-eq v10, v2, :cond_49

    .line 3650
    const-string v2, "authtype"

    aget-object v3, v12, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "bearer"

    aget-object v3, v12, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 3652
    :cond_7c
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 3653
    aget-object v3, v15, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3659
    :cond_9d
    :goto_9d
    aget-object v2, v12, v10

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3660
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    .line 3662
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "apnName":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "apnName":Ljava/lang/String;
    goto :goto_49

    .line 3640
    :cond_ba
    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    .line 3656
    :cond_bd
    aget-object v3, v15, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 3667
    .end local v10    # "i":I
    .end local v16    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cb
    move/from16 v18, p2

    .line 3668
    .local v18, "ret_id":I
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_148

    .line 3671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3672
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3676
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_145

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_145

    .line 3678
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p2

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 3679
    .local v20, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 3680
    .local v14, "numOfRowsUpdated":I
    if-gez v14, :cond_13d

    .line 3681
    const/16 v18, -0x3

    .line 3688
    .end local v14    # "numOfRowsUpdated":I
    .end local v20    # "url":Landroid/net/Uri;
    :cond_13d
    :goto_13d
    if-eqz v9, :cond_142

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3701
    .end local v5    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_142
    :goto_142
    monitor-exit v22

    goto/16 :goto_8

    .line 3686
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_145
    const/16 v18, -0x4

    goto :goto_13d

    .line 3693
    .end local v5    # "where":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_148
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_157
    .catchall {:try_start_1d .. :try_end_157} :catchall_1a

    move-result-object v19

    .line 3695
    .local v19, "uri":Landroid/net/Uri;
    :try_start_158
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_158 .. :try_end_15f} :catch_161
    .catchall {:try_start_158 .. :try_end_15f} :catchall_1a

    move-result v18

    goto :goto_142

    .line 3696
    :catch_161
    move-exception v13

    .line 3697
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    const/16 v18, -0x3

    goto :goto_142
.end method

.method public addVpnProfile(Ljava/util/Map;)Z
    .registers 20
    .param p1, "list"    # Ljava/util/Map;

    .prologue
    .line 3996
    invoke-direct/range {p0 .. p0}, isAccessPermitted()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    .line 4065
    :goto_7
    return v13

    .line 3999
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, mKeyStore:Landroid/security/KeyStore;

    const-string v14, "VPN_"

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4000
    .local v7, "keys":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4001
    .local v10, "millis":J
    if-eqz v7, :cond_2a

    .line 4002
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 4003
    .local v3, "existingKeys":Ljava/util/List;
    :goto_1c
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 4004
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    goto :goto_1c

    .line 4007
    .end local v3    # "existingKeys":Ljava/util/List;
    :cond_2a
    new-instance v12, Lcom/android/internal/net/VpnProfile;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 4009
    .local v12, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4010
    .local v9, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "name"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 4011
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_3b

    .line 4012
    :cond_5c
    const-string/jumbo v13, "type"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 4014
    :try_start_69
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_75} :catch_76

    goto :goto_3b

    .line 4015
    :catch_76
    move-exception v13

    goto :goto_3b

    .line 4018
    :cond_78
    const-string v13, "mppe"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 4019
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_3b

    .line 4020
    :cond_94
    const-string/jumbo v13, "saveLogin"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b1

    .line 4021
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string/jumbo v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    goto :goto_3b

    .line 4022
    :cond_b1
    const-string/jumbo v13, "server"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 4023
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4024
    :cond_c8
    const-string/jumbo v13, "username"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_df

    .line 4025
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4026
    :cond_df
    const-string/jumbo v13, "password"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f6

    .line 4027
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4028
    :cond_f6
    const-string/jumbo v13, "searchDomains"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10d

    .line 4029
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4030
    :cond_10d
    const-string v13, "dnsServers"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_123

    .line 4031
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4032
    :cond_123
    const-string/jumbo v13, "routes"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13a

    .line 4033
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4034
    :cond_13a
    const-string v13, "l2tpSecret"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_150

    .line 4035
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4036
    :cond_150
    const-string v13, "ipsecIdentifier"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_166

    .line 4037
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4038
    :cond_166
    const-string v13, "ipsecSecret"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17c

    .line 4039
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4040
    :cond_17c
    const-string v13, "ipsecUserCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_192

    .line 4041
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4042
    :cond_192
    const-string v13, "ipsecCaCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a8

    .line 4043
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4044
    :cond_1a8
    const-string v13, "ipsecServerCert"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 4045
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v12, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto/16 :goto_3b

    .line 4049
    .end local v9    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1be
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, validate(Lcom/android/internal/net/VpnProfile;)Z

    move-result v13

    if-nez v13, :cond_1c9

    .line 4050
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 4053
    :cond_1c9
    if-eqz v7, :cond_21c

    .line 4054
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1ce
    if-ge v5, v8, :cond_21c

    aget-object v6, v2, v5

    .line 4055
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VPN_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 4057
    .local v4, "existingProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_219

    iget-object v13, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v14, v12, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_219

    .line 4058
    move-object/from16 v0, p0

    iget-object v13, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VPN_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 4054
    :cond_219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ce

    .line 4063
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "existingProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "i$":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "len$":I
    :cond_21c
    move-object/from16 v0, p0

    iget-object v13, v0, mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VPN_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v15

    const/16 v16, -0x1

    const/16 v17, 0x1

    invoke-virtual/range {v13 .. v17}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 4065
    const/4 v13, 0x1

    goto/16 :goto_7
.end method

.method public blockAdb(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 2538
    return-void
.end method

.method public blockScreenshot(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 3087
    return-void
.end method

.method public blockTethering(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 3036
    return-void
.end method

.method public blockUsb(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 2611
    return-void
.end method

.method public changePackageState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x3

    .line 1164
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1172
    :goto_7
    return-void

    .line 1166
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1167
    if-ne p2, v1, :cond_11

    .line 1168
    invoke-direct {p0, p1, v1}, setPackageState(Ljava/lang/String;I)V

    goto :goto_7

    .line 1170
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setPackageState(Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
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
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1535
    .local p2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "pkgSigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1609
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1290
    const/4 v0, 0x1

    return v0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2934
    const/4 v0, 0x1

    return v0
.end method

.method public checkSignature(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 2809
    const/4 v0, 0x0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1032
    const/4 v0, 0x1

    return v0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 545
    return-void
.end method

.method public clearApn()V
    .registers 1

    .prologue
    .line 3191
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2520
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePermissions()V
    .registers 1

    .prologue
    .line 2953
    return-void
.end method

.method public completePackageScan(II)V
    .registers 3
    .param p1, "scanId"    # I
    .param p2, "result"    # I

    .prologue
    .line 3016
    return-void
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "abstractSocketName"    # Ljava/lang/String;
    .param p2, "vpnSubnets"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public deleteApn(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 3475
    invoke-virtual {p0, p1}, deleteApnResult(I)I

    move-result v0

    .line 3476
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public deleteApnResult(I)I
    .registers 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x4

    .line 3490
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v2, -0x1

    .line 3504
    :goto_8
    return v2

    .line 3492
    :cond_9
    iget-object v3, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3494
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v2, -0x2

    monitor-exit v3

    goto :goto_8

    .line 3505
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v2

    .line 3496
    :cond_18
    if-gez p1, :cond_1c

    :try_start_1a
    monitor-exit v3

    goto :goto_8

    .line 3498
    :cond_1c
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3499
    .local v1, "url":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 3500
    .local v0, "numRowsDeleted":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3504
    if-lez v0, :cond_33

    const/4 v2, 0x0

    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_15

    goto :goto_8
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "deleteData"    # Z

    .prologue
    .line 1443
    return-void
.end method

.method public disablePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1121
    return-void
.end method

.method public disconnectFromVpn(Z)Z
    .registers 3
    .param p1, "doReset"    # Z

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1146
    return-void
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "encrypt"    # Z
    .param p3, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2121
    return-void
.end method

.method public getActivationState()Z
    .registers 4

    .prologue
    .line 3347
    const-string v0, "1"

    const-string/jumbo v1, "persist.security.3lm.activated"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getApn(I)Ljava/util/Map;
    .registers 13
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 3716
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v9

    .line 3741
    :goto_8
    return-object v0

    .line 3718
    :cond_9
    iget-object v10, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 3720
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit v10

    move-object v0, v9

    goto :goto_8

    .line 3722
    :cond_15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3724
    .local v6, "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3726
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3731
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_61

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 3732
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3733
    invoke-direct {p0, v6, v7}, fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V

    .line 3734
    const/4 v8, 0x1

    .line 3739
    .local v8, "ret":Z
    :goto_53
    if-eqz v7, :cond_58

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3741
    :cond_58
    const/4 v0, 0x1

    if-ne v8, v0, :cond_63

    move-object v0, v6

    :goto_5c
    monitor-exit v10

    goto :goto_8

    .line 3742
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ret":Z
    :catchall_5e
    move-exception v0

    monitor-exit v10
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_5e

    throw v0

    .line 3737
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_61
    const/4 v8, 0x0

    .restart local v8    # "ret":Z
    goto :goto_53

    :cond_63
    move-object v0, v9

    .line 3741
    goto :goto_5c
.end method

.method public getApnByMccMnc(II)Ljava/util/List;
    .registers 14
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    const/16 v1, 0x3e7

    .line 3766
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3767
    .local v6, "apnList":Ljava/util/List;
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3798
    :goto_d
    return-object v6

    .line 3769
    :cond_e
    iget-object v10, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 3770
    :try_start_11
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    monitor-exit v10

    goto :goto_d

    .line 3799
    :catchall_19
    move-exception v0

    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0

    .line 3773
    :cond_1c
    const/16 v0, 0x64

    if-lt p1, v0, :cond_28

    if-gt p1, v1, :cond_28

    const/16 v0, 0xa

    if-lt p2, v0, :cond_28

    if-le p2, v1, :cond_4c

    .line 3775
    :cond_28
    :try_start_28
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mcc/mnc is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    monitor-exit v10

    goto :goto_d

    .line 3779
    :cond_4c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3780
    .local v9, "numeric":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3782
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3786
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_9f

    .line 3787
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3788
    :goto_87
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 3789
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3790
    .local v7, "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v7, v8}, fillApnMap(Ljava/util/Map;Landroid/database/Cursor;)V

    .line 3791
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3792
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_87

    .line 3794
    .end local v7    # "apnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3798
    :cond_9f
    monitor-exit v10
    :try_end_a0
    .catchall {:try_start_28 .. :try_end_a0} :catchall_19

    goto/16 :goto_d
.end method

.method public getBluetoothEnabled()Z
    .registers 2

    .prologue
    .line 1392
    const/4 v0, 0x1

    return v0
.end method

.method public getDeviceAdminLock(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4272
    iget-object v1, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 4279
    :cond_9
    :goto_9
    return v0

    .line 4275
    :cond_a
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 4279
    iget-object v0, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public getExternalSDEncryptionState()I
    .registers 4

    .prologue
    .line 716
    const-string v0, "DeviceManager3LM"

    const-string v1, "3LM getExternalSDEncryptionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sd_encryption"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSimulatorPermitted()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, isSimulatorPermitted:Z

    return v0
.end method

.method public getMultiUserEnabled()Z
    .registers 2

    .prologue
    .line 3257
    iget-boolean v0, p0, mMultiUserEnabled:Z

    return v0
.end method

.method public getNfcState()I
    .registers 2

    .prologue
    .line 2414
    const/4 v0, 0x1

    return v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3269
    iget-boolean v1, p0, mUseCustomNotification:Z

    if-nez v1, :cond_13

    .line 3272
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3273
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1040950

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNotificationText:Ljava/lang/String;

    .line 3276
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_13
    iget-object v1, p0, mNotificationText:Ljava/lang/String;

    return-object v1
.end method

.method public getOtaDelay()I
    .registers 2

    .prologue
    .line 2685
    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .registers 2

    .prologue
    .line 394
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2376
    const/4 v0, 0x0

    .line 2379
    .local v0, "skip":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageGidsWithException(Ljava/lang/String;)[I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2358
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 2359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PackageManager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2362
    :cond_c
    invoke-virtual {p0, p1}, getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2999
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredApn()I
    .registers 10

    .prologue
    .line 3574
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v7, -0x1

    .line 3596
    :goto_7
    return v7

    .line 3576
    :cond_8
    iget-object v8, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 3579
    :try_start_b
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v7, -0x2

    monitor-exit v8

    goto :goto_7

    .line 3597
    :catchall_14
    move-exception v0

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0

    .line 3581
    :cond_17
    const/4 v7, -0x4

    .line 3583
    .local v7, "ret_code":I
    :try_start_18
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3585
    .local v1, "preferedApn":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3588
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_48

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_48

    .line 3589
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3590
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3595
    :cond_48
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3596
    :cond_4d
    monitor-exit v8
    :try_end_4e
    .catchall {:try_start_18 .. :try_end_4e} :catchall_14

    goto :goto_7
.end method

.method public getSecureOSVendorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 370
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiState()I
    .registers 2

    .prologue
    .line 2485
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageURIAsString"    # Ljava/lang/String;

    .prologue
    .line 1402
    return-void
.end method

.method public isAdbBlocked()Z
    .registers 2

    .prologue
    .line 2559
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminLocked()Z
    .registers 2

    .prologue
    .line 2594
    const/4 v0, 0x0

    return v0
.end method

.method public isApnLocked()Z
    .registers 2

    .prologue
    .line 3130
    const/4 v0, 0x0

    return v0
.end method

.method public isApnSelectable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 3406
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 3409
    const/4 v0, 0x1

    .line 3417
    :goto_9
    return v0

    .line 3413
    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_9

    .line 3417
    :cond_14
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public isDataEncrypted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2055
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2065
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2089
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2104
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageWhitelisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3308
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 3309
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public isReadExternalStorageBlocked()Z
    .registers 2

    .prologue
    .line 3321
    iget-boolean v0, p0, mDidSetProtectUsb:Z

    return v0
.end method

.method public isScreenshotBlocked()Z
    .registers 2

    .prologue
    .line 3101
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncrypted()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1954
    const-string v1, "DeviceManager3LM"

    const-string v2, "isSdEncrypted called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v1, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v1}, Landroid/os/OEMEncryption;->checkSdEncrypted()Z

    move-result v0

    .line 1956
    .local v0, "sdEncState":Z
    const-string v1, "DeviceManager3LM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from isSdEncrypted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    return v0
.end method

.method public isSdEncryptionRequired()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1967
    const-string v1, "DeviceManager3LM"

    const-string v2, "isSdEncryptionRequired called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v1, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v1}, Landroid/os/OEMEncryption;->getSDPolicy()Z

    move-result v0

    .line 1969
    .local v0, "currentSDPolicy":Z
    const-string v1, "DeviceManager3LM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from isSdEncryptionRequired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2734
    const/4 v0, 0x1

    return v0
.end method

.method public isSsidLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2760
    const/4 v3, 0x0

    invoke-direct {p0, v3}, isBootLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2773
    :cond_b
    :goto_b
    return v1

    .line 2762
    :cond_c
    iget-object v3, p0, mWifiFilter:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1e

    move v1, v2

    goto :goto_b

    .line 2764
    :cond_1e
    iget-object v3, p0, mWifiFilter:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 2766
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 2769
    move-object v0, p1

    .line 2770
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4b

    .line 2771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2773
    :cond_4b
    iget-object v1, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_b
.end method

.method public isTetheringBlocked()Z
    .registers 2

    .prologue
    .line 3073
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .registers 2

    .prologue
    .line 2642
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1901
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1872
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1796
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1777
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyStoreGetLastError()I
    .registers 2

    .prologue
    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreLock()Z
    .registers 2

    .prologue
    .line 1829
    const/4 v0, 0x0

    return v0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1755
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreReset()Z
    .registers 2

    .prologue
    .line 1886
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1815
    return-void
.end method

.method public keyStoreTest()I
    .registers 2

    .prologue
    .line 1739
    const/4 v0, -0x1

    return v0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1843
    const/4 v0, 0x0

    return v0
.end method

.method public lockAdmin(Z)V
    .registers 2
    .param p1, "lock"    # Z

    .prologue
    .line 2575
    return-void
.end method

.method public lockApn(Z)V
    .registers 2
    .param p1, "lock"    # Z

    .prologue
    .line 3116
    return-void
.end method

.method public notification(III)V
    .registers 4
    .param p1, "barId"    # I
    .param p2, "titleId"    # I
    .param p3, "textId"    # I

    .prologue
    .line 2852
    return-void
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1936
    const/4 v0, 0x0

    return v0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1918
    const/4 v0, 0x0

    return v0
.end method

.method public reboot(Ljava/lang/String;)Z
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4118
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    .line 4123
    :goto_9
    return v1

    .line 4119
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4121
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4122
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 4123
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public restoreDefaultApns()V
    .registers 1

    .prologue
    .line 3217
    return-void
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public setActivationState(Z)V
    .registers 4
    .param p1, "activated"    # Z

    .prologue
    .line 3333
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3336
    :goto_6
    return-void

    .line 3335
    :cond_7
    const-string/jumbo v1, "persist.security.3lm.activated"

    if-eqz p1, :cond_12

    const-string v0, "1"

    :goto_e
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    const-string v0, "0"

    goto :goto_e
.end method

.method public setActiveAdmin(Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3924
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    .line 3973
    :goto_9
    return v7

    .line 3925
    :cond_a
    if-nez p1, :cond_e

    move v7, v8

    goto :goto_9

    .line 3926
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3928
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 3931
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v11, 0x8080

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3934
    .local v0, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_35

    .line 3935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3938
    :cond_35
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_3a
    if-ge v5, v1, :cond_80

    .line 3939
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3941
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_42
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v6}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 3942
    .local v3, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 3944
    if-eqz p2, :cond_67

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 3945
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v4, v7, v10}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 3948
    :cond_67
    if-nez p2, :cond_7a

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 3949
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_7a} :catch_b1
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_7a} :catch_7c

    :cond_7a
    move v7, v9

    .line 3951
    goto :goto_9

    .line 3954
    .end local v3    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_7c
    move-exception v7

    .line 3938
    :cond_7d
    :goto_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 3960
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_80
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 3961
    .local v2, "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_ae

    .line 3962
    const/4 v5, 0x0

    :goto_87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_ae

    .line 3963
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 3964
    if-nez p2, :cond_a8

    .line 3966
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_a8
    move v7, v9

    .line 3969
    goto/16 :goto_9

    .line 3962
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_ae
    move v7, v8

    .line 3973
    goto/16 :goto_9

    .line 3953
    .end local v2    # "cur":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_b1
    move-exception v7

    goto :goto_7d
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pkgNames"    # Ljava/util/Map;

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method public setApnList(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 3430
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3462
    :cond_9
    :goto_9
    return-void

    .line 3432
    :cond_a
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3433
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3434
    const/4 v10, 0x0

    .line 3435
    .local v10, "spMode":Z
    const/4 v8, 0x0

    .line 3436
    .local v8, "id":I
    iget-object v0, p0, mApnList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v12, :cond_78

    .line 3437
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3439
    .local v6, "apnName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AND apn=\"spmode.ne.jp\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3441
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v13

    const-string v5, "name"

    aput-object v5, v2, v12

    const/4 v5, 0x2

    const-string v12, "apn"

    aput-object v12, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v12, "type"

    aput-object v12, v2, v5

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3445
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_78

    .line 3446
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_75

    .line 3447
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3448
    const/4 v10, 0x1

    .line 3449
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3451
    :cond_75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3455
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "apnName":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_78
    invoke-direct {p0, v10}, setApnLockMode(Z)Z

    .line 3456
    if-eqz v10, :cond_9

    .line 3457
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3458
    .local v9, "preferedApn":Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3459
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "apn_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3460
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "permNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1500
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pkgNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "pubkeyRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1517
    const/4 v0, 0x0

    return v0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .registers 3
    .param p1, "uninstallPkgNameRegexPermMap"    # Ljava/util/Map;

    .prologue
    .line 1592
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1375
    return-void
.end method

.method public setBootLock(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 619
    return-void
.end method

.method public setDataEncryptionRequired(Z)V
    .registers 2
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2075
    return-void
.end method

.method public setDeviceAdminLock(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lock"    # Z

    .prologue
    .line 4241
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4267
    :cond_6
    :goto_6
    return-void

    .line 4243
    :cond_7
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 4245
    const/4 v3, 0x1

    .line 4247
    .local v3, "modified":Z
    if-eqz p2, :cond_35

    .line 4249
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 4257
    :goto_18
    if-eqz v3, :cond_6

    .line 4258
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4259
    .local v1, "adminList":Lorg/json/JSONArray;
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4260
    .local v0, "admin":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    .line 4252
    .end local v0    # "admin":Ljava/lang/String;
    .end local v1    # "adminList":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_35
    iget-object v4, p0, mDeviceAdminLock:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_18

    .line 4262
    .restart local v1    # "adminList":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4263
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "locked_admins_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6
.end method

.method public setExternalSDEncryptionState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 706
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setExternalSDEncryptionState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 710
    :goto_1e
    return-void

    .line 709
    :cond_1f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sd_encryption"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e
.end method

.method public setExternalStorageEnabled(Z)V
    .registers 13
    .param p1, "enable"    # Z

    .prologue
    .line 3369
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3393
    :cond_6
    :goto_6
    return-void

    .line 3370
    :cond_7
    const-string/jumbo v9, "persist.security.3lm.storage"

    if-eqz p1, :cond_2a

    const-string v8, "1"

    :goto_e
    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    if-nez p1, :cond_6

    .line 3374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3375
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 3376
    .local v4, "mountService":Landroid/os/storage/IMountService;
    if-nez v4, :cond_2d

    .line 3377
    const-string v8, "DeviceManager3LM"

    const-string v9, "Can\'t get mount service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3370
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    :cond_2a
    const-string v8, "0"

    goto :goto_e

    .line 3380
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    :cond_2d
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3381
    .local v5, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 3382
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3f
    if-ge v2, v3, :cond_6

    aget-object v6, v0, v2

    .line 3385
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_58

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 3387
    :try_start_4f
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_58} :catch_5b

    .line 3382
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 3388
    :catch_5b
    move-exception v1

    .line 3389
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "DeviceManager3LM"

    const-string v9, "Failed talking with mount service"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method public setLocationMode(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 486
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 488
    :goto_7
    return v0

    .line 487
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 488
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 474
    return-void
.end method

.method public setMultiUserEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 3244
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3252
    :cond_6
    :goto_6
    return-void

    .line 3246
    :cond_7
    iput-boolean p1, p0, mMultiUserEnabled:Z

    .line 3247
    if-nez p1, :cond_6

    .line 3248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3249
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6
.end method

.method public setNfcState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 2446
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 732
    return-void
.end method

.method public setOtaDelay(I)V
    .registers 2
    .param p1, "delay"    # I

    .prologue
    .line 2665
    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3889
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3901
    :goto_6
    return-void

    .line 3890
    :cond_7
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 3891
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v0, :cond_26

    .line 3893
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3894
    const-string v2, "lock_screen_owner_info"

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 3895
    :catch_1d
    move-exception v1

    .line 3896
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not set Owner Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3899
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_26
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not access lockSettingService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setOwnerInfoEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 3873
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3886
    :goto_6
    return-void

    .line 3874
    :cond_7
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 3875
    .local v0, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v0, :cond_26

    .line 3877
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3878
    const-string v2, "lock_screen_owner_info_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 3880
    :catch_1d
    move-exception v1

    .line 3881
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not enable Owner Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3884
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_26
    const-string v2, "DeviceManager3LM"

    const-string v3, "Could not access lockSettingService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 1063
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "scannerComponent"    # Ljava/lang/String;
    .param p2, "failOnTimeout"    # Z
    .param p3, "timeoutMillis"    # I

    .prologue
    .line 2976
    return-void
.end method

.method public setPackageWhitelist(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3291
    .local p1, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3295
    :goto_6
    return-void

    .line 3293
    :cond_7
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3294
    iget-object v0, p0, mPackageWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPreferredActivity(Landroid/content/Intent;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "bestMatch"    # I
    .param p4, "set"    # [Landroid/content/ComponentName;
    .param p5, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 3853
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3870
    :goto_6
    return-void

    .line 3857
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3859
    .local v8, "identityToken":J
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_22} :catch_2b

    .line 3868
    :goto_22
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3869
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 3863
    :catch_2b
    move-exception v7

    .line 3864
    .local v7, "re":Landroid/os/RemoteException;
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public setPreferredApn(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 3519
    invoke-virtual {p0, p1}, setPreferredApnResult(I)I

    move-result v0

    .line 3520
    .local v0, "ret_id":I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setPreferredApnResult(I)I
    .registers 14
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 3535
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    .line 3561
    :goto_8
    return v0

    .line 3537
    :cond_9
    iget-object v11, p0, mApnProvisioningMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 3539
    :try_start_c
    invoke-direct {p0}, isApnLockModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, -0x2

    monitor-exit v11

    goto :goto_8

    .line 3562
    :catchall_15
    move-exception v0

    monitor-exit v11
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0

    .line 3541
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3543
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3546
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_8e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8e

    .line 3547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3548
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3549
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3556
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 3557
    .local v8, "preferedApn":Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3558
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3559
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3561
    monitor-exit v11

    move v0, v10

    goto/16 :goto_8

    .line 3552
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "preferedApn":Landroid/net/Uri;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_8e
    if-eqz v6, :cond_93

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3553
    :cond_93
    const/4 v0, -0x4

    monitor-exit v11
    :try_end_95
    .catchall {:try_start_18 .. :try_end_95} :catchall_15

    goto/16 :goto_8
.end method

.method public setPrimaryClipOwner(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2905
    return-void
.end method

.method public setProvisionedSsids(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3354
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3358
    :goto_6
    return-void

    .line 3356
    :cond_7
    iget-object v0, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3357
    iget-object v0, p0, mProvisionedSsids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setRestrictBackgroundData(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3978
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 3992
    :cond_8
    :goto_8
    return v3

    .line 3980
    :cond_9
    const/4 v3, 0x0

    .line 3981
    .local v3, "ret":Z
    if-eqz p1, :cond_8

    .line 3982
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3983
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3984
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3986
    iget-object v5, p0, mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p2, :cond_34

    const/4 v4, 0x1

    :cond_34
    invoke-virtual {v5, v6, v4}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 3988
    const/4 v3, 0x1

    .line 3989
    goto :goto_8
.end method

.method public setScreenLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4127
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    .line 4200
    :goto_7
    return v11

    .line 4128
    :cond_8
    if-nez p1, :cond_c

    const/4 v11, 0x0

    goto :goto_7

    .line 4129
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4132
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4133
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v11, p0, mContext:Landroid/content/Context;

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 4134
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    .line 4136
    .local v7, "minQuality":I
    iget-object v11, p0, mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_33

    .line 4137
    const/high16 v11, 0x10000

    if-ge v7, v11, :cond_33

    .line 4139
    const/high16 v7, 0x10000

    .line 4142
    :cond_33
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 4143
    .local v3, "encryptionStatus":I
    const/4 v11, 0x3

    if-eq v3, v11, :cond_3d

    const/4 v11, 0x2

    if-ne v3, v11, :cond_43

    .line 4145
    :cond_3d
    const/high16 v11, 0x20000

    if-ge v7, v11, :cond_43

    .line 4147
    const/high16 v7, 0x20000

    .line 4151
    :cond_43
    const-string v11, "off"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_74

    .line 4153
    iget-object v11, p0, mContext:Landroid/content/Context;

    iget-object v12, p0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 4154
    .local v9, "um":Landroid/os/UserManager;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .line 4155
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_66

    const/4 v11, 0x0

    goto :goto_7

    .line 4157
    :cond_66
    if-lez v7, :cond_6a

    const/4 v11, 0x0

    goto :goto_7

    .line 4158
    :cond_6a
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 4159
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 4200
    .end local v9    # "um":Landroid/os/UserManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_72
    const/4 v11, 0x1

    goto :goto_7

    .line 4160
    :cond_74
    const-string v11, "none"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 4162
    if-lez v7, :cond_80

    const/4 v11, 0x0

    goto :goto_7

    .line 4163
    :cond_80
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 4164
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    goto :goto_72

    .line 4165
    :cond_89
    const-string/jumbo v11, "pin"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a9

    .line 4167
    const/high16 v11, 0x20000

    if-le v7, v11, :cond_99

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4168
    :cond_99
    if-nez p2, :cond_9e

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4169
    :cond_9e
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 4170
    const/high16 v11, 0x20000

    const/4 v12, 0x0

    invoke-virtual {v6, p2, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    goto :goto_72

    .line 4171
    :cond_a9
    const-string/jumbo v11, "password"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 4173
    const/high16 v11, 0x60000

    if-le v7, v11, :cond_b9

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4174
    :cond_b9
    if-nez p2, :cond_be

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4175
    :cond_be
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 4176
    const/high16 v11, 0x40000

    const/4 v12, 0x0

    invoke-virtual {v6, p2, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    goto :goto_72

    .line 4177
    :cond_c9
    const-string/jumbo v11, "pattern"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_117

    .line 4179
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_d9

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4180
    :cond_d9
    if-nez p2, :cond_de

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4181
    :cond_de
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 4182
    .local v5, "len":I
    new-array v1, v5, [B

    .line 4183
    .local v1, "data":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e5
    if-ge v4, v5, :cond_fc

    .line 4184
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    int-to-byte v0, v11

    .line 4185
    .local v0, "b":B
    if-ltz v0, :cond_f9

    const/16 v11, 0x9

    if-gt v0, v11, :cond_f9

    .line 4186
    aput-byte v0, v1, v4

    .line 4183
    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    .line 4188
    :cond_f9
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 4191
    .end local v0    # "b":B
    :cond_fc
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 4192
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    .line 4193
    .local v8, "strData":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 4194
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 4195
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_72

    .line 4198
    .end local v1    # "data":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v8    # "strData":Ljava/lang/String;
    :cond_117
    const/4 v11, 0x0

    goto/16 :goto_7
.end method

.method public setSdEncryptionRequired(Z)V
    .registers 7
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1983
    const-string v2, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSdEncryptionRequired called with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1999
    :goto_1f
    return-void

    .line 1988
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1989
    .local v0, "token":J
    if-eqz p1, :cond_33

    .line 1990
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, setExternalSDEncryptionState(I)V

    .line 1994
    :goto_2a
    iget-object v2, p0, mOEMEncryptionManager:Landroid/os/OEMEncryption;

    invoke-virtual {v2, p1}, Landroid/os/OEMEncryption;->setSDEncryptionPolicy(Z)V

    .line 1995
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 1992
    :cond_33
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, setExternalSDEncryptionState(I)V

    goto :goto_2a
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2878
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2701
    .local p1, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 2498
    return-void
.end method

.method public setisSimulatorPermitted(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 505
    const-string v0, "DeviceManager3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-boolean p1, p0, isSimulatorPermitted:Z

    .line 507
    const-string v0, "3lmsimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vpnSuffixes"    # Ljava/lang/String;

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .registers 1

    .prologue
    .line 633
    return-void
.end method

.method public updateLocale(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3904
    invoke-direct {p0}, isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3920
    :goto_7
    return v3

    .line 3905
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3906
    .local v1, "languages":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 3907
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocale:  invalid language "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3910
    :cond_30
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3911
    .local v0, "countries":Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 3912
    const-string v4, "DeviceManager3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLocale:  invalid country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3916
    :cond_58
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3919
    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 3920
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public updateSdNotification(ZLjava/lang/String;)V
    .registers 3
    .param p1, "displayNotification"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 2045
    return-void
.end method
