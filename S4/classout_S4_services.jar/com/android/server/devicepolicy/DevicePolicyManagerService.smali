.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_BACKUP_XML:Ljava/lang/String; = "device_policies_backup.xml"

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/extSdCard"

.field private static final FOOTER_PROP_MAX_PASSWORD_ATTEMPTS:Ljava/lang/String; = "security.ode.maxattempts"

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK_TASK_COMPONENTS_XML:Ljava/lang/String; = "lock-task-component"

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400ed

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PROP_BLURTOOTH_MODE:Ljava/lang/String; = "service.bt.security.policy.mode"

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final is3LMAllowed:Z

.field private static mHM:Landroid/content/IHarmonyEAS;

.field private static mNeedToGetAlternativePasswdForODE:Z

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private allowLock:Ljava/lang/Object;

.field private mCheckLoadSettingsLocked:Z

.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mNotifyChanges:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    sput-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    .line 228
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 245
    sget-object v0, SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "skip_first_use_hints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    .line 248
    sget-object v0, SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v1, SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 249
    sget-object v0, SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    const-string v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 252
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "adb_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "bluetooth_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "development_settings_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "mode_ringer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "network_preference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "wifi_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string/jumbo v1, "wifi_sleep_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, mNeedToGetAlternativePasswdForODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1193
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 220
    iput-boolean v2, p0, mNotifyChanges:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, mCheckLoadSettingsLocked:Z

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserData:Landroid/util/SparseArray;

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 360
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 6207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, allowLock:Ljava/lang/Object;

    .line 6779
    iput-object v4, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1194
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1195
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 1196
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mHasFeature:Z

    .line 1198
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DPM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1200
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    iput-object v0, p0, mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 1201
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_5b

    .line 1222
    :goto_5a
    return-void

    .line 1205
    :cond_5b
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1206
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1207
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1208
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1211
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1212
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1213
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1214
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1215
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1218
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1221
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5a
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, handlePasswordExpirationNotification(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 185
    iget-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 185
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, resetAppPolicies(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 185
    invoke-direct {p0, p1}, resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, saveSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 185
    invoke-direct {p0}, getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private allowedToSetDeviceOwnerOnDevice()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5283
    .local v0, "callingId":I
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_1c

    .line 5284
    :cond_c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1a

    .line 5286
    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v1, v2

    .line 5284
    goto :goto_19

    .line 5286
    :cond_1c
    invoke-direct {p0, v2}, hasUserSetupCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_19

    move v1, v2

    goto :goto_19
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 7203
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 7204
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7207
    .local v4, "token":J
    :try_start_9
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_54

    move-result-object v0

    .line 7209
    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_2e
    .catchall {:try_start_f .. :try_end_16} :catchall_54

    move-result-object v2

    .line 7215
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_17
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget v7, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v8, :cond_3a

    .line 7216
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_54

    .line 7226
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7228
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_2d
    return v6

    .line 7210
    :catch_2e
    move-exception v3

    .line 7211
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to talk to activity managed."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_54

    .line 7226
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    .line 7220
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_4f

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v7, :cond_4f

    .line 7221
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_54

    .line 7226
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    :cond_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7228
    const/4 v6, 0x1

    goto :goto_2d

    .line 7226
    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_54
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 7030
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 7031
    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7035
    .local v4, "id":J
    :try_start_8
    iget-object v10, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 7036
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 7037
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 7040
    :cond_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 7041
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_50

    .line 7042
    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 7044
    .local v7, "systemService":Z
    const/16 v10, 0x2000

    :try_start_2d
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7046
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_47
    .catchall {:try_start_2d .. :try_end_33} :catchall_50

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_45

    const/4 v7, 0x1

    .line 7051
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_38
    if-nez v7, :cond_1e

    :try_start_3a
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_50

    move-result v10

    if-nez v10, :cond_1e

    .line 7052
    const/4 v10, 0x0

    .line 7056
    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    .line 7058
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v7    # "systemService":Z
    :goto_44
    return v10

    .line 7046
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "enabledPackage":Ljava/lang/String;
    .restart local v7    # "systemService":Z
    :cond_45
    const/4 v7, 0x0

    goto :goto_38

    .line 7048
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_47
    move-exception v1

    .line 7049
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_48
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Can\'t talk to package managed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_50

    goto :goto_38

    .line 7056
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_50
    move-exception v10

    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    throw v10

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_55
    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    .line 7058
    const/4 v10, 0x1

    goto :goto_44
.end method

.method private cleanUpOldUsers()V
    .registers 10

    .prologue
    .line 2176
    monitor-enter p0

    .line 2177
    :try_start_1
    iget-object v8, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v8, :cond_29

    iget-object v8, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v7

    .line 2179
    .local v7, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_b
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2180
    .local v6, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v8, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_32

    .line 2181
    iget-object v8, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2180
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2177
    .end local v2    # "i":I
    .end local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_29
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_b

    .line 2183
    :catchall_2f
    move-exception v8

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v8

    .restart local v2    # "i":I
    .restart local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 2184
    iget-object v8, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2186
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2187
    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2188
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2190
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_48

    .line 2192
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2193
    .local v4, "userId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, removeUserData(I)V

    goto :goto_62

    .line 2195
    .end local v4    # "userId":Ljava/lang/Integer;
    :cond_76
    return-void
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    .line 5153
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5155
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 5156
    .local v1, "userRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5157
    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5158
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMasterMute(Z)V

    .line 5160
    :cond_26
    const-string v2, "no_unmute_microphone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5161
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 5163
    :cond_31
    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 5335
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 5336
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 5342
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_e

    .line 5355
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :goto_d
    return-void

    .line 5347
    .restart local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_e
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 5349
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 5353
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1d
    move-exception v1

    goto :goto_d
.end method

.method private enforceCrossUserPermission(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    .line 5291
    if-gez p1, :cond_1b

    .line 5292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5294
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5295
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_26

    .line 5301
    :cond_25
    :goto_25
    return-void

    .line 5296
    :cond_26
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    .line 5297
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 5310
    invoke-direct {p0, p1}, isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5311
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for a managed profile. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5313
    :cond_25
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    .line 5305
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5307
    :cond_e
    return-void
.end method

.method private findSDCard()Z
    .registers 7

    .prologue
    .line 3939
    const/4 v0, 0x0

    .line 3940
    .local v0, "hasSD":Z
    sget-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_12

    .line 3941
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    sput-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    .line 3943
    :cond_12
    sget-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v4, :cond_3b

    .line 3944
    sget-object v4, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 3945
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v2, v3

    .line 3946
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v2, :cond_3b

    .line 3947
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_38

    const-string/jumbo v4, "sd"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3948
    const/4 v0, 0x1

    .line 3946
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 3952
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_3b
    return v0
.end method

.method private formatExternSdCard()V
    .registers 9

    .prologue
    .line 4068
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "formatExternSdCard() called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    sget-object v5, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_f
    if-ge v1, v3, :cond_61

    aget-object v4, v0, v1

    .line 4070
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_5e

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/extSdCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 4072
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending FORMAT_ONLY for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4074
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4075
    const-string/jumbo v5, "storage_volume"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4076
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4069
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4079
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_61
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 7065
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7066
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    .line 7068
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_9
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    return-object v2

    .line 7066
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_11
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_9
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 3467
    const/4 v1, 0x0

    .line 3468
    .local v1, "count":I
    const/4 v6, 0x0

    .line 3472
    .local v6, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0, p1}, getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 3476
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3478
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3479
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3480
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v8, :cond_28

    .line 3486
    if-eqz v1, :cond_48

    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-gt v1, v8, :cond_48

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v8

    if-eqz v8, :cond_28

    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-lt v1, v8, :cond_28

    .line 3489
    :cond_48
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 3490
    move-object v6, v0

    goto :goto_28

    .line 3494
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4c
    return-object v6
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 5034
    invoke-virtual {p0}, getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    .line 5035
    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_9

    move-object v0, v5

    .line 5047
    :cond_8
    :goto_8
    return-object v0

    .line 5039
    :cond_9
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 5040
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5041
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v3, :cond_2e

    .line 5042
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5043
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 5041
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2e
    move-object v0, v5

    .line 5047
    goto :goto_8
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 6781
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 6782
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6785
    :cond_10
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 6775
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionStatus()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4709
    const-string/jumbo v6, "vold.pfe"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4710
    .local v0, "pfeStatus":Ljava/lang/String;
    const-string v6, "activated"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    move v4, v5

    .line 4727
    :cond_14
    :goto_14
    return v4

    .line 4714
    :cond_15
    const-string/jumbo v6, "ro.crypto.state"

    const-string/jumbo v7, "unsupported"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4715
    .local v1, "status":Ljava/lang/String;
    const-string v6, "encrypted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 4716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4718
    .local v2, "token":J
    :try_start_2b
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    move-result v5

    if-eqz v5, :cond_32

    const/4 v4, 0x3

    .line 4722
    :cond_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    :catchall_36
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4724
    .end local v2    # "token":J
    :cond_3b
    const-string/jumbo v6, "unencrypted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    move v4, v5

    .line 4727
    goto :goto_14
.end method

.method private getExternalSD()Landroid/os/storage/StorageVolume;
    .registers 9

    .prologue
    .line 3918
    invoke-direct {p0}, initializeStorageManager()V

    .line 3919
    const/4 v0, 0x0

    .line 3920
    .local v0, "extStorageVolume":Landroid/os/storage/StorageVolume;
    sget-object v7, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 3921
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v5

    .line 3923
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v1, v3, :cond_26

    .line 3924
    aget-object v4, v5, v1

    .line 3925
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    const/4 v6, 0x0

    .line 3926
    .local v6, "subsystem":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 3928
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_27

    const-string/jumbo v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 3930
    move-object v0, v4

    .line 3934
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v6    # "subsystem":Ljava/lang/String;
    :cond_26
    return-object v0

    .line 3923
    .restart local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "subsystem":Ljava/lang/String;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .registers 3

    .prologue
    .line 6628
    sget-object v1, mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_10

    .line 6629
    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6630
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    sput-object v1, mHM:Landroid/content/IHarmonyEAS;

    .line 6632
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    sget-object v1, mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 1328
    iget-object v1, p0, mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_11

    .line 1329
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1330
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, mIPowerManager:Landroid/os/IPowerManager;

    .line 1332
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .prologue
    .line 1344
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 1345
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 1348
    :cond_10
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .registers 19
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2891
    const-wide/16 v8, 0x0

    .line 2893
    .local v8, "timeout":J
    if-eqz p1, :cond_f

    .line 2894
    invoke-virtual/range {p0 .. p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2895
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_d

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2917
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_c
    return-wide v12

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_d
    move-wide v12, v8

    .line 2895
    goto :goto_c

    .line 2901
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2906
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2907
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2908
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2909
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    if-ge v4, v2, :cond_1b

    .line 2910
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2911
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_5a

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5c

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_5c

    .line 2913
    :cond_5a
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2909
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5f
    move-wide v12, v8

    .line 2917
    goto :goto_c
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 5245
    iget-object v6, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v6, :cond_f

    iget-object v6, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 5247
    .local v4, "profileOwner":Landroid/content/ComponentName;
    :goto_b
    if-nez v4, :cond_11

    move-object v0, v5

    .line 5259
    :cond_e
    :goto_e
    return-object v0

    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_f
    move-object v4, v5

    .line 5245
    goto :goto_b

    .line 5251
    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_11
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5252
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5253
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v2, :cond_31

    .line 5254
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5255
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 5253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_31
    move-object v0, v5

    .line 5259
    goto :goto_e
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 5316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5318
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result-object v2

    .line 5320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getProfiles(I)Ljava/util/List;
    .registers 11
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8449
    .local v2, "ident":J
    :try_start_4
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 8450
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 8451
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8452
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_3d
    .catchall {:try_start_4 .. :try_end_19} :catchall_64

    .line 8471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8474
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1c
    return-object v4

    .line 8457
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1d
    :try_start_1d
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 8458
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8459
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 8460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 8461
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_3d
    .catchall {:try_start_1d .. :try_end_3c} :catchall_64

    goto :goto_27

    .line 8467
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_3d
    move-exception v0

    .line 8468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get profiles for user handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_64

    .line 8471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8474
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    goto :goto_1c

    .line 8471
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_64
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 1336
    iget-object v1, p0, mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_11

    .line 1337
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1338
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 1340
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v1, p0, mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 1151
    const/4 v4, 0x0

    .line 1153
    .local v4, "removed":Z
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1154
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1155
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_5e

    .line 1156
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1160
    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1c
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1155
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 1167
    :cond_27
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_41

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_24

    .line 1169
    :cond_41
    const/4 v4, 0x1

    .line 1170
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1173
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-virtual {p0, v3}, validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1175
    iget v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, saveSettingsLocked(IZ)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_5b} :catch_5c

    goto :goto_24

    .line 1179
    :catch_5c
    move-exception v5

    goto :goto_24

    .line 1183
    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_5e
    if-eqz v4, :cond_6b

    .line 1184
    invoke-virtual {p0, v3}, validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1185
    invoke-virtual {p0, v3}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1186
    iget v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5, v7}, saveSettingsLocked(IZ)V

    .line 1188
    :cond_6b
    return-void
.end method

.method private handlePasswordExpirationNotification(I)V
    .registers 20
    .param p1, "userHandle"    # I

    .prologue
    .line 2198
    monitor-enter p0

    .line 2199
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2206
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    .line 2207
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 2208
    new-instance v11, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 2209
    .local v11, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2217
    :goto_1e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_db

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 2218
    .local v12, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 2219
    .local v10, "profileUserHandle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 2220
    .local v7, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v14, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2221
    .local v3, "count":I
    if-lez v3, :cond_22

    .line 2222
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    if-ge v4, v3, :cond_22

    .line 2223
    iget-object v14, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2224
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v14, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v14

    if-eqz v14, :cond_b6

    iget-wide v14, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_b6

    iget-wide v14, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v16, 0x19bfcc00

    sub-long v14, v14, v16

    cmp-long v14, v8, v14

    if-ltz v14, :cond_b6

    iget-wide v14, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_b6

    .line 2228
    const-string v14, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 2233
    iget-object v14, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v14}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b6

    .line 2234
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2235
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v14, "pkgName"

    iget-object v15, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v15}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2236
    const-string v14, "expiration"

    iget-wide v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2237
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    iget v0, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2246
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_b6
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-eqz v14, :cond_cb

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2222
    :cond_cb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_45

    .line 2211
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "profileUserHandle":I
    .end local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v12    # "ui":Landroid/content/pm/UserInfo;
    :cond_cf
    move-object/from16 v0, p0

    iget-object v14, v0, mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    .restart local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto/16 :goto_1e

    .line 2254
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_db
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2255
    monitor-exit p0

    .line 2256
    return-void

    .line 2255
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "now":J
    .end local v11    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_ea
    move-exception v14

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_1 .. :try_end_ec} :catchall_ea

    throw v14
.end method

.method private hasUserSetupCompleted(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 5171
    iget-boolean v2, p0, mHasFeature:Z

    if-nez v2, :cond_6

    .line 5176
    :cond_5
    :goto_5
    return v1

    .line 5174
    :cond_6
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 5176
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_5

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v2, :cond_5

    const/4 v1, 0x0

    goto :goto_5
.end method

.method private ifExternalSdPresent()Z
    .registers 5

    .prologue
    .line 4055
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "ifExternalSdPresent() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    sget-object v1, mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/extSdCard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4058
    .local v0, "status":Ljava/lang/String;
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External SD card status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4062
    :cond_37
    const/4 v1, 0x1

    .line 4064
    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private initialiseStorageManager()V
    .registers 3

    .prologue
    .line 4050
    sget-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 4051
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 4052
    :cond_11
    return-void
.end method

.method private initializeStorageManager()V
    .registers 3

    .prologue
    .line 3913
    sget-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_11

    .line 3914
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 3915
    :cond_11
    return-void
.end method

.method private isEncryptionSupported()Z
    .registers 2

    .prologue
    .line 4699
    invoke-direct {p0}, getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    .prologue
    .line 3802
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3803
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isKnoxWorkspace(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 8478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8480
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result v2

    .line 8482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isManagedProfile(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 5325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5327
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result v2

    .line 5329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSupportFP(I)Z
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 6792
    const/4 v2, 0x1

    .line 6795
    .local v2, "ret":Z
    :try_start_1
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 6796
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_11

    .line 6797
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v2

    .line 6808
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_10
    return v2

    .line 6799
    .restart local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_11
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "getEDM returned null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_10

    .line 6801
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_19
    move-exception v0

    .line 6802
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failed to get EDM!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7713
    const/16 v1, 0x2000

    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7715
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)Z
    .registers 28
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1837
    const/4 v15, 0x1

    .line 1839
    .local v15, "result":Z
    invoke-static/range {p2 .. p2}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    .line 1840
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    const/16 v16, 0x0

    .line 1841
    .local v16, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 1843
    .local v7, "file":Ljava/io/File;
    :try_start_b
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_12} :catch_8b8
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_8b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_12} :catch_8b2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_8af
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_8ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_12} :catch_8a9
    .catchall {:try_start_b .. :try_end_12} :catchall_8a6

    .line 1844
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1845
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1849
    :cond_1f
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_33

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 1851
    :cond_33
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1852
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v22, "policies"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_41} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_41} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_41} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_41} :catch_334
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_41} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_41} :catch_689
    .catchall {:try_start_12 .. :try_end_41} :catchall_71e

    move-result v22

    if-nez v22, :cond_d5

    .line 1854
    if-eqz v17, :cond_49

    .line 1855
    :try_start_46
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_8a0
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_49} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_49} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_49} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_49} :catch_334
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_49} :catch_689
    .catchall {:try_start_46 .. :try_end_49} :catchall_71e

    .line 1858
    :cond_49
    :goto_49
    :try_start_49
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Settings do not start with policies tag: found "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_66} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_66} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_66} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_66} :catch_334
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_66} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_66} :catch_689
    .catchall {:try_start_49 .. :try_end_66} :catchall_71e

    .line 2009
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_66
    move-exception v6

    move-object/from16 v16, v17

    .line 2010
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_69
    const/4 v15, 0x0

    .line 2011
    :try_start_6a
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_8a6

    .line 2027
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .local v8, "i":I
    :goto_a6
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .local v4, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_a6

    .line 1863
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_d5
    const/16 v22, 0x0

    :try_start_d7
    const-string/jumbo v23, "permission-provider"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1864
    .local v13, "permissionProvider":Ljava/lang/String;
    if-eqz v13, :cond_ee

    .line 1865
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 1867
    :cond_ee
    const/16 v22, 0x0

    const-string/jumbo v23, "setup-complete"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1868
    .local v20, "userSetupComplete":Ljava/lang/String;
    if-eqz v20, :cond_115

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_115

    .line 1869
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 1872
    :cond_115
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 1873
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 1874
    .local v11, "outerDepth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 1875
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1876
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 1878
    :cond_138
    :goto_138
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_787

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_154

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_787

    .line 1879
    :cond_154
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_138

    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_138

    .line 1882
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1883
    const-string v22, "admin"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_256

    .line 1884
    const/16 v22, 0x0

    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17f
    .catch Ljava/lang/NullPointerException; {:try_start_d7 .. :try_end_17f} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_17f} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_17f} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_d7 .. :try_end_17f} :catch_334
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_17f} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d7 .. :try_end_17f} :catch_689
    .catchall {:try_start_d7 .. :try_end_17f} :catchall_71e

    move-result-object v10

    .line 1886
    .local v10, "name":Ljava/lang/String;
    :try_start_180
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 1894
    .local v5, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_138

    .line 1896
    const/4 v3, 0x0

    .line 1898
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1899
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1900
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1902
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_138

    .line 1904
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c4
    .catch Ljava/lang/RuntimeException; {:try_start_180 .. :try_end_1c4} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_180 .. :try_end_1c4} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_180 .. :try_end_1c4} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_180 .. :try_end_1c4} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_180 .. :try_end_1c4} :catch_334
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1c4} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_180 .. :try_end_1c4} :catch_689
    .catchall {:try_start_180 .. :try_end_1c4} :catchall_71e

    goto/16 :goto_138

    .line 1907
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v5    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1c6
    move-exception v6

    .line 1908
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1c7
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed loading admin "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e5
    .catch Ljava/lang/NullPointerException; {:try_start_1c7 .. :try_end_1e5} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1e5} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c7 .. :try_end_1e5} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_1c7 .. :try_end_1e5} :catch_334
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1e5} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c7 .. :try_end_1e5} :catch_689
    .catchall {:try_start_1c7 .. :try_end_1e5} :catchall_71e

    goto/16 :goto_138

    .line 2012
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_1e7
    move-exception v6

    move-object/from16 v16, v17

    .line 2013
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_1ea
    const/4 v15, 0x0

    .line 2014
    :try_start_1eb
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catchall {:try_start_1eb .. :try_end_211} :catchall_8a6

    .line 2027
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_227
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_227

    .line 1910
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_256
    :try_start_256
    const-string v22, "failed-password-attempts"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2fc

    .line 1911
    const/16 v22, 0x0

    const-string/jumbo v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_288

    .line 1912
    const/16 v22, 0x0

    const-string/jumbo v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1915
    :cond_288
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_28b
    .catch Ljava/lang/NullPointerException; {:try_start_256 .. :try_end_28b} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_256 .. :try_end_28b} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_256 .. :try_end_28b} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_256 .. :try_end_28b} :catch_334
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_28b} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_256 .. :try_end_28b} :catch_689
    .catchall {:try_start_256 .. :try_end_28b} :catchall_71e

    goto/16 :goto_138

    .line 2015
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_28d
    move-exception v6

    move-object/from16 v16, v17

    .line 2016
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_290
    const/4 v15, 0x0

    .line 2017
    :try_start_291
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b7
    .catchall {:try_start_291 .. :try_end_2b7} :catchall_8a6

    .line 2027
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_2cd
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_2cd

    .line 1916
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_2fc
    :try_start_2fc
    const-string/jumbo v22, "password-owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37c

    .line 1917
    const/16 v22, 0x0

    const-string/jumbo v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_32f

    .line 1918
    const/16 v22, 0x0

    const-string/jumbo v23, "value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1921
    :cond_32f
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_332
    .catch Ljava/lang/NullPointerException; {:try_start_2fc .. :try_end_332} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_2fc .. :try_end_332} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2fc .. :try_end_332} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_2fc .. :try_end_332} :catch_334
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_332} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2fc .. :try_end_332} :catch_689
    .catchall {:try_start_2fc .. :try_end_332} :catchall_71e

    goto/16 :goto_138

    .line 2018
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_334
    move-exception v22

    move-object/from16 v16, v17

    .line 2027
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_337
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_34d
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_34d

    .line 1922
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_37c
    :try_start_37c
    const-string v22, "active-password"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_548

    .line 1923
    const/16 v22, 0x0

    const-string/jumbo v23, "quality"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3ae

    .line 1924
    const/16 v22, 0x0

    const-string/jumbo v23, "quality"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1927
    :cond_3ae
    const/16 v22, 0x0

    const-string v23, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3d2

    .line 1928
    const/16 v22, 0x0

    const-string v23, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1931
    :cond_3d2
    const/16 v22, 0x0

    const-string/jumbo v23, "uppercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_3f8

    .line 1932
    const/16 v22, 0x0

    const-string/jumbo v23, "uppercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1935
    :cond_3f8
    const/16 v22, 0x0

    const-string v23, "lowercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_41c

    .line 1936
    const/16 v22, 0x0

    const-string v23, "lowercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1939
    :cond_41c
    const/16 v22, 0x0

    const-string v23, "letters"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_440

    .line 1940
    const/16 v22, 0x0

    const-string v23, "letters"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1943
    :cond_440
    const/16 v22, 0x0

    const-string v23, "numeric"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_464

    .line 1944
    const/16 v22, 0x0

    const-string v23, "numeric"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1947
    :cond_464
    const/16 v22, 0x0

    const-string/jumbo v23, "symbols"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_48a

    .line 1948
    const/16 v22, 0x0

    const-string/jumbo v23, "symbols"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1951
    :cond_48a
    const/16 v22, 0x0

    const-string v23, "nonletter"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4ae

    .line 1952
    const/16 v22, 0x0

    const-string v23, "nonletter"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1956
    :cond_4ae
    const/16 v22, 0x0

    const-string/jumbo v23, "recoverable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4d4

    .line 1957
    const/16 v22, 0x0

    const-string/jumbo v23, "recoverable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    .line 1961
    :cond_4d4
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4d7
    .catch Ljava/lang/NullPointerException; {:try_start_37c .. :try_end_4d7} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_37c .. :try_end_4d7} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37c .. :try_end_4d7} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_37c .. :try_end_4d7} :catch_334
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_4d7} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37c .. :try_end_4d7} :catch_689
    .catchall {:try_start_37c .. :try_end_4d7} :catchall_71e

    goto/16 :goto_138

    .line 2020
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_4d9
    move-exception v6

    move-object/from16 v16, v17

    .line 2021
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_4dc
    const/4 v15, 0x0

    .line 2022
    :try_start_4dd
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_503
    .catchall {:try_start_4dd .. :try_end_503} :catchall_8a6

    .line 2027
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_519
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_519

    .line 1965
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_548
    :try_start_548
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isSupportFP(I)Z

    move-result v22

    if-eqz v22, :cond_6f8

    const-string v22, "alternative-password"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6f8

    .line 1966
    const/16 v22, 0x0

    const-string/jumbo v23, "quality"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_584

    .line 1967
    const/16 v22, 0x0

    const-string/jumbo v23, "quality"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordQuality:I

    .line 1970
    :cond_584
    const/16 v22, 0x0

    const-string v23, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5a8

    .line 1971
    const/16 v22, 0x0

    const-string v23, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    .line 1974
    :cond_5a8
    const/16 v22, 0x0

    const-string/jumbo v23, "uppercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5ce

    .line 1975
    const/16 v22, 0x0

    const-string/jumbo v23, "uppercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    .line 1978
    :cond_5ce
    const/16 v22, 0x0

    const-string v23, "lowercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5f2

    .line 1979
    const/16 v22, 0x0

    const-string v23, "lowercase"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    .line 1982
    :cond_5f2
    const/16 v22, 0x0

    const-string v23, "letters"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_616

    .line 1983
    const/16 v22, 0x0

    const-string v23, "letters"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    .line 1986
    :cond_616
    const/16 v22, 0x0

    const-string v23, "numeric"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_63a

    .line 1987
    const/16 v22, 0x0

    const-string v23, "numeric"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    .line 1990
    :cond_63a
    const/16 v22, 0x0

    const-string/jumbo v23, "symbols"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_660

    .line 1991
    const/16 v22, 0x0

    const-string/jumbo v23, "symbols"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    .line 1994
    :cond_660
    const/16 v22, 0x0

    const-string v23, "nonletter"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_684

    .line 1995
    const/16 v22, 0x0

    const-string v23, "nonletter"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    .line 1998
    :cond_684
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_687
    .catch Ljava/lang/NullPointerException; {:try_start_548 .. :try_end_687} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_548 .. :try_end_687} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_548 .. :try_end_687} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_548 .. :try_end_687} :catch_334
    .catch Ljava/io/IOException; {:try_start_548 .. :try_end_687} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_548 .. :try_end_687} :catch_689
    .catchall {:try_start_548 .. :try_end_687} :catchall_71e

    goto/16 :goto_138

    .line 2023
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catch_689
    move-exception v6

    move-object/from16 v16, v17

    .line 2024
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_68c
    const/4 v15, 0x0

    .line 2025
    :try_start_68d
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "failed parsing "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b3
    .catchall {:try_start_68d .. :try_end_6b3} :catchall_8a6

    .line 2027
    if-nez v15, :cond_7ce

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_7ce

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_6c9
    if-ltz v8, :cond_7ce

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_6c9

    .line 2001
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_6f8
    :try_start_6f8
    const-string v22, "lock-task-component"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_766

    .line 2002
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_71c
    .catch Ljava/lang/NullPointerException; {:try_start_6f8 .. :try_end_71c} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_6f8 .. :try_end_71c} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f8 .. :try_end_71c} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_6f8 .. :try_end_71c} :catch_334
    .catch Ljava/io/IOException; {:try_start_6f8 .. :try_end_71c} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6f8 .. :try_end_71c} :catch_689
    .catchall {:try_start_6f8 .. :try_end_71c} :catchall_71e

    goto/16 :goto_138

    .line 2027
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    :catchall_71e
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_721
    if-nez v15, :cond_89f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v23, v0

    if-nez v23, :cond_89f

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v8, v23, -0x1

    .restart local v8    # "i":I
    :goto_737
    if-ltz v8, :cond_89f

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_737

    .line 2005
    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "i":I
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_766
    :try_start_766
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown tag: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_785
    .catch Ljava/lang/NullPointerException; {:try_start_766 .. :try_end_785} :catch_66
    .catch Ljava/lang/NumberFormatException; {:try_start_766 .. :try_end_785} :catch_1e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_766 .. :try_end_785} :catch_28d
    .catch Ljava/io/FileNotFoundException; {:try_start_766 .. :try_end_785} :catch_334
    .catch Ljava/io/IOException; {:try_start_766 .. :try_end_785} :catch_4d9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_766 .. :try_end_785} :catch_689
    .catchall {:try_start_766 .. :try_end_785} :catchall_71e

    goto/16 :goto_138

    .line 2027
    :cond_787
    if-nez v15, :cond_8bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCheckLoadSettingsLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_8bb

    .line 2028
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v8, v22, -0x1

    .restart local v8    # "i":I
    :goto_79d
    if-ltz v8, :cond_7cc

    .line 2029
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2030
    .restart local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2028
    add-int/lit8 v8, v8, -0x1

    goto :goto_79d

    .end local v4    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_7cc
    move-object/from16 v16, v17

    .line 2036
    .end local v8    # "i":I
    .end local v11    # "outerDepth":I
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "permissionProvider":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "userSetupComplete":Ljava/lang/String;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :cond_7ce
    :goto_7ce
    if-eqz v16, :cond_7d3

    .line 2037
    :try_start_7d0
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7d3
    .catch Ljava/io/IOException; {:try_start_7d0 .. :try_end_7d3} :catch_8a3

    .line 2044
    :cond_7d3
    :goto_7d3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2050
    new-instance v21, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2051
    .local v21, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v22

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_88c

    .line 2052
    const-string v22, "DevicePolicyManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Active password quality 0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not match actual quality 0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    .line 2058
    .local v14, "persona":Landroid/os/PersonaManager;
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v22

    if-nez v22, :cond_88c

    .line 2060
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 2061
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 2062
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 2063
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 2064
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 2065
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 2066
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 2067
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 2071
    .end local v14    # "persona":Landroid/os/PersonaManager;
    :cond_88c
    invoke-virtual/range {p0 .. p1}, validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2072
    invoke-virtual/range {p0 .. p1}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2073
    invoke-virtual/range {p0 .. p1}, updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2075
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, initiateTempList(ILcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2078
    return v15

    .line 2028
    .end local v21    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_89f
    throw v22

    .line 1857
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :catch_8a0
    move-exception v22

    goto/16 :goto_49

    .line 2039
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_8a3
    move-exception v22

    goto/16 :goto_7d3

    .line 2027
    :catchall_8a6
    move-exception v22

    goto/16 :goto_721

    .line 2023
    :catch_8a9
    move-exception v6

    goto/16 :goto_68c

    .line 2020
    :catch_8ac
    move-exception v6

    goto/16 :goto_4dc

    .line 2018
    :catch_8af
    move-exception v22

    goto/16 :goto_337

    .line 2015
    :catch_8b2
    move-exception v6

    goto/16 :goto_290

    .line 2012
    :catch_8b5
    move-exception v6

    goto/16 :goto_1ea

    .line 2009
    :catch_8b8
    move-exception v6

    goto/16 :goto_69

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "outerDepth":I
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permissionProvider":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "userSetupComplete":Ljava/lang/String;
    :cond_8bb
    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_7ce
.end method

.method private lockNowUnchecked()V
    .registers 8

    .prologue
    .line 3787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3790
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0}, getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v3, v6}, Landroid/os/IPowerManager;->goToSleep(JII)V

    .line 3793
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 3794
    invoke-direct {p0}, getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_28
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 3797
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3799
    :goto_27
    return-void

    .line 3795
    :catch_28
    move-exception v2

    .line 3797
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_2d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userHandle"    # I

    .prologue
    .line 1676
    if-nez p0, :cond_27

    const-string v0, "/data/system/device_policies.xml"

    .line 1680
    .local v0, "base":Ljava/lang/String;
    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1676
    .end local v0    # "base":Ljava/lang/String;
    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 6720
    const/4 v3, 0x1

    .line 6722
    .local v3, "result":Z
    if-nez p2, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6727
    .local v0, "base_source":Ljava/lang/String;
    :goto_16
    if-nez p2, :cond_56

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6733
    .local v1, "base_target":Ljava/lang/String;
    :goto_2b
    :try_start_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6734
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6736
    .local v5, "targetFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 6737
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 6738
    :cond_44
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_64

    .line 6745
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    :cond_47
    :goto_47
    return v3

    .line 6722
    .end local v0    # "base_source":Ljava/lang/String;
    .end local v1    # "base_target":Ljava/lang/String;
    :cond_48
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 6727
    .restart local v0    # "base_source":Ljava/lang/String;
    :cond_56
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 6740
    .restart local v1    # "base_target":Ljava/lang/String;
    :catch_64
    move-exception v2

    .line 6741
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 6742
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "moveFile() : Cannot move file"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 3855
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 3856
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private removePackageFromHarmonyEAS(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 6697
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 6699
    :try_start_3
    sget-object v0, mHM:Landroid/content/IHarmonyEAS;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/IHarmonyEAS;->removeInstallationPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    .line 6702
    :goto_9
    return-void

    .line 6700
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private resetAppPolicies(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 6690
    invoke-virtual {p0, p1}, manageBlockedApplications(I)V

    .line 6691
    invoke-virtual {p0, p1}, manageAllowThirdPartyApps(I)V

    .line 6692
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, handleAllowUnsignedApp(ZI)V

    .line 6693
    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 4554
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4555
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 4556
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4557
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    .line 4558
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1d
    return-void

    .line 4555
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4563
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    invoke-direct {p0, v4, v4}, saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4567
    if-nez p2, :cond_6

    .line 4568
    const-string p2, ""

    .line 4570
    :cond_6
    if-nez p1, :cond_a

    .line 4571
    const-string p1, ""

    .line 4574
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4575
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4576
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 4577
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_20

    .line 4579
    const/4 v4, 0x1

    :try_start_1a
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_66

    move-result v1

    .line 4582
    :cond_20
    :goto_20
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 4583
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4585
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4586
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_54

    .line 4587
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :goto_53
    return-void

    .line 4590
    :cond_54
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4591
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4592
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    .line 4580
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_66
    move-exception v4

    goto :goto_20
.end method

.method private saveSettingsLocked(IZ)V
    .registers 20
    .param p1, "userHandle"    # I
    .param p2, "isBTChanged"    # Z

    .prologue
    .line 1684
    invoke-virtual/range {p0 .. p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v10

    .line 1685
    .local v10, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static/range {p1 .. p1}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 1686
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v11, 0x0

    .line 1688
    .local v11, "stream":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_252

    .line 1689
    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .local v12, "stream":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1690
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v13, "utf-8"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1691
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1693
    const/4 v13, 0x0

    const-string/jumbo v14, "policies"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1694
    iget-object v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v13, :cond_3f

    .line 1695
    const/4 v13, 0x0

    const-string/jumbo v14, "permission-provider"

    iget-object v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1698
    :cond_3f
    iget-boolean v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v13, :cond_4f

    .line 1699
    const/4 v13, 0x0

    const-string/jumbo v14, "setup-complete"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1703
    :cond_4f
    iget-object v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1704
    .local v2, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_56
    if-ge v6, v2, :cond_84

    .line 1705
    iget-object v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1706
    .local v3, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_81

    .line 1707
    const/4 v13, 0x0

    const-string v14, "admin"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1708
    const/4 v13, 0x0

    const-string v14, "name"

    iget-object v15, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v15}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1709
    invoke-virtual {v3, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1710
    const/4 v13, 0x0

    const-string v14, "admin"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1704
    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 1714
    .end local v3    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_84
    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v13, :cond_a3

    .line 1715
    const/4 v13, 0x0

    const-string/jumbo v14, "password-owner"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1716
    const/4 v13, 0x0

    const-string/jumbo v14, "value"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1717
    const/4 v13, 0x0

    const-string/jumbo v14, "password-owner"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1720
    :cond_a3
    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v13, :cond_c0

    .line 1721
    const/4 v13, 0x0

    const-string v14, "failed-password-attempts"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1722
    const/4 v13, 0x0

    const-string/jumbo v14, "value"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1723
    const/4 v13, 0x0

    const-string v14, "failed-password-attempts"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1726
    :cond_c0
    if-nez p1, :cond_dc

    .line 1727
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v8

    .line 1728
    .local v8, "maxFailedAllowed":I
    const/4 v13, 0x0

    const-string/jumbo v14, "security.ode.maxattempts"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1731
    .end local v8    # "maxFailedAllowed":I
    :cond_dc
    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v13, :cond_100

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v13, :cond_100

    iget-boolean v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    if-eqz v13, :cond_17c

    .line 1739
    :cond_100
    const/4 v13, 0x0

    const-string v14, "active-password"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1740
    const/4 v13, 0x0

    const-string/jumbo v14, "quality"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1741
    const/4 v13, 0x0

    const-string v14, "length"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1742
    const/4 v13, 0x0

    const-string/jumbo v14, "uppercase"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1743
    const/4 v13, 0x0

    const-string v14, "lowercase"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1744
    const/4 v13, 0x0

    const-string v14, "letters"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1745
    const/4 v13, 0x0

    const-string v14, "numeric"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1747
    const/4 v13, 0x0

    const-string/jumbo v14, "symbols"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1748
    const/4 v13, 0x0

    const-string v14, "nonletter"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1750
    const/4 v13, 0x0

    const-string/jumbo v14, "recoverable"

    iget-boolean v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1752
    const/4 v13, 0x0

    const-string v14, "active-password"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1756
    :cond_17c
    invoke-direct/range {p0 .. p1}, isSupportFP(I)Z

    move-result v13

    if-eqz v13, :cond_211

    .line 1757
    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordQuality:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    if-nez v13, :cond_1a2

    iget v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    if-eqz v13, :cond_211

    .line 1761
    :cond_1a2
    const/4 v13, 0x0

    const-string v14, "alternative-password"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1762
    const/4 v13, 0x0

    const-string/jumbo v14, "quality"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordQuality:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1763
    const/4 v13, 0x0

    const-string v14, "length"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    const/4 v13, 0x0

    const-string/jumbo v14, "uppercase"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1765
    const/4 v13, 0x0

    const-string v14, "lowercase"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1766
    const/4 v13, 0x0

    const-string v14, "letters"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    const/4 v13, 0x0

    const-string v14, "numeric"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1768
    const/4 v13, 0x0

    const-string/jumbo v14, "symbols"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1769
    const/4 v13, 0x0

    const-string v14, "nonletter"

    iget v15, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1770
    const/4 v13, 0x0

    const-string v14, "alternative-password"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1775
    :cond_211
    const/4 v6, 0x0

    :goto_212
    iget-object v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_237

    .line 1776
    iget-object v13, v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1777
    .local v4, "component":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "lock-task-component"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1778
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v9, v13, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1779
    const/4 v13, 0x0

    const-string v14, "lock-task-component"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1775
    add-int/lit8 v6, v6, 0x1

    goto :goto_212

    .line 1782
    .end local v4    # "component":Ljava/lang/String;
    :cond_237
    const/4 v13, 0x0

    const-string/jumbo v14, "policies"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1784
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1786
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 1787
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1789
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1790
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1792
    invoke-direct/range {p0 .. p2}, sendChangedNotification(IZ)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_250} :catch_25e

    move-object v11, v12

    .line 1803
    .end local v2    # "N":I
    .end local v6    # "i":I
    .end local v9    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .restart local v11    # "stream":Ljava/io/FileOutputStream;
    :goto_251
    return-void

    .line 1793
    :catch_252
    move-exception v5

    .line 1795
    .local v5, "e":Ljava/io/IOException;
    :goto_253
    if-eqz v11, :cond_258

    .line 1796
    :try_start_255
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_258} :catch_25c

    .line 1801
    :cond_258
    :goto_258
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_251

    .line 1798
    :catch_25c
    move-exception v13

    goto :goto_258

    .line 1793
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "stream":Ljava/io/FileOutputStream;
    .restart local v12    # "stream":Ljava/io/FileOutputStream;
    :catch_25e
    move-exception v5

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileOutputStream;
    .restart local v11    # "stream":Ljava/io/FileOutputStream;
    goto :goto_253
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1567
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1568
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1569
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1570
    .local v1, "id":I
    invoke-virtual {p0, p1, p2, v1}, sendAdminCommandLocked(Ljava/lang/String;II)V

    goto :goto_a

    .line 1572
    .end local v1    # "id":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    return-void
.end method

.method private sendChangedNotification(IZ)V
    .registers 9
    .param p1, "userHandle"    # I
    .param p2, "isBTChanged"    # Z

    .prologue
    .line 1810
    iget-boolean v3, p0, mNotifyChanges:Z

    if-nez v3, :cond_5

    .line 1833
    :goto_4
    return-void

    .line 1814
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1818
    const-string/jumbo v3, "userhandle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendChangedNotification : isBTChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    if-eqz p2, :cond_37

    .line 1826
    const-string v3, "isBTChanged"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1827
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1829
    .local v0, "ident":J
    :try_start_3b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_44

    .line 1831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_44
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .registers 20
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    .prologue
    .line 2373
    iget-object v12, p0, mContext:Landroid/content/Context;

    const-string v13, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    move/from16 v0, p3

    invoke-direct {p0, v0}, enforceCrossUserPermission(I)V

    .line 2377
    move/from16 v0, p3

    invoke-virtual {p0, v0}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v9

    .line 2378
    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .line 2379
    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_38

    .line 2380
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad admin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2385
    :cond_38
    const-string/jumbo v12, "restriction_policy"

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2387
    .local v11, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v11, :cond_57

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_57

    .line 2390
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Admin cannot be activated"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2395
    :cond_57
    monitor-enter p0

    .line 2396
    :try_start_58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_75

    move-result-wide v4

    .line 2398
    .local v4, "ident":J
    if-nez p2, :cond_78

    :try_start_5e
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v12

    if-eqz v12, :cond_78

    .line 2400
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Admin is already added"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_70

    .line 2423
    :catchall_70
    move-exception v12

    :try_start_71
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 2425
    .end local v4    # "ident":J
    :catchall_75
    move-exception v12

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_75

    throw v12

    .line 2402
    .restart local v4    # "ident":J
    :cond_78
    :try_start_78
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 2403
    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    const/4 v10, -0x1

    .line 2405
    .local v10, "replaceIndex":I
    iget-object v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2406
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8c
    if-ge v3, v2, :cond_a5

    .line 2407
    iget-object v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2408
    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 2409
    move v10, v3

    .line 2413
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_a5
    const/4 v12, -0x1

    if-ne v10, v12, :cond_cc

    .line 2414
    iget-object v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p3

    invoke-direct {p0, v12, v0}, enableIfNecessary(Ljava/lang/String;I)V

    .line 2419
    :goto_b6
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, saveSettingsLocked(IZ)V

    .line 2420
    const-string v12, "android.app.action.DEVICE_ADMIN_ENABLED"

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v12, v0, v13}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_c4
    .catchall {:try_start_78 .. :try_end_c4} :catchall_70

    .line 2423
    :try_start_c4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2425
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_75

    .line 2426
    return-void

    .line 2406
    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_c9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 2417
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_cc
    :try_start_cc
    iget-object v12, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_70

    goto :goto_b6
.end method

.method private setEncryptionRequested(Z)V
    .registers 2
    .param p1, "encrypt"    # Z

    .prologue
    .line 4735
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .registers 16
    .param p1, "userHandle"    # I

    .prologue
    .line 4369
    iget-object v12, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 4370
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 4371
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 4372
    .local v7, "profileId":I
    invoke-virtual {p0, v7}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4373
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4374
    .local v0, "N":I
    if-lez v0, :cond_54

    .line 4375
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    if-ge v4, v0, :cond_54

    .line 4376
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4377
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 4378
    iget-wide v10, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 4379
    .local v10, "timeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v2, v10, v12

    .line 4380
    .local v2, "expiration":J
    :goto_4c
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 4375
    .end local v2    # "expiration":J
    .end local v10    # "timeout":J
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 4379
    .restart local v10    # "timeout":J
    :cond_51
    const-wide/16 v2, 0x0

    goto :goto_4c

    .line 4384
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v10    # "timeout":J
    :cond_54
    const/4 v12, 0x0

    invoke-direct {p0, v7, v12}, saveSettingsLocked(IZ)V

    goto :goto_a

    .line 4386
    .end local v0    # "N":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_59
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .registers 8
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 4787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4789
    .local v2, "ident":J
    :try_start_4
    invoke-direct {p0}, getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f
    .catchall {:try_start_4 .. :try_end_b} :catchall_1b

    .line 4793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4795
    :goto_e
    return-void

    .line 4790
    :catch_f
    move-exception v0

    .line 4791
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 4793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1b
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static validateQualityConstant(I)V
    .registers 4
    .param p0, "quality"    # I

    .prologue
    .line 2082
    sparse-switch p0, :sswitch_data_22

    .line 2097
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2095
    :sswitch_20
    return-void

    .line 2082
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x9000 -> :sswitch_20
        0x9100 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x30000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
        0x61000 -> :sswitch_20
        0x90000 -> :sswitch_20
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(IILjava/lang/String;)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 4125
    if-nez p2, :cond_6

    .line 4126
    invoke-virtual {p0, p1, p3}, wipeDataLocked(ILjava/lang/String;)V

    .line 4156
    :goto_5
    return-void

    .line 4128
    :cond_6
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method private wipeDeviceOrUserLocked(IILjava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)V
    .registers 8
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .prologue
    .line 4160
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Overloaded wipeDeviceOrUserLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    if-nez p2, :cond_63

    .line 4166
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value of flags is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    iget-object v0, p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.anmane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 4169
    :cond_5b
    invoke-virtual {p0, p1, p3}, wipeDataLockedFor3LM(ILjava/lang/String;)V

    .line 4201
    :goto_5e
    return-void

    .line 4171
    :cond_5f
    invoke-virtual {p0, p1, p3}, wipeDataLocked(ILjava/lang/String;)V

    goto :goto_5e

    .line 4173
    :cond_63
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 18
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    .line 6974
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 6975
    .local v4, "callingUserId":I
    monitor-enter p0

    .line 6976
    if-nez p1, :cond_12

    .line 6977
    :try_start_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6997
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1

    .line 6979
    :cond_12
    const/4 v1, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6981
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6982
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_f

    move-result-wide v12

    .line 6984
    .local v12, "id":J
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_33

    .line 6985
    :try_start_22
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V

    .line 6988
    :cond_33
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_4a

    .line 6989
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    move-object/from16 v6, p2

    move v10, v4

    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4a} :catch_4f
    .catchall {:try_start_22 .. :try_end_4a} :catchall_54

    .line 6995
    :cond_4a
    :try_start_4a
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    .line 6997
    :goto_4d
    monitor-exit p0

    .line 6998
    return-void

    .line 6992
    :catch_4f
    move-exception v1

    .line 6995
    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    goto :goto_4d

    :catchall_54
    move-exception v1

    invoke-static {v12, v13}, restoreCallingIdentity(J)V

    throw v1
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_f
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2818
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2819
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2821
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2822
    const/4 v6, -0x1

    :try_start_8
    invoke-virtual {p0, p1, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2824
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v6, :cond_17

    .line 2825
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2827
    :cond_17
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2828
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 2829
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2830
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_36

    .line 2831
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :try_start_28
    invoke-direct {p0, v4, v6}, saveSettingsLocked(IZ)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_39

    move-object v1, v2

    .line 2833
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_36

    .line 2835
    if-eqz v1, :cond_35

    .line 2836
    iget-object v5, p0, mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2837
    const/4 v5, 0x1

    .line 2840
    :cond_35
    return v5

    .line 2833
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_36
    move-exception v5

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_39
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_37
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 6816
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 6818
    .local v3, "userHandle":I
    monitor-enter p0

    .line 6819
    if-nez p1, :cond_12

    .line 6820
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6833
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 6822
    :cond_12
    const/4 v4, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6824
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 6825
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_f

    move-result-wide v0

    .line 6827
    .local v0, "id":J
    :try_start_1e
    invoke-interface {v2, p2, p3, v3}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_26
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    .line 6831
    :try_start_21
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 6833
    :goto_24
    monitor-exit p0

    .line 6834
    return-void

    .line 6828
    :catch_26
    move-exception v4

    .line 6831
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    goto :goto_24

    :catchall_2b
    move-exception v4

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v4
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_f
.end method

.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 5961
    monitor-enter p0

    .line 5962
    if-nez p1, :cond_e

    .line 5963
    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5977
    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    .line 5965
    :cond_e
    const/16 v5, 0xa

    :try_start_10
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5968
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_b

    move-result-wide v2

    .line 5970
    .local v2, "ident":J
    :try_start_18
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5971
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 5973
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    move-result v5

    .line 5975
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v5

    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :catchall_2c
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_b
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7002
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 7003
    if-nez p1, :cond_12

    .line 7004
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7021
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 7006
    :cond_12
    const/4 v4, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7007
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 7008
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_f

    move-result-wide v2

    .line 7010
    .local v2, "id":J
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V

    .line 7014
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_32
    .catchall {:try_start_1e .. :try_end_2d} :catchall_37

    .line 7019
    :try_start_2d
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 7021
    :goto_30
    monitor-exit p0

    .line 7022
    return-void

    .line 7016
    :catch_32
    move-exception v4

    .line 7019
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    goto :goto_30

    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v4
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_f
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5052
    if-nez p1, :cond_b

    .line 5053
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "packageName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5056
    :cond_b
    :try_start_b
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 5057
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_2b

    .line 5058
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Invalid packageName"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_24} :catch_24

    .line 5060
    .end local v1    # "uid":I
    :catch_24
    move-exception v0

    .line 5061
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 5063
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_2b
    invoke-virtual {p0, p1}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 5064
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "clearDeviceOwner can only be called by the device owner"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5066
    :cond_39
    monitor-enter p0

    .line 5067
    :try_start_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_5f

    move-result-wide v2

    .line 5069
    .local v2, "ident":J
    :try_start_3e
    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v4}, clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 5070
    iget-object v4, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v4, :cond_55

    .line 5071
    iget-object v4, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    .line 5072
    iget-object v4, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_5a

    .line 5075
    :cond_55
    :try_start_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5077
    monitor-exit p0

    .line 5078
    return-void

    .line 5075
    :catchall_5a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5077
    .end local v2    # "ident":J
    :catchall_5f
    move-exception v4

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_5f

    throw v4
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6838
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 6840
    .local v3, "userHandle":I
    monitor-enter p0

    .line 6841
    if-nez p1, :cond_12

    .line 6842
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6855
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 6844
    :cond_12
    const/4 v4, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6846
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 6847
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_f

    move-result-wide v0

    .line 6849
    .local v0, "id":J
    :try_start_1e
    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_26
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    .line 6853
    :try_start_21
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 6855
    :goto_24
    monitor-exit p0

    .line 6856
    return-void

    .line 6850
    :catch_26
    move-exception v4

    .line 6853
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    goto :goto_24

    :catchall_2b
    move-exception v4

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v4
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_f
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5132
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 5150
    :goto_4
    return-void

    .line 5135
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 5137
    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5138
    monitor-enter p0

    .line 5139
    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2c

    move-result-wide v2

    .line 5141
    .local v2, "ident":J
    :try_start_12
    invoke-direct {p0, v0}, clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 5142
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_27

    .line 5143
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 5144
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2f

    .line 5147
    :cond_27
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5149
    monitor-exit p0

    goto :goto_4

    .end local v2    # "ident":J
    :catchall_2c
    move-exception v1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    throw v1

    .line 5147
    .restart local v2    # "ident":J
    :catchall_2f
    move-exception v1

    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2c
.end method

.method public copyAlternativeToActivePasswordState(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 4239
    invoke-direct {p0, p1}, isSupportFP(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4260
    :goto_6
    return-void

    .line 4240
    :cond_7
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 4241
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 4244
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4245
    :try_start_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_44

    move-result-wide v0

    .line 4247
    .local v0, "ident":J
    :try_start_1b
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordQuality:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 4248
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 4249
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 4250
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 4251
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 4252
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 4253
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 4254
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 4255
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, saveSettingsLocked(IZ)V
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_47

    .line 4257
    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4259
    monitor-exit p0

    goto :goto_6

    .end local v0    # "ident":J
    :catchall_44
    move-exception v3

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v3

    .line 4257
    .restart local v0    # "ident":J
    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_44
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    .line 7385
    invoke-virtual {p0, p1, p2}, createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 7386
    .local v6, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7388
    .local v2, "id":J
    :try_start_8
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 7389
    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 7390
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_48

    move-result-object v0

    .line 7394
    .local v0, "activityManager":Landroid/app/IActivityManager;
    :try_start_14
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_25

    .line 7395
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 7399
    :cond_25
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2c} :catch_3f
    .catchall {:try_start_14 .. :try_end_2c} :catchall_48

    .line 7404
    :goto_2c
    const/4 v7, 0x1

    :try_start_2d
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-direct {p0, p4, v7, v8, p5}, setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    .line 7405
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, p4, p3, v7}, setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_48

    .line 7408
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    return-object v6

    .line 7400
    :catch_3f
    move-exception v1

    .line 7401
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to make remote calls for configureUser"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_2c

    .line 7408
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    :catchall_48
    move-exception v7

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v7
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 7363
    monitor-enter p0

    .line 7364
    if-nez p1, :cond_e

    .line 7365
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7379
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 7367
    :cond_e
    const/4 v3, -0x2

    :try_start_f
    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_b

    move-result-wide v0

    .line 7371
    .local v0, "id":J
    :try_start_16
    iget-object v3, p0, mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 7372
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_28

    .line 7373
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_2e

    move-result-object v3

    .line 7377
    :try_start_23
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    monitor-exit p0

    :goto_27
    return-object v3

    .line 7375
    :cond_28
    const/4 v3, 0x0

    .line 7377
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_27

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2e
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_b
.end method

.method public deleteBackupFile(Ljava/lang/String;I)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 6706
    if-nez p2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6711
    .local v0, "base_target":Ljava/lang/String;
    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6712
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 6713
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_32

    .line 6717
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_23
    :goto_23
    return-void

    .line 6706
    .end local v0    # "base_target":Ljava/lang/String;
    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 6714
    .restart local v0    # "base_target":Ljava/lang/String;
    :catch_32
    move-exception v2

    goto :goto_23
.end method

.method disableThirdPartyApps(ZI)V
    .registers 18
    .param p1, "disableOnlyEnabledByPolicy"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 6260
    move/from16 v0, p2

    invoke-virtual {p0, v0}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 6262
    .local v12, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v14, p0, allowLock:Ljava/lang/Object;

    monitor-enter v14

    .line 6263
    if-eqz p1, :cond_5b

    .line 6266
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 6267
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 6268
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 6269
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6270
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_36
    .catchall {:try_start_b .. :try_end_26} :catchall_58

    move-result v3

    if-nez v3, :cond_32

    .line 6273
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2b
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_32} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_36
    .catchall {:try_start_2b .. :try_end_32} :catchall_58

    .line 6279
    :cond_32
    :goto_32
    :try_start_32
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_58

    goto :goto_17

    .line 6281
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_36
    move-exception v9

    .line 6282
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_37
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested to disable for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    monitor-exit v14
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_58

    .line 6306
    return-void

    .line 6274
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_53
    move-exception v9

    .line 6275
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_54
    invoke-direct {p0, v2}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_36
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_32

    .line 6305
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_58
    move-exception v3

    :try_start_59
    monitor-exit v14
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v3

    .line 6286
    :cond_5b
    :try_start_5b
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 6287
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 6288
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    sget-object v3, mHM:Landroid/content/IHarmonyEAS;

    if-eqz v3, :cond_51

    .line 6289
    sget-object v3, mHM:Landroid/content/IHarmonyEAS;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 6291
    .local v13, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_74
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_80} :catch_90
    .catchall {:try_start_5b .. :try_end_80} :catchall_58

    .line 6294
    .local v4, "app":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_82
    const-string v8, "DevicePolicyManager"

    move-object v3, v1

    move/from16 v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_8a} :catch_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8a} :catch_90
    .catchall {:try_start_82 .. :try_end_8a} :catchall_58

    goto :goto_74

    .line 6295
    :catch_8b
    move-exception v9

    .line 6296
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_8c
    invoke-direct {p0, v4}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_8f} :catch_90
    .catchall {:try_start_8c .. :try_end_8f} :catchall_58

    goto :goto_74

    .line 6301
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "app":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_90
    move-exception v9

    .line 6302
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_91
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested to disable for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_58

    goto :goto_51
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5359
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    .line 5362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5392
    :goto_32
    return-void

    .line 5368
    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 5370
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 5371
    :try_start_39
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5373
    iget-object v7, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 5374
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_45
    if-ge v5, v6, :cond_bd

    .line 5375
    iget-object v7, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 5376
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5377
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5378
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_76
    if-ge v2, v0, :cond_a1

    .line 5379
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5380
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_9e

    .line 5381
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5382
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5383
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 5378
    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 5387
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_a1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5388
    const-string v7, "  mActivePasswordQuality="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5389
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5374
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 5391
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_bd
    monitor-exit p0

    goto/16 :goto_32

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_c0
    move-exception v7

    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_39 .. :try_end_c2} :catchall_c0

    throw v7
.end method

.method enableAllBlockedListApps(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    .line 6444
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    .line 6446
    .local v8, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 6448
    .local v7, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6450
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :goto_10
    :try_start_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 6451
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_2f

    .line 6454
    .local v1, "s":Ljava/lang/String;
    :try_start_1c
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 6455
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2f

    .line 6460
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_10

    .line 6462
    .end local v1    # "s":Ljava/lang/String;
    :catch_2f
    move-exception v6

    .line 6463
    .local v6, "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device admin requested to enable blocked list for user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6465
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_48
    return-void

    .line 6457
    .restart local v1    # "s":Ljava/lang/String;
    :catch_49
    move-exception v2

    goto :goto_2b
.end method

.method enableAllThirdPartyApps(I)V
    .registers 16
    .param p1, "userHandle"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 6309
    iget-object v12, p0, allowLock:Ljava/lang/Object;

    monitor-enter v12

    .line 6311
    :try_start_5
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 6312
    sget-object v2, mHM:Landroid/content/IHarmonyEAS;

    if-eqz v2, :cond_66

    .line 6314
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6316
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    sget-object v2, mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 6318
    .local v10, "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, getAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 6319
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 6320
    .local v11, "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_39} :catch_4d
    .catchall {:try_start_5 .. :try_end_39} :catchall_90

    .line 6322
    .local v1, "unknown":Ljava/lang/String;
    :try_start_39
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2d

    .line 6323
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_47} :catch_4d
    .catchall {:try_start_39 .. :try_end_47} :catchall_90

    goto :goto_2d

    .line 6325
    :catch_48
    move-exception v8

    .line 6326
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_49
    invoke-direct {p0, v1}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_90

    goto :goto_2d

    .line 6343
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "unknown":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4d
    move-exception v8

    .line 6344
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad device admin requested to enable for user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6346
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_66
    monitor-exit v12
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_90

    .line 6347
    return-void

    .line 6329
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_68
    :try_start_68
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6331
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "unknownList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7b} :catch_4d
    .catchall {:try_start_68 .. :try_end_7b} :catchall_90

    .line 6334
    .local v3, "app":Ljava/lang/String;
    :try_start_7b
    invoke-interface {v0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_6f

    .line 6335
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "DevicePolicyManager"

    move-object v2, v0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_8a} :catch_8b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8a} :catch_4d
    .catchall {:try_start_7b .. :try_end_8a} :catchall_90

    goto :goto_6f

    .line 6337
    :catch_8b
    move-exception v8

    .line 6338
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8c
    invoke-direct {p0, v3}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_8f} :catch_4d
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_6f

    .line 6346
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "app":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "thirdPartyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_90
    move-exception v2

    :try_start_91
    monitor-exit v12
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v2
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7611
    monitor-enter p0

    .line 7612
    if-nez p1, :cond_e

    .line 7613
    :try_start_3
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 7651
    :catchall_b
    move-exception v7

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v7

    .line 7618
    :cond_e
    const/4 v7, -0x1

    :try_start_f
    invoke-virtual {p0, p1, v7}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7620
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 7621
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_b

    move-result-wide v0

    .line 7629
    .local v0, "id":J
    :try_start_1a
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 7630
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 7633
    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_2a

    .line 7634
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 7637
    :cond_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 7638
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p2, v7}, isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 7639
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only system apps can be enabled this way."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_3e} :catch_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_63

    .line 7645
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_3e
    move-exception v4

    .line 7647
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3f
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_63

    .line 7649
    :try_start_57
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 7651
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_b

    .line 7652
    return-void

    .line 7643
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_5c
    :try_start_5c
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5f} :catch_3e
    .catchall {:try_start_5c .. :try_end_5f} :catchall_63

    .line 7649
    :try_start_5f
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    goto :goto_5a

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catchall_63
    move-exception v7

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v7
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_b
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .registers 19
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7656
    monitor-enter p0

    .line 7657
    if-nez p1, :cond_e

    .line 7658
    :try_start_3
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "ComponentName is null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 7708
    :catchall_b
    move-exception v13

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v13

    .line 7663
    :cond_e
    const/4 v13, -0x1

    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7665
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 7666
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    move-result-wide v6

    .line 7669
    .local v6, "id":J
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 7670
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 7673
    .local v10, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v10, :cond_30

    .line 7674
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 7677
    :cond_30
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 7678
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v13, v14, v15}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 7684
    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 7685
    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_a8

    .line 7686
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 7687
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_52

    .line 7689
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v14}, isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_99

    .line 7690
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only system apps can be enabled this way."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_78} :catch_78
    .catchall {:try_start_1e .. :try_end_78} :catchall_a3

    .line 7701
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catch_78
    move-exception v3

    .line 7703
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_79
    const-string v13, "DevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to resolve intent for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_79 .. :try_end_93} :catchall_a3

    .line 7704
    const/4 v8, 0x0

    .line 7706
    :try_start_94
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_b

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_98
    return v8

    .line 7695
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_99
    add-int/lit8 v8, v8, 0x1

    .line 7696
    :try_start_9b
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v13, v12}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a2} :catch_78
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a3

    goto :goto_52

    .line 7706
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catchall_a3
    move-exception v13

    :try_start_a4
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    throw v13

    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_a8
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_b

    goto :goto_98
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 3808
    if-nez p1, :cond_b

    .line 3809
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    :goto_a
    return-void

    .line 3811
    :cond_b
    monitor-enter p0

    .line 3812
    const/4 v0, -0x1

    :try_start_d
    invoke-virtual {p0, p1, v0}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3813
    monitor-exit p0

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .registers 14
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    .line 1625
    iget-boolean v7, p0, mHasFeature:Z

    if-nez v7, :cond_7

    move-object v7, v8

    .line 1671
    :goto_6
    return-object v7

    .line 1628
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 1629
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1630
    .local v6, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1631
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v9, 0x8080

    invoke-virtual {v7, v6, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1635
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_d8

    .line 1639
    :cond_27
    :try_start_27
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1640
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1641
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_46} :catch_9c

    move-result v7

    if-eqz v7, :cond_33

    .line 1643
    :try_start_49
    new-instance v7, Landroid/app/admin/DeviceAdminInfo;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_9c

    goto :goto_6

    .line 1644
    :catch_51
    move-exception v0

    .line 1645
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_52
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1647
    goto :goto_6

    .line 1648
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_76
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_99} :catch_9c

    move-object v7, v8

    .line 1651
    goto/16 :goto_6

    .line 1655
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_9c
    move-exception v5

    .line 1656
    .local v5, "re":Landroid/os/RemoteException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad device admin requested for user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_bf
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown admin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1663
    :cond_d8
    :try_start_d8
    new-instance v9, Landroid/app/admin/DeviceAdminInfo;

    iget-object v10, p0, mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v10, v7}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_e6} :catch_e9
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e6} :catch_10f

    move-object v7, v9

    goto/16 :goto_6

    .line 1664
    :catch_e9
    move-exception v0

    .line 1665
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1667
    goto/16 :goto_6

    .line 1668
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_10f
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad device admin requested for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v8

    .line 1671
    goto/16 :goto_6
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 7741
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 7746
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 7747
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_9

    .line 7748
    const/4 v5, 0x0

    .line 7758
    :goto_8
    return-object v5

    .line 7750
    :cond_9
    monitor-enter p0

    .line 7751
    :try_start_a
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 7752
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7753
    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 7754
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_2c

    .line 7755
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7756
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 7754
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 7758
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_8

    .line 7759
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3a
    move-exception v5

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1365
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1367
    .local v1, "userHandle":I
    invoke-virtual {p0, p1, p2, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    return-object v2
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, -0x2

    const/16 v9, 0x3e8

    const/4 v8, 0x0

    .line 1374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1376
    .local v1, "callingUid":I
    if-eq v1, v9, :cond_f

    .line 1377
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1381
    :cond_f
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1383
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    if-eqz p1, :cond_ac

    .line 1387
    iget-object v7, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1388
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_3d

    .line 1389
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1393
    :cond_3d
    if-ne v1, v9, :cond_7f

    .line 1394
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    :cond_42
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1424
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    .line 1425
    .local v4, "ownsDevice":Z
    invoke-virtual {p0, p3}, getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_ce

    invoke-virtual {p0, p3}, getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    const/4 v5, 0x1

    .line 1429
    .local v5, "ownsProfile":Z
    :goto_7a
    if-ne p2, v10, :cond_d0

    .line 1430
    if-eqz v4, :cond_49

    .line 1454
    :cond_7e
    :goto_7e
    return-object v0

    .line 1395
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_7f
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-eq v7, v1, :cond_42

    .line 1396
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1407
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_ac
    iget-object v7, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_b2
    :goto_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1409
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v1, v9, :cond_c4

    .line 1410
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 1411
    :cond_c4
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-ne v7, v1, :cond_b2

    .line 1412
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .restart local v4    # "ownsDevice":Z
    :cond_ce
    move v5, v8

    .line 1425
    goto :goto_7a

    .line 1433
    .restart local v5    # "ownsProfile":Z
    :cond_d0
    if-ne p2, v11, :cond_d7

    .line 1434
    if-nez v4, :cond_7e

    if-eqz v5, :cond_49

    goto :goto_7e

    .line 1453
    :cond_d7
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_7e

    .line 1461
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_e0
    if-eqz p1, :cond_177

    .line 1462
    if-ne p2, v10, :cond_10f

    .line 1463
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not own the device"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1466
    :cond_10f
    if-ne p2, v11, :cond_13c

    .line 1467
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not own the profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1470
    :cond_13c
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " did not specify uses-policy for: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1474
    :cond_177
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for policy #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1352
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1353
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1358
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_32
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2454
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_7

    .line 2455
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2469
    :goto_6
    return-object v3

    .line 2458
    :cond_7
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 2459
    monitor-enter p0

    .line 2460
    :try_start_b
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2461
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2462
    .local v0, "N":I
    if-gtz v0, :cond_1d

    .line 2463
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_6

    .line 2470
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1a
    move-exception v4

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v4

    .line 2465
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2466
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_39

    .line 2467
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2469
    :cond_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_1a

    goto :goto_6
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6156
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 6158
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6159
    .local v3, "allowList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 6160
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 6161
    :try_start_b
    iget-object v7, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6162
    .local v0, "N":I
    iget-object v2, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6164
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    const/4 v7, 0x1

    if-le v0, v7, :cond_17

    .line 6165
    const/4 v5, 0x1

    .line 6167
    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6168
    .local v1, "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_49

    const-string v7, ","

    :goto_3a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 6170
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_46
    move-exception v7

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v7

    .line 6168
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_49
    :try_start_49
    const-string v7, ""

    goto :goto_3a

    .line 6170
    .end local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    .line 6171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x2

    .line 5827
    monitor-enter p0

    .line 5828
    const/4 v8, 0x2

    .line 5829
    .local v8, "value":I
    const/4 v9, 0x2

    .line 5831
    .local v9, "value_root":I
    if-eqz p1, :cond_12

    .line 5832
    :try_start_6
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 5833
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_e
    monitor-exit p0

    .line 5860
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 5833
    goto :goto_e

    .line 5836
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 5837
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5838
    .local v1, "N_ROOT":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v1, :cond_2f

    .line 5839
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5840
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 5841
    iget v9, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 5838
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5845
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-eq v9, v11, :cond_4c

    .line 5846
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value_root retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5847
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 5850
    :cond_4c
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 5851
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5852
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_57
    if-ge v4, v0, :cond_68

    .line 5853
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5854
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_65

    .line 5855
    iget v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 5852
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 5859
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_68
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 5861
    .end local v0    # "N":I
    .end local v1    # "N_ROOT":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_83
    move-exception v10

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_6 .. :try_end_85} :catchall_83

    throw v10
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5727
    monitor-enter p0

    .line 5728
    const/4 v4, 0x1

    .line 5730
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5731
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5732
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_c
    monitor-exit p0

    .line 5743
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5732
    goto :goto_c

    .line 5735
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5736
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5737
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 5738
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5739
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 5740
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 5737
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5743
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5744
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowCamera(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5562
    invoke-virtual {p0, p1, p2}, getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 5885
    monitor-enter p0

    .line 5886
    const/4 v8, 0x1

    .line 5887
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 5889
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 5890
    :try_start_6
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 5891
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_e
    monitor-exit p0

    .line 5914
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 5891
    goto :goto_e

    .line 5894
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 5895
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5896
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 5897
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5898
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 5899
    iget-boolean v9, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 5896
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5903
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 5904
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 5906
    :cond_34
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 5907
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5908
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 5909
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5910
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 5911
    iget-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 5908
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 5914
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 5915
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 5769
    monitor-enter p0

    .line 5770
    const/4 v8, 0x1

    .line 5771
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 5773
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 5774
    :try_start_6
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 5775
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_e
    monitor-exit p0

    .line 5798
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 5775
    goto :goto_e

    .line 5778
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 5779
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5780
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 5781
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5782
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 5783
    iget-boolean v9, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 5780
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5787
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 5788
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 5790
    :cond_34
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 5791
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5792
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 5793
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5794
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 5795
    iget-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 5792
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 5798
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 5799
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5940
    monitor-enter p0

    .line 5941
    const/4 v4, 0x1

    .line 5943
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5944
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5945
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_c
    monitor-exit p0

    .line 5956
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5945
    goto :goto_c

    .line 5948
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5949
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5950
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 5951
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5952
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 5953
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 5950
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5956
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5957
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5685
    monitor-enter p0

    .line 5686
    const/4 v4, 0x1

    .line 5688
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5689
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5690
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_c
    monitor-exit p0

    .line 5701
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5690
    goto :goto_c

    .line 5693
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5694
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5695
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 5696
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5697
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 5698
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 5695
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5701
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5702
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 5481
    monitor-enter p0

    .line 5482
    const/4 v8, 0x1

    .line 5483
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 5485
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 5486
    :try_start_6
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 5487
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_e
    monitor-exit p0

    .line 5510
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 5487
    goto :goto_e

    .line 5490
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 5491
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5492
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 5493
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5494
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 5495
    iget-boolean v9, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 5492
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5499
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 5500
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 5502
    :cond_34
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 5503
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5504
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 5505
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5506
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 5507
    iget-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 5504
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 5510
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 5511
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5643
    monitor-enter p0

    .line 5644
    const/4 v4, 0x1

    .line 5646
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5647
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5648
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_c
    monitor-exit p0

    .line 5659
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5648
    goto :goto_c

    .line 5651
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5652
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5653
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 5654
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5655
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 5656
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 5653
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5659
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5660
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowUnsignedApp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6555
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 6557
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6559
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 6560
    const/4 v4, 0x1

    .line 6561
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 6562
    :try_start_a
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6563
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    :goto_12
    monitor-exit p0

    .line 6571
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 6563
    goto :goto_12

    .line 6566
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6567
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 6568
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    goto :goto_1a

    .line 6571
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 6572
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6607
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 6608
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6610
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    monitor-enter p0

    .line 6611
    const/4 v4, 0x1

    .line 6613
    .local v4, "value":Z
    if-eqz p1, :cond_16

    .line 6614
    :try_start_a
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6615
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    :goto_12
    monitor-exit p0

    .line 6623
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_13
    return v5

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_14
    move v5, v4

    .line 6615
    goto :goto_12

    .line 6618
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6619
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 6620
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    goto :goto_1a

    .line 6623
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    .line 6624
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v11, 0x1

    .line 5587
    monitor-enter p0

    .line 5588
    const/4 v8, 0x1

    .line 5589
    .local v8, "value":Z
    const/4 v9, 0x1

    .line 5591
    .local v9, "value_root":Z
    if-eqz p1, :cond_12

    .line 5592
    :try_start_6
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 5593
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_e
    monitor-exit p0

    .line 5617
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_f
    return v10

    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    move v10, v8

    .line 5593
    goto :goto_e

    .line 5597
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 5598
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5599
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1e
    if-ge v5, v0, :cond_2f

    .line 5600
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5601
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v9, v11, :cond_2c

    .line 5602
    iget-boolean v9, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 5599
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5606
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    if-nez v9, :cond_34

    .line 5607
    monitor-exit p0

    move v10, v9

    goto :goto_f

    .line 5609
    :cond_34
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 5610
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5611
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v1, :cond_50

    .line 5612
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5613
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-ne v8, v11, :cond_4d

    .line 5614
    iget-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 5611
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 5617
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    .line 5618
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7455
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 7457
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 7458
    if-nez p1, :cond_17

    .line 7459
    :try_start_c
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7469
    :catchall_14
    move-exception v3

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v3

    .line 7461
    :cond_17
    const/4 v3, -0x1

    :try_start_18
    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_14

    move-result-wide v0

    .line 7465
    .local v0, "id":J
    :try_start_1f
    iget-object v3, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2a

    move-result-object v3

    .line 7467
    :try_start_25
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    monitor-exit p0

    return-object v3

    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_14
.end method

.method public getAutoTimeRequired()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4833
    iget-boolean v2, p0, mHasFeature:Z

    if-nez v2, :cond_6

    .line 4838
    :goto_5
    return v1

    .line 4836
    :cond_6
    monitor-enter p0

    .line 4837
    :try_start_7
    invoke-direct {p0}, getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4838
    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    :cond_f
    monitor-exit p0

    goto :goto_5

    .line 4839
    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6351
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 6353
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6355
    .local v2, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6356
    .local v3, "blockList":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 6357
    .local v5, "multipleAdmin":Z
    monitor-enter p0

    .line 6358
    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6359
    .local v0, "N":I
    const/4 v7, 0x1

    if-le v0, v7, :cond_15

    .line 6360
    const/4 v5, 0x1

    .line 6362
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6363
    .local v1, "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_47

    const-string v7, ","

    :goto_38
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 6365
    .end local v0    # "N":I
    .end local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_44
    move-exception v7

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    throw v7

    .line 6363
    .restart local v0    # "N":I
    .restart local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_47
    :try_start_47
    const-string v7, ""

    goto :goto_38

    .line 6365
    .end local v1    # "a":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_44

    .line 6366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4877
    iget-boolean v10, p0, mHasFeature:Z

    if-nez v10, :cond_7

    .line 4904
    :goto_6
    return v8

    .line 4880
    :cond_7
    monitor-enter p0

    .line 4881
    if-eqz p1, :cond_17

    .line 4882
    :try_start_a
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4883
    .local v2, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_12

    iget-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_12
    monitor-exit p0

    goto :goto_6

    .line 4905
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_14
    move-exception v8

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v8

    .line 4886
    :cond_17
    const/4 v10, 0x0

    :try_start_18
    invoke-virtual {p0, v10}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 4887
    .local v7, "policy_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4888
    .local v0, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    if-ge v5, v0, :cond_37

    .line 4889
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4890
    .local v3, "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_34

    .line 4891
    monitor-exit p0

    move v8, v9

    goto :goto_6

    .line 4888
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 4895
    .end local v3    # "admin_root":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_37
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 4897
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4898
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    if-ge v4, v1, :cond_56

    .line 4899
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4900
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v10, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_53

    .line 4901
    monitor-exit p0

    move v8, v9

    goto :goto_6

    .line 4898
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 4904
    .end local v2    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_14

    goto :goto_6
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7830
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 7831
    const/4 v1, 0x0

    .line 7841
    :goto_5
    return v1

    .line 7834
    :cond_6
    monitor-enter p0

    .line 7835
    if-nez p1, :cond_14

    .line 7836
    :try_start_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7842
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1

    .line 7839
    :cond_14
    const/4 v1, -0x1

    :try_start_15
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7841
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_11

    goto :goto_5
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 7849
    monitor-enter p0

    .line 7850
    :try_start_1
    invoke-direct {p0, p1}, getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7851
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_9

    .line 7852
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2871
    monitor-enter p0

    .line 2872
    const/4 v1, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2874
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2876
    :cond_12
    const/4 v1, 0x0

    monitor-exit p0

    .line 2881
    :goto_14
    return-object v1

    .line 2878
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 2879
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    goto :goto_14

    .line 2883
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v1

    .line 2881
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2b
    :try_start_2b
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    goto :goto_14
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 3389
    monitor-enter p0

    .line 3398
    :try_start_1
    invoke-direct {p0, p1}, isKnoxWorkspace(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3399
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    .line 3412
    :goto_e
    return v2

    .line 3404
    :cond_f
    const/4 v0, 0x0

    .line 3405
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {p0, p1}, getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3407
    .local v1, "uInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_23

    .line 3408
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 3412
    :goto_1c
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    goto :goto_e

    .line 3413
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "uInfo":Landroid/content/pm/UserInfo;
    :catchall_20
    move-exception v2

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v2

    .line 3410
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v1    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    move-result-object v0

    goto :goto_1c
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5007
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 5015
    :goto_5
    return-object v0

    .line 5010
    :cond_6
    monitor-enter p0

    .line 5011
    :try_start_7
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5012
    iget-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 5014
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    goto :goto_5
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5020
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 5029
    :goto_5
    return-object v0

    .line 5023
    :cond_6
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5024
    monitor-enter p0

    .line 5025
    :try_start_e
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1d

    .line 5026
    iget-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 5028
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    goto :goto_5
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 4517
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_6

    .line 4536
    :goto_5
    return-object v4

    .line 4520
    :cond_6
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 4521
    monitor-enter p0

    .line 4522
    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {p0, v5}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4525
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4526
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_32

    .line 4527
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4528
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_2f

    .line 4531
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_5

    .line 4534
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v4

    .line 4526
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 4534
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    goto :goto_5
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 4936
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_6

    .line 4954
    :goto_5
    return v4

    .line 4939
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 4940
    monitor-enter p0

    .line 4941
    if-eqz p1, :cond_19

    .line 4942
    :try_start_c
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4943
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_14

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_14
    monitor-exit p0

    goto :goto_5

    .line 4955
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_16
    move-exception v5

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v5

    .line 4947
    :cond_19
    :try_start_19
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4948
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4949
    .local v0, "N":I
    const/4 v4, 0x0

    .line 4950
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_35

    .line 4951
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4952
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 4950
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 4954
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_16

    goto :goto_5
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7887
    monitor-enter p0

    .line 7888
    if-nez p1, :cond_e

    .line 7889
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7896
    :catchall_b
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v2

    .line 7891
    :cond_e
    const/4 v2, -0x2

    :try_start_f
    invoke-virtual {p0, p1, v2}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7893
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 7894
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 7895
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_b

    return-object v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 3449
    iget-boolean v2, p0, mHasFeature:Z

    if-nez v2, :cond_6

    .line 3456
    :goto_5
    return v1

    .line 3452
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3453
    monitor-enter p0

    .line 3454
    if-eqz p1, :cond_19

    :try_start_c
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3456
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    if-eqz v0, :cond_14

    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_14
    monitor-exit p0

    goto :goto_5

    .line 3457
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v1

    .line 3454
    :cond_19
    :try_start_19
    invoke-direct {p0, p2}, getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    move-result-object v0

    goto :goto_10
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 19
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3735
    move-object/from16 v0, p0

    iget-boolean v11, v0, mHasFeature:Z

    if-nez v11, :cond_9

    .line 3736
    const-wide/16 v8, 0x0

    .line 3769
    :goto_8
    return-wide v8

    .line 3738
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, enforceCrossUserPermission(I)V

    .line 3739
    monitor-enter p0

    .line 3740
    const-wide/16 v8, 0x0

    .line 3742
    .local v8, "time":J
    if-eqz p1, :cond_22

    .line 3743
    :try_start_15
    invoke-virtual/range {p0 .. p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 3744
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_20

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1d
    monitor-exit p0

    move-wide v8, v12

    goto :goto_8

    :cond_20
    move-wide v12, v8

    goto :goto_1d

    .line 3751
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3756
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 3757
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3758
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3759
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v2, :cond_2e

    .line 3760
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3761
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_64

    .line 3762
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 3759
    :cond_61
    :goto_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 3763
    :cond_64
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_61

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_61

    .line 3765
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_61

    .line 3769
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_75
    monitor-exit p0

    goto :goto_8

    .line 3770
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_77
    move-exception v11

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_77

    throw v11
.end method

.method public getNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 8402
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_6

    .line 8403
    const/4 v0, 0x0

    .line 8406
    :goto_5
    return v0

    .line 8405
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8406
    sget-boolean v0, mNeedToGetAlternativePasswdForODE:Z

    goto :goto_5
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 6771
    const-string v0, ""

    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2921
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_7

    .line 2922
    const-wide/16 v0, 0x0

    .line 2926
    :goto_6
    return-wide v0

    .line 2924
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2925
    monitor-enter p0

    .line 2926
    :try_start_b
    invoke-direct {p0, p1, p2}, getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_6

    .line 2927
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .registers 19
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2781
    move-object/from16 v0, p0

    iget-boolean v11, v0, mHasFeature:Z

    if-nez v11, :cond_9

    .line 2782
    const-wide/16 v8, 0x0

    .line 2812
    :goto_8
    return-wide v8

    .line 2784
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, enforceCrossUserPermission(I)V

    .line 2785
    monitor-enter p0

    .line 2786
    const-wide/16 v8, 0x0

    .line 2788
    .local v8, "timeout":J
    if-eqz p1, :cond_22

    .line 2789
    :try_start_15
    invoke-virtual/range {p0 .. p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2790
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_20

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1d
    monitor-exit p0

    move-wide v8, v12

    goto :goto_8

    :cond_20
    move-wide v12, v8

    goto :goto_1d

    .line 2796
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2801
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2802
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2803
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2804
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v2, :cond_2e

    .line 2805
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2806
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_6d

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_6f

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_6f

    .line 2808
    :cond_6d
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2804
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 2812
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_72
    monitor-exit p0

    goto :goto_8

    .line 2813
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_74
    move-exception v11

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_15 .. :try_end_76} :catchall_74

    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2704
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 2705
    const/4 v4, 0x0

    .line 2735
    :goto_5
    return v4

    .line 2707
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2708
    monitor-enter p0

    .line 2709
    const/4 v4, 0x0

    .line 2711
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 2712
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2713
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 2720
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2725
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2726
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2727
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2728
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 2729
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2730
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v4, v8, :cond_51

    .line 2731
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2728
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 2735
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 2736
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2642
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 2643
    const/4 v4, 0x0

    .line 2673
    :goto_5
    return v4

    .line 2645
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2646
    monitor-enter p0

    .line 2647
    const/4 v4, 0x0

    .line 2649
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 2650
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2651
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 2658
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2663
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2664
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2665
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2666
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 2667
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2668
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v4, v8, :cond_51

    .line 2669
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2666
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 2673
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 2674
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3077
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 3078
    const/4 v4, 0x0

    .line 3108
    :goto_5
    return v4

    .line 3080
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3081
    monitor-enter p0

    .line 3082
    const/4 v4, 0x0

    .line 3084
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 3085
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3086
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 3093
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3098
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3099
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3100
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3101
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 3102
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3103
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v4, v8, :cond_51

    .line 3104
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 3101
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 3108
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 3109
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3015
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 3016
    const/4 v4, 0x0

    .line 3046
    :goto_5
    return v4

    .line 3018
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3019
    monitor-enter p0

    .line 3020
    const/4 v4, 0x0

    .line 3022
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 3023
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3024
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 3031
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3036
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3037
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3038
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3039
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 3040
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3041
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v4, v8, :cond_51

    .line 3042
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 3039
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 3046
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 3047
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3263
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 3264
    const/4 v4, 0x0

    .line 3294
    :goto_5
    return v4

    .line 3266
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3267
    monitor-enter p0

    .line 3268
    const/4 v4, 0x0

    .line 3270
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 3271
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3272
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 3279
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3284
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3285
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3286
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3287
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 3288
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3289
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v4, v8, :cond_51

    .line 3290
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 3287
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 3294
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 3295
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3139
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 3140
    const/4 v4, 0x0

    .line 3170
    :goto_5
    return v4

    .line 3142
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3143
    monitor-enter p0

    .line 3144
    const/4 v4, 0x0

    .line 3146
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 3147
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3148
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 3155
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3160
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3161
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3162
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3163
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 3164
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3165
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v4, v8, :cond_51

    .line 3166
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 3163
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 3170
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 3171
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3201
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 3202
    const/4 v4, 0x0

    .line 3232
    :goto_5
    return v4

    .line 3204
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 3205
    monitor-enter p0

    .line 3206
    const/4 v4, 0x0

    .line 3208
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 3209
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3210
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 3217
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 3222
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3223
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3224
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3225
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 3226
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3227
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v4, v8, :cond_51

    .line 3228
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 3225
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 3232
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 3233
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2957
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 2958
    const/4 v4, 0x0

    .line 2987
    :goto_5
    return v4

    .line 2960
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2961
    monitor-enter p0

    .line 2962
    const/4 v4, 0x0

    .line 2964
    .local v4, "length":I
    if-eqz p1, :cond_1a

    .line 2965
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2966
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 2972
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2977
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2978
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2979
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2980
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 2981
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2982
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v4, v8, :cond_51

    .line 2983
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2980
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 2987
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 2988
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2580
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 2581
    const/4 v4, 0x0

    .line 2611
    :goto_5
    return v4

    .line 2583
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2584
    monitor-enter p0

    .line 2585
    const/4 v4, 0x0

    .line 2587
    .local v4, "mode":I
    if-eqz p1, :cond_1a

    .line 2588
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2589
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_18

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_15
    monitor-exit p0

    move v4, v8

    goto :goto_5

    :cond_18
    move v8, v4

    goto :goto_15

    .line 2596
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2601
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2602
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2603
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2604
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_22

    .line 2605
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2606
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v8, :cond_51

    .line 2607
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 2604
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 2611
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_54
    monitor-exit p0

    goto :goto_5

    .line 2612
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw v8
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5439
    monitor-enter p0

    .line 5440
    const/4 v4, 0x0

    .line 5442
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5443
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5444
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_c
    monitor-exit p0

    .line 5455
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5444
    goto :goto_c

    .line 5447
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5448
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5449
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 5450
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5451
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 5452
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 5449
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5455
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5456
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7120
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 7121
    const/4 v1, 0x0

    .line 7131
    :goto_5
    return-object v1

    .line 7124
    :cond_6
    if-nez p1, :cond_10

    .line 7125
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7128
    :cond_10
    monitor-enter p0

    .line 7129
    const/4 v1, -0x1

    :try_start_12
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7131
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    monitor-exit p0

    goto :goto_5

    .line 7132
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .registers 29
    .param p1, "userId"    # I

    .prologue
    .line 7137
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasFeature:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 7138
    const/16 v21, 0x0

    .line 7198
    :goto_a
    return-object v21

    .line 7140
    :cond_b
    monitor-enter p0

    .line 7141
    const/16 v21, 0x0

    .line 7145
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v20

    .line 7146
    .local v20, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    .line 7147
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_21
    if-ge v11, v5, :cond_7a

    .line 7150
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v19

    .line 7151
    .local v19, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_f8

    move-result v4

    .line 7152
    .local v4, "N":I
    const/16 v16, 0x0

    .local v16, "j":I
    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_47
    move/from16 v0, v16

    if-ge v0, v4, :cond_75

    .line 7153
    :try_start_4b
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7154
    .local v7, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 7155
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_72

    .line 7156
    if-nez v22, :cond_6d

    .line 7157
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7152
    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_68
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_47

    .line 7159
    :cond_6d
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_72
    .catchall {:try_start_4b .. :try_end_72} :catchall_101

    :cond_72
    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_68

    .line 7147
    .end local v7    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_75
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_21

    .line 7166
    .end local v4    # "N":I
    .end local v16    # "j":I
    .end local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_7a
    if-eqz v21, :cond_fe

    .line 7167
    :try_start_7c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_f8

    move-result-wide v14

    .line 7169
    .local v14, "id":J
    :try_start_80
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 7170
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v25

    if-eqz v25, :cond_9a

    .line 7171
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 p1, v0

    .line 7173
    :cond_9a
    invoke-direct/range {p0 .. p1}, getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    .line 7175
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 7178
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 7179
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_fb

    .line 7180
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_ac
    :goto_ac
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_fb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 7181
    .local v23, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_c8
    .catchall {:try_start_80 .. :try_end_c8} :catchall_f3

    .line 7183
    .local v17, "packageName":Ljava/lang/String;
    const/16 v25, 0x2000

    :try_start_ca
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 7185
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_ac

    .line 7186
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_e5} :catch_e6
    .catchall {:try_start_ca .. :try_end_e5} :catchall_f3

    goto :goto_ac

    .line 7188
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_e6
    move-exception v9

    .line 7189
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_e7
    const-string v25, "DevicePolicyManagerService"

    const-string v26, "Accessibility service in missing package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_e7 .. :try_end_f2} :catchall_f3

    goto :goto_ac

    .line 7194
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v23    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :catchall_f3
    move-exception v25

    :try_start_f4
    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    throw v25

    .line 7199
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_f8
    move-exception v25

    :goto_f9
    monitor-exit p0
    :try_end_fa
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_f8

    throw v25

    .line 7194
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v11    # "i":I
    .restart local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v14    # "id":J
    .restart local v18    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_fb
    :try_start_fb
    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    .line 7198
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v14    # "id":J
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_fe
    monitor-exit p0
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_f8

    goto/16 :goto_a

    .line 7199
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v16    # "j":I
    .restart local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_101
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_f9
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 7278
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 7279
    const/4 v1, 0x0

    .line 7289
    :goto_5
    return-object v1

    .line 7282
    :cond_6
    if-nez p1, :cond_10

    .line 7283
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7286
    :cond_10
    monitor-enter p0

    .line 7287
    const/4 v1, -0x1

    :try_start_12
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7289
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    monitor-exit p0

    goto :goto_5

    .line 7290
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .registers 29

    .prologue
    .line 7297
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_6e

    move-result-object v8

    .line 7304
    .local v8, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 7305
    .local v25, "userId":I
    monitor-enter p0

    .line 7306
    const/16 v23, 0x0

    .line 7310
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v22

    .line 7311
    .local v22, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 7312
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_22
    if-ge v11, v5, :cond_8a

    .line 7315
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v21

    .line 7316
    .local v21, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_ec

    move-result v4

    .line 7317
    .local v4, "N":I
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_48
    move/from16 v0, v18

    if-ge v0, v4, :cond_85

    .line 7318
    :try_start_4c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7319
    .local v6, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 7320
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_82

    .line 7321
    if-nez v24, :cond_7d

    .line 7322
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_f4

    .line 7317
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_69
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_48

    .line 7298
    .end local v4    # "N":I
    .end local v5    # "PROFILES_SIZE":I
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "userId":I
    :catch_6e
    move-exception v9

    .line 7299
    .local v9, "e":Landroid/os/RemoteException;
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Failed to make remote calls to get current user"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7301
    const/16 v23, 0x0

    .line 7357
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_7c
    return-object v23

    .line 7324
    .restart local v4    # "N":I
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "userId":I
    :cond_7d
    :try_start_7d
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_f4

    :cond_82
    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_69

    .line 7312
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_85
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_22

    .line 7331
    .end local v4    # "N":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_8a
    if-eqz v23, :cond_f2

    .line 7332
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "input_method"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 7334
    .local v17, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    .line 7335
    .local v16, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a1
    .catchall {:try_start_8c .. :try_end_a1} :catchall_ec

    move-result-wide v14

    .line 7337
    .local v14, "id":J
    :try_start_a2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 7338
    .local v20, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v16, :cond_ef

    .line 7339
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_ac
    :goto_ac
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_ef

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 7340
    .local v13, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;
    :try_end_bb
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_e7

    move-result-object v19

    .line 7342
    .local v19, "packageName":Ljava/lang/String;
    const/16 v26, 0x2000

    :try_start_be
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 7345
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_ac

    .line 7346
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_d9} :catch_da
    .catchall {:try_start_be .. :try_end_d9} :catchall_e7

    goto :goto_ac

    .line 7348
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_da
    move-exception v9

    .line 7349
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_db
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Input method for missing package"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_db .. :try_end_e6} :catchall_e7

    goto :goto_ac

    .line 7354
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_e7
    move-exception v26

    :try_start_e8
    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    throw v26

    .line 7358
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_ec
    move-exception v26

    :goto_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_e8 .. :try_end_ee} :catchall_ec

    throw v26

    .line 7354
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v11    # "i":I
    .restart local v14    # "id":J
    .restart local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_ef
    :try_start_ef
    invoke-static {v14, v15}, restoreCallingIdentity(J)V

    .line 7357
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_f2
    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_ec

    goto :goto_7c

    .line 7358
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_f4
    move-exception v26

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_ed
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 5230
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 5239
    :goto_5
    return-object v0

    .line 5234
    :cond_6
    monitor-enter p0

    .line 5235
    :try_start_7
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_16

    .line 5236
    iget-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 5238
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    goto :goto_5
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 5264
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 5274
    :goto_5
    return-object v0

    .line 5267
    :cond_6
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    monitor-enter p0

    .line 5270
    :try_start_e
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1d

    .line 5271
    iget-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_5

    .line 5273
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    goto :goto_5
.end method

.method public getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 8344
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_6

    .line 8368
    :goto_5
    return-object v3

    .line 8347
    :cond_6
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 8348
    const/4 v1, 0x0

    .line 8350
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 8351
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_20

    .line 8352
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 8353
    if-nez v1, :cond_28

    .line 8354
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount interface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8358
    :cond_20
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get mount service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8363
    :cond_28
    :try_start_28
    invoke-interface {v1, p2}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result-object v3

    goto :goto_5

    .line 8364
    :catch_2d
    move-exception v0

    .line 8365
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Can\'t get PropertyFromFooter"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 14
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 4205
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_6

    .line 4235
    :goto_5
    return-void

    .line 4208
    :cond_6
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 4209
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    monitor-enter p0

    .line 4213
    :try_start_11
    invoke-virtual {p0, p1, p3}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    move-result-object v9

    .line 4214
    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_20

    .line 4216
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_4b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    .line 4219
    :goto_1b
    :try_start_1b
    monitor-exit p0

    goto :goto_5

    .line 4234
    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw v0

    .line 4221
    .restart local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_20
    :try_start_20
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4222
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4223
    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4224
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;

    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4234
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_20 .. :try_end_4a} :catchall_1d

    goto :goto_5

    .line 4217
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_4b
    move-exception v0

    goto :goto_1b
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 6058
    monitor-enter p0

    .line 6059
    const/4 v4, 0x0

    .line 6061
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 6062
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 6063
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_c
    monitor-exit p0

    .line 6074
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 6063
    goto :goto_c

    .line 6066
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 6067
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6068
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 6069
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6070
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v4, :cond_29

    .line 6071
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 6068
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 6074
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 6075
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 6964
    monitor-enter p0

    .line 6965
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_14

    .line 6966
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can query the permission provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6970
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1

    .line 6968
    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 6969
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_11

    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 8183
    iget-boolean v3, p0, mHasFeature:Z

    if-nez v3, :cond_7

    .line 8205
    :cond_6
    :goto_6
    return v2

    .line 8187
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8188
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 8189
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    .line 8191
    .local v1, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v1, :cond_1c

    .line 8192
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 8195
    .restart local v1    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1c
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v3

    if-nez v3, :cond_6

    .line 8197
    invoke-virtual {p0, p1, p2}, getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p0, p1, p2}, getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-direct {p0}, getEncryptionStatus()I

    move-result v3

    if-eq v3, v5, :cond_3f

    const/4 v3, 0x2

    iget v4, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v3, v4, :cond_3f

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 8202
    :cond_3f
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;I)I
    .registers 15
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 8216
    iget-boolean v10, p0, mHasFeature:Z

    if-nez v10, :cond_8

    .line 8278
    :cond_7
    :goto_7
    return v7

    .line 8219
    :cond_8
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8221
    const/4 v3, -0x1

    .line 8222
    .local v3, "internalStorage":I
    const/4 v2, -0x1

    .line 8223
    .local v2, "externalStorage":I
    const/4 v4, 0x0

    .line 8227
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 8228
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_24

    .line 8229
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 8230
    if-nez v4, :cond_2c

    .line 8231
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount interface"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8235
    :cond_24
    const-string v8, "DevicePolicyManagerService"

    const-string v9, "Can\'t get mount service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8240
    :cond_2c
    :try_start_2c
    invoke-interface {v4}, Landroid/os/storage/IMountService;->isStorageFullyEncrypted()I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_53

    move-result v3

    .line 8247
    :goto_30
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 8248
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    .line 8250
    .local v5, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v5, :cond_42

    .line 8251
    new-instance v5, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v5}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 8254
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_42
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v10

    if-eqz v10, :cond_5c

    .line 8255
    const/4 v2, -0x1

    .line 8266
    :goto_49
    if-eq v3, v7, :cond_7

    if-eq v2, v7, :cond_7

    .line 8268
    if-eq v3, v8, :cond_72

    if-eq v2, v8, :cond_72

    .line 8269
    const/4 v7, 0x0

    goto :goto_7

    .line 8241
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :catch_53
    move-exception v1

    .line 8242
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Can\'t get interalstorage encrypted status"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 8256
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v5    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_5c
    iget v10, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v9, v10, :cond_62

    .line 8257
    const/4 v2, 0x0

    goto :goto_49

    .line 8258
    :cond_62
    const/4 v10, 0x5

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v10, v11, :cond_69

    .line 8259
    const/4 v2, 0x2

    goto :goto_49

    .line 8260
    :cond_69
    const/4 v10, 0x6

    iget v11, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v11, :cond_70

    .line 8261
    const/4 v2, 0x2

    goto :goto_49

    .line 8263
    :cond_70
    const/4 v2, 0x1

    goto :goto_49

    .line 8270
    :cond_72
    if-ne v3, v8, :cond_78

    if-ne v2, v8, :cond_78

    move v7, v8

    .line 8271
    goto :goto_7

    .line 8272
    :cond_78
    if-ne v3, v8, :cond_7e

    if-eq v2, v8, :cond_7e

    .line 8273
    const/4 v7, 0x2

    goto :goto_7

    .line 8274
    :cond_7e
    if-eq v3, v8, :cond_7

    if-ne v2, v8, :cond_7

    move v7, v9

    .line 8275
    goto :goto_7
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 4765
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_6

    .line 4782
    :goto_5
    return v4

    .line 4768
    :cond_6
    monitor-enter p0

    .line 4769
    if-eqz p1, :cond_16

    .line 4770
    :try_start_9
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4771
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    :cond_11
    monitor-exit p0

    goto :goto_5

    .line 4783
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_13
    move-exception v4

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v4

    .line 4774
    :cond_16
    :try_start_16
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4775
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4776
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 4777
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4778
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v5, :cond_32

    .line 4779
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_5

    .line 4776
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 4782
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_13

    goto :goto_5
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5536
    monitor-enter p0

    .line 5537
    const/4 v4, 0x1

    .line 5539
    .local v4, "value":Z
    if-eqz p1, :cond_10

    .line 5540
    :try_start_4
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 5541
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_c
    monitor-exit p0

    .line 5552
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v5, v4

    .line 5541
    goto :goto_c

    .line 5544
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5545
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5546
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2d

    .line 5547
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5548
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 5549
    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 5546
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5552
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    .line 5553
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 4655
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_7

    move v4, v5

    .line 4676
    :goto_6
    return v4

    .line 4658
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 4659
    monitor-enter p0

    .line 4661
    if-eqz p1, :cond_1c

    .line 4663
    :try_start_d
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4664
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1a

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_15
    monitor-exit p0

    goto :goto_6

    .line 4677
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_17
    move-exception v4

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v4

    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    move v4, v5

    .line 4664
    goto :goto_15

    .line 4669
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4670
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4671
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v0, :cond_3b

    .line 4672
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_38

    .line 4673
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_6

    .line 4671
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4676
    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_17

    move v4, v5

    goto :goto_6
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4684
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_4

    .line 4687
    :cond_4
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 4688
    invoke-direct {p0}, getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public getTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 18
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6901
    iget-boolean v11, p0, mHasFeature:Z

    if-nez v11, :cond_6

    .line 6902
    const/4 v9, 0x0

    .line 6943
    :goto_5
    return-object v9

    .line 6904
    :cond_6
    move/from16 v0, p3

    invoke-direct {p0, v0}, enforceCrossUserPermission(I)V

    .line 6905
    monitor-enter p0

    .line 6906
    if-nez p2, :cond_19

    .line 6907
    :try_start_e
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "agent is null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6944
    :catchall_16
    move-exception v11

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v11

    .line 6909
    :cond_19
    :try_start_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 6910
    .local v3, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_34

    .line 6911
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 6912
    .local v2, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v2, :cond_32

    iget-object v11, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentFeatures:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v9, v11

    :goto_30
    monitor-exit p0

    goto :goto_5

    :cond_32
    const/4 v9, 0x0

    goto :goto_30

    .line 6916
    .end local v2    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_34
    iget-object v11, p0, mUserManager:Landroid/os/UserManager;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 6917
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v9, 0x0

    .line 6918
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bf

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 6919
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {p0, v11}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 6920
    .local v7, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6921
    .local v1, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_60
    if-ge v5, v1, :cond_41

    .line 6922
    iget-object v11, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6925
    .restart local v2    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v11, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_ab

    .line 6927
    iget-object v11, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentFeatures:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 6928
    .local v4, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_bb

    .line 6929
    if-eqz v4, :cond_82

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_ae

    .line 6930
    :cond_82
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6931
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "DevicePolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "admin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v13}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has null trust agent feature set; all will be disabled"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6921
    .end local v4    # "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ab
    :goto_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 6934
    .restart local v4    # "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ae
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 6935
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ab

    .line 6938
    :cond_bb
    invoke-interface {v9, v4}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_ab

    .line 6943
    .end local v1    # "N":I
    .end local v2    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v7    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_19 .. :try_end_c0} :catchall_16

    goto/16 :goto_5
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1230
    monitor-enter p0

    .line 1231
    :try_start_1
    iget-object v1, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1232
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_18

    .line 1233
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 1234
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1235
    invoke-direct {p0, v0, p1}, loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)Z

    .line 1237
    :cond_18
    monitor-exit p0

    return-object v0

    .line 1238
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleAllowUnsignedApp(ZI)V
    .registers 18
    .param p1, "handle"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 6504
    move/from16 v0, p2

    invoke-virtual {p0, v0}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v13

    .line 6506
    .local v13, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6507
    .local v14, "unsignedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6509
    .local v10, "ident":J
    :try_start_f
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v14, v0

    .line 6510
    if-eqz p1, :cond_6c

    .line 6511
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6512
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_aa

    .line 6513
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 6514
    .local v9, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 6515
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :goto_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 6516
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_4f
    .catchall {:try_start_f .. :try_end_40} :catchall_a0

    .line 6520
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_42
    const-string v7, "DevicePolicyManager"

    move/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_4f
    .catchall {:try_start_42 .. :try_end_49} :catchall_a0

    goto :goto_34

    .line 6521
    :catch_4a
    move-exception v8

    .line 6522
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4b
    invoke-direct {p0, v3}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a0

    goto :goto_34

    .line 6545
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_4f
    move-exception v8

    .line 6546
    .local v8, "e":Ljava/lang/Exception;
    :try_start_50
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_a0

    .line 6548
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6551
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void

    .line 6527
    :cond_6c
    :try_start_6c
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 6529
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 6530
    .local v12, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 6531
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_7e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 6532
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_8a} :catch_4f
    .catchall {:try_start_6c .. :try_end_8a} :catchall_a0

    .line 6535
    .restart local v3    # "pkgName":Ljava/lang/String;
    :try_start_8a
    move/from16 v0, p2

    invoke-interface {v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9c

    .line 6536
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "DevicePolicyManager"

    move/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_9c} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9c} :catch_4f
    .catchall {:try_start_8a .. :try_end_9c} :catchall_a0

    .line 6542
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_4f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_7e

    .line 6548
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v12    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_a0
    move-exception v4

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 6538
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v12    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_a5
    move-exception v8

    .line 6539
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a6
    invoke-direct {p0, v3}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_4f
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a0

    goto :goto_9c

    .line 6548
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_aa
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6b
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2439
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 2440
    const/4 v1, 0x0

    .line 2448
    :goto_5
    return v1

    .line 2442
    :cond_6
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2443
    monitor-enter p0

    .line 2444
    :try_start_a
    invoke-virtual {p0, p1, p3}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2445
    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2c

    .line 2446
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2449
    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v1

    .line 2448
    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    :try_start_2c
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_5
.end method

.method public hasUserSetupCompleted()Z
    .registers 2

    .prologue
    .line 5167
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, hasUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method initiateTempList(ILcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 15
    .param p1, "userHandle"    # I
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 6637
    iget-object v1, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 6638
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v6

    .line 6639
    .local v6, "mAllowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 6642
    .local v7, "mBlockListRecordInRom":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 6643
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 6646
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 6649
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    :try_start_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6652
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-string v9, "com.android.email.SecurityPolicy$PolicyAdmin"

    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 6654
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 6655
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_47} :catch_9e

    .line 6658
    .local v2, "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_47
    :try_start_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 6659
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5e} :catch_5f

    goto :goto_47

    .line 6661
    :catch_5f
    move-exception v3

    .line 6662
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_60
    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad device admin requested to initiate for user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_78
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6666
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 6667
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->blockListRecordInRom:Ljava/util/HashSet;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 6670
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 6671
    :goto_89
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_8c} :catch_9e

    move-result v9

    if-eqz v9, :cond_b7

    .line 6674
    :try_start_8f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_98} :catch_99
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_98} :catch_9e

    goto :goto_89

    .line 6675
    :catch_99
    move-exception v3

    .line 6677
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_9a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_89

    .line 6683
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "allowListRecordWithPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_9e
    move-exception v3

    .line 6684
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad device admin requested to initiate for user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6686
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b7
    return-void
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .registers 15
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3819
    invoke-virtual {p0, p1}, enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3823
    :try_start_3
    invoke-static {p2}, parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 3824
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_10
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_10} :catch_33
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_3d

    move-result-object v8

    .line 3833
    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3834
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3836
    .local v4, "id":J
    :try_start_1e
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_5c
    .catchall {:try_start_1e .. :try_end_23} :catchall_6f

    move-result-object v7

    .line 3838
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_24
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_47
    .catchall {:try_start_24 .. :try_end_2b} :catchall_57

    .line 3839
    const/4 v10, 0x1

    .line 3843
    :try_start_2c
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_5c
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6f

    .line 3849
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3851
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :goto_32
    return v10

    .line 3825
    :catch_33
    move-exception v0

    .line 3826
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem converting cert"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3827
    const/4 v10, 0x0

    goto :goto_32

    .line 3828
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_3d
    move-exception v6

    .line 3829
    .local v6, "ioe":Ljava/io/IOException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem reading cert"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3830
    const/4 v10, 0x0

    goto :goto_32

    .line 3840
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_47
    move-exception v2

    .line 3841
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_48
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_57

    .line 3843
    :try_start_4f
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_5c
    .catchall {:try_start_4f .. :try_end_52} :catchall_6f

    .line 3849
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3851
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_55
    const/4 v10, 0x0

    goto :goto_32

    .line 3843
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_57
    move-exception v10

    :try_start_58
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v10
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5c} :catch_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_6f

    .line 3845
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_5c
    move-exception v3

    .line 3846
    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_5d
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3847
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_6f

    .line 3849
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_55

    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_6f
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3885
    if-nez p1, :cond_a

    .line 3886
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3888
    :cond_a
    monitor-enter p0

    .line 3889
    const/4 v6, -0x1

    :try_start_c
    invoke-virtual {p0, p1, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3890
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_32

    .line 3891
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 3892
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3894
    .local v2, "id":J
    :try_start_1d
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_4a
    .catchall {:try_start_1d .. :try_end_22} :catchall_5d

    move-result-object v4

    .line 3896
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_23
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 3897
    .local v1, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v1, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_35
    .catchall {:try_start_23 .. :try_end_2a} :catchall_45

    move-result v6

    .line 3901
    :try_start_2b
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_4a
    .catchall {:try_start_2b .. :try_end_2e} :catchall_5d

    .line 3907
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3909
    .end local v1    # "keyChain":Landroid/security/IKeyChainService;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_31
    return v6

    .line 3890
    .end local v2    # "id":J
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    :catchall_32
    move-exception v6

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v6

    .line 3898
    .restart local v2    # "id":J
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :catch_35
    move-exception v0

    .line 3899
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_36
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_45

    .line 3901
    :try_start_3d
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_4a
    .catchall {:try_start_3d .. :try_end_40} :catchall_5d

    .line 3907
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3909
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_43
    const/4 v6, 0x0

    goto :goto_31

    .line 3901
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_45
    move-exception v6

    :try_start_46
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4a} :catch_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_5d

    .line 3903
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_4a
    move-exception v0

    .line 3904
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4b
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Interrupted while installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_5d

    .line 3907
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_43

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_5d
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3301
    .local v2, "ident":J
    :try_start_6
    iget-boolean v9, p0, mHasFeature:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_12d

    if-nez v9, :cond_e

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_d
    return v7

    .line 3304
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 3306
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_12d

    .line 3311
    :try_start_12
    invoke-direct {p0, p1}, getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 3312
    .local v4, "parent":Landroid/content/pm/UserInfo;
    const/4 v0, 0x0

    .line 3313
    .local v0, "id":I
    invoke-direct {p0, p1}, isKnoxWorkspace(I)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 3315
    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getting policy for container "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    move v0, p1

    .line 3323
    :goto_36
    invoke-virtual {p0, v0}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3329
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, p1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3337
    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_51

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v10

    if-ge v9, v10, :cond_76

    .line 3339
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_12 .. :try_end_52} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    goto :goto_d

    .line 3319
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_57
    :try_start_57
    const-string v9, "DevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getting policy for regular user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    if-nez v4, :cond_73

    move v0, p1

    :goto_72
    goto :goto_36

    :cond_73
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_72

    .line 3342
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_76
    const/4 v9, 0x0

    invoke-virtual {p0, v9, p1}, getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v9

    if-nez v9, :cond_a3

    .line 3343
    iget-object v9, p0, mContext:Landroid/content/Context;

    if-eqz v9, :cond_9c

    .line 3344
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3345
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple(I)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 3346
    const-string v7, "DevicePolicyManagerService"

    const-string v9, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_57 .. :try_end_96} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    goto/16 :goto_d

    .line 3350
    .end local v1    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_9c
    :try_start_9c
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_a3
    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const v10, 0x61000

    if-ne v9, v10, :cond_b8

    .line 3357
    const/4 v9, 0x0

    invoke-virtual {p0, v9, p1}, getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    .line 3358
    .local v6, "pwQuality":I
    invoke-direct {p0, p1}, isSupportFP(I)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 3359
    sparse-switch v6, :sswitch_data_132

    .line 3373
    .end local v6    # "pwQuality":I
    :cond_b8
    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v10, 0x60000

    if-ge v9, v10, :cond_ec

    .line 3374
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 3361
    .restart local v6    # "pwQuality":I
    :sswitch_c4
    :try_start_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 3363
    :sswitch_ca
    :try_start_ca
    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-lt v9, v7, :cond_d4

    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_ca .. :try_end_cf} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 3364
    :cond_d4
    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    goto/16 :goto_d

    .line 3367
    :cond_db
    const/high16 v9, 0x10000

    if-gt v6, v9, :cond_e5

    .line 3368
    :try_start_df
    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    .line 3370
    :cond_e5
    :try_start_e5
    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v8

    goto/16 :goto_d

    .line 3376
    .end local v6    # "pwQuality":I
    :cond_ec
    :try_start_ec
    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    iget v9, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v10

    if-lt v9, v10, :cond_128

    :goto_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_ec .. :try_end_123} :catchall_12a

    .line 3384
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    :cond_128
    move v7, v8

    .line 3376
    goto :goto_122

    .line 3382
    .end local v0    # "id":I
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_12a
    move-exception v7

    :try_start_12b
    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    :try_start_12c
    throw v7
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12d

    .line 3384
    :catchall_12d
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3359
    :sswitch_data_132
    .sparse-switch
        0x20000 -> :sswitch_c4
        0x50000 -> :sswitch_ca
    .end sparse-switch
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 2429
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 2434
    :goto_5
    return v0

    .line 2432
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2433
    monitor-enter p0

    .line 2434
    :try_start_a
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    monitor-exit p0

    goto :goto_5

    .line 2435
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7588
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7589
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 7590
    if-nez p1, :cond_12

    .line 7591
    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7606
    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    .line 7593
    :cond_12
    const/4 v5, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_f

    move-result-wide v2

    .line 7597
    .local v2, "id":J
    :try_start_1a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 7598
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_27
    .catchall {:try_start_1a .. :try_end_21} :catchall_35

    move-result v5

    .line 7603
    :try_start_22
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_f

    .line 7605
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_26
    return v5

    .line 7599
    :catch_27
    move-exception v4

    .line 7601
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getApplicationHiddenSettingAsUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 7603
    :try_start_2f
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 7605
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_26

    .line 7603
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_f
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4995
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_6

    .line 4999
    :goto_5
    return v0

    .line 4998
    :cond_6
    monitor-enter p0

    .line 4999
    :try_start_7
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_20

    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    monitor-exit p0

    goto :goto_5

    .line 5002
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public isEncryptedWithForceEncrypt(Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8410
    iget-boolean v6, p0, mHasFeature:Z

    if-nez v6, :cond_7

    .line 8439
    :cond_6
    :goto_6
    return v4

    .line 8413
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8414
    const/4 v1, 0x0

    .line 8416
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 8417
    .local v3, "service":Landroid/os/IBinder;
    if-eqz v3, :cond_21

    .line 8418
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 8419
    if-nez v1, :cond_29

    .line 8420
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount interface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8424
    :cond_21
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8429
    :cond_29
    :try_start_29
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isEncryptedWithForceEncrypt()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_31

    move-result v2

    .line 8430
    .local v2, "ret":I
    if-ne v2, v5, :cond_6

    move v4, v5

    .line 8431
    goto :goto_6

    .line 8435
    .end local v2    # "ret":I
    :catch_31
    move-exception v0

    .line 8436
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t check force encrypt."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 7906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 7907
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 7908
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 7909
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 7910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    :try_start_e
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2a

    .line 7911
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7915
    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 7916
    const/4 v5, 0x1

    monitor-exit p0

    .line 7920
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :goto_26
    return v5

    .line 7910
    .restart local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 7919
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_2a
    monitor-exit p0

    .line 7920
    const/4 v5, 0x0

    goto :goto_26

    .line 7919
    :catchall_2d
    move-exception v5

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 8025
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8027
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 8028
    if-nez p1, :cond_14

    .line 8029
    :try_start_9
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8036
    :catchall_11
    move-exception v2

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v2

    .line 8031
    :cond_14
    const/4 v2, -0x1

    :try_start_15
    invoke-virtual {p0, p1, v2}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 8033
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8035
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_11

    return v2
.end method

.method public isSupportFingerprintForODE(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 8372
    iget-boolean v3, p0, mHasFeature:Z

    if-nez v3, :cond_6

    .line 8389
    :cond_5
    :goto_5
    return v2

    .line 8375
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8377
    const/4 v0, 0x0

    .line 8379
    .local v0, "existAdmin":Z
    monitor-enter p0

    .line 8380
    :try_start_b
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 8381
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 8382
    const/4 v0, 0x1

    .line 8383
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_21

    .line 8386
    invoke-direct {p0, p2}, isSupportFP(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8387
    const/4 v2, 0x1

    goto :goto_5

    .line 8383
    .end local v1    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public isSupportTrustZoneForODE(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 8286
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_6

    .line 8299
    :cond_5
    :goto_5
    return v3

    .line 8289
    :cond_6
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 8291
    const-string/jumbo v4, "ro.securestorage.support"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8292
    .local v2, "ssStatus":Ljava/lang/String;
    const-string/jumbo v4, "ro.securestorage.knox"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8293
    .local v1, "ssKnoxStatus":Ljava/lang/String;
    const-string/jumbo v4, "security.mdpp"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8295
    .local v0, "mdppStatus":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "Enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "Ready"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "Enforcing"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8297
    :cond_4e
    const/4 v3, 0x1

    goto :goto_5
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 7788
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 7790
    .local v4, "userId":I
    monitor-enter p0

    .line 7791
    if-nez p1, :cond_12

    .line 7792
    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7806
    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    .line 7794
    :cond_12
    const/4 v5, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_f

    move-result-wide v0

    .line 7798
    .local v0, "id":J
    :try_start_1a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 7799
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_27
    .catchall {:try_start_1a .. :try_end_21} :catchall_35

    move-result v5

    .line 7804
    :try_start_22
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_f

    .line 7807
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_26
    return v5

    .line 7800
    :catch_27
    move-exception v3

    .line 7802
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 7804
    :try_start_2f
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 7806
    monitor-exit p0

    .line 7807
    const/4 v5, 0x0

    goto :goto_26

    .line 7804
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v5
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_f
.end method

.method loadDeviceOwner()V
    .registers 2

    .prologue
    .line 1281
    monitor-enter p0

    .line 1282
    :try_start_1
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 1283
    monitor-exit p0

    .line 1284
    return-void

    .line 1283
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public lockNow()V
    .registers 3

    .prologue
    .line 3774
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_5

    .line 3784
    :goto_4
    return-void

    .line 3777
    :cond_5
    monitor-enter p0

    .line 3780
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_8
    invoke-virtual {p0, v0, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3782
    invoke-direct {p0}, lockNowUnchecked()V

    .line 3783
    monitor-exit p0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method manageAllowThirdPartyApps(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6211
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    .line 6212
    .local v11, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 6214
    .local v7, "allowListRecord":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v6

    .line 6216
    .local v6, "allowList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 6217
    .local v8, "arr":[Ljava/lang/String;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 6218
    .local v12, "thirdPartyList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v12, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6219
    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6221
    invoke-direct {p0}, getHarmonyEAS()Landroid/content/IHarmonyEAS;

    .line 6223
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_8a

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 6224
    invoke-virtual {p0, v5, p1}, disableThirdPartyApps(ZI)V

    .line 6233
    :goto_38
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 6236
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :try_start_3c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6237
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_40
    :goto_40
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 6238
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6239
    .local v1, "s":Ljava/lang/String;
    sget-object v2, mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, v1, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6240
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_55} :catch_70

    move-result v2

    if-nez v2, :cond_40

    .line 6243
    :try_start_58
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 6244
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 6245
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_6a} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6a} :catch_70

    goto :goto_40

    .line 6247
    :catch_6b
    move-exception v9

    .line 6248
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6c
    invoke-direct {p0, v1}, removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_40

    .line 6253
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_70
    move-exception v9

    .line 6254
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device admin requested to manage for user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6256
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_89
    :goto_89
    return-void

    .line 6225
    :cond_8a
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 6226
    invoke-virtual {p0, v4, p1}, disableThirdPartyApps(ZI)V

    goto :goto_38

    .line 6228
    :cond_94
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 6229
    invoke-virtual {p0, p1}, enableAllThirdPartyApps(I)V

    goto :goto_89
.end method

.method manageBlockedApplications(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .prologue
    .line 6402
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v8

    .line 6403
    .local v8, "blockedList":Ljava/lang/String;
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 6404
    .local v12, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    .line 6407
    .local v7, "blockListInROM":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 6408
    invoke-virtual {p0, p1}, enableAllBlockedListApps(I)V

    .line 6410
    :cond_16
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6412
    .local v6, "arr":[Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 6413
    .local v11, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v11, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6414
    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6416
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 6417
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 6440
    :cond_32
    :goto_32
    return-void

    .line 6423
    :cond_33
    :try_start_33
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 6424
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6425
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 6426
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6427
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4c} :catch_5d

    move-result v2

    if-nez v2, :cond_3b

    .line 6429
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_51
    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 6430
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5a} :catch_5d

    goto :goto_3b

    .line 6431
    :catch_5b
    move-exception v2

    goto :goto_3b

    .line 6437
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "s":Ljava/lang/String;
    .end local v10    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_5d
    move-exception v9

    .line 6438
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device admin requested to manage blocked app for user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public notifyChanges(Landroid/content/ComponentName;ZI)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 6131
    const/4 v1, 0x0

    .line 6133
    .local v1, "enforceNotification":Z
    if-nez p1, :cond_4

    .line 6153
    :cond_3
    :goto_3
    return-void

    .line 6137
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6138
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6142
    :cond_18
    invoke-virtual {p0, p1, p3}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6143
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_3

    .line 6146
    if-eqz p2, :cond_25

    iget-boolean v2, p0, mNotifyChanges:Z

    if-nez v2, :cond_25

    .line 6147
    const/4 v1, 0x1

    .line 6149
    :cond_25
    iput-boolean p2, p0, mNotifyChanges:Z

    .line 6150
    if-eqz v1, :cond_3

    .line 6151
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, sendChangedNotification(IZ)V

    goto :goto_3
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .registers 12
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 7925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_10

    .line 7926
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "notifyLockTaskModeChanged can only be called by system"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7928
    :cond_10
    monitor-enter p0

    .line 7929
    :try_start_11
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 7930
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7931
    .local v1, "adminExtras":Landroid/os/Bundle;
    const-string v6, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7932
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7933
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    .line 7934
    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_62

    invoke-virtual {p0, p3}, getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v4, 0x1

    .line 7936
    .local v4, "ownsProfile":Z
    :goto_52
    if-nez v3, :cond_56

    if-eqz v4, :cond_25

    .line 7937
    :cond_56
    if-eqz p1, :cond_64

    .line 7938
    const-string v6, "android.app.action.LOCK_TASK_ENTERING"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v1, v7}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    goto :goto_25

    .line 7945
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "adminExtras":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_5f
    move-exception v6

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_11 .. :try_end_61} :catchall_5f

    throw v6

    .line 7934
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "adminExtras":Landroid/os/Bundle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_62
    const/4 v4, 0x0

    goto :goto_52

    .line 7941
    .restart local v4    # "ownsProfile":Z
    :cond_64
    :try_start_64
    const-string v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {p0, v0, v6}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    goto :goto_25

    .line 7945
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    :cond_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_5f

    .line 7946
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 2474
    iget-boolean v3, p0, mHasFeature:Z

    if-nez v3, :cond_7

    move v3, v4

    .line 2486
    :goto_6
    return v3

    .line 2477
    :cond_7
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2478
    monitor-enter p0

    .line 2479
    :try_start_b
    invoke-virtual {p0, p2}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2480
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2481
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_35

    .line 2482
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2483
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_6

    .line 2487
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_2f
    move-exception v3

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v3

    .line 2481
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2486
    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2f

    move v3, v4

    goto :goto_6
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6752
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6755
    .local v2, "ident":J
    const v1, 0x1040b73

    :try_start_f
    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 6757
    invoke-direct {p0}, getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 6758
    iget-object v1, p0, mIPowerManager:Landroid/os/IPowerManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v4, p1, v5}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_23
    .catchall {:try_start_f .. :try_end_1f} :catchall_2f

    .line 6762
    :cond_1f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6764
    :goto_22
    return-void

    .line 6759
    :catch_23
    move-exception v0

    .line 6760
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Failure talking with power manager"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    .line 6762
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public recoverPassword(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    .line 6080
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    monitor-enter p0

    .line 6084
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    move-result-wide v0

    .line 6086
    .local v0, "ident":J
    :try_start_d
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, p1}, sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 6090
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6092
    monitor-exit p0

    .line 6093
    return-void

    .line 6090
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6092
    .end local v0    # "ident":J
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2491
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 2527
    :cond_4
    :goto_4
    return-void

    .line 2494
    :cond_5
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 2499
    :try_start_8
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_4d

    move-result v1

    if-eqz v1, :cond_4

    .line 2507
    :goto_12
    monitor-enter p0

    .line 2508
    :try_start_13
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2509
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1e

    .line 2510
    monitor-exit p0

    goto :goto_4

    .line 2526
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1

    .line 2512
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_3c

    .line 2514
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2515
    monitor-exit p0

    goto :goto_4

    .line 2517
    :cond_34
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_1b

    move-result-wide v2

    .line 2522
    .local v2, "ident":J
    :try_start_40
    invoke-virtual {p0, p1, p2}, removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 2524
    :try_start_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2526
    monitor-exit p0

    goto :goto_4

    .line 2524
    :catchall_48
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_1b

    .line 2502
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "ident":J
    :catch_4d
    move-exception v1

    goto :goto_12
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1575
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1576
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_10

    .line 1577
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1622
    :cond_10
    return-void
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2845
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2846
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2848
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2849
    const/4 v6, -0x1

    :try_start_8
    invoke-virtual {p0, p1, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2851
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v6, :cond_12

    .line 2852
    monitor-exit p0

    .line 2866
    :cond_11
    :goto_11
    return v5

    .line 2854
    :cond_12
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2855
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 2857
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :try_start_20
    invoke-direct {p0, v4, v6}, saveSettingsLocked(IZ)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_31

    move-object v1, v2

    .line 2859
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2e

    .line 2861
    if-eqz v1, :cond_11

    .line 2862
    iget-object v5, p0, mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2863
    const/4 v5, 0x1

    goto :goto_11

    .line 2859
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2e
    move-exception v5

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_31
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2f
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 7414
    monitor-enter p0

    .line 7415
    if-nez p1, :cond_e

    .line 7416
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7426
    :catchall_b
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v2

    .line 7418
    :cond_e
    const/4 v2, -0x2

    :try_start_f
    invoke-virtual {p0, p1, v2}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_b

    move-result-wide v0

    .line 7422
    .local v0, "id":J
    :try_start_16
    iget-object v2, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_25

    move-result v2

    .line 7424
    :try_start_20
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_b
.end method

.method removeUserData(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 1242
    monitor-enter p0

    .line 1243
    if-nez p1, :cond_c

    .line 1244
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    monitor-exit p0

    .line 1278
    :goto_b
    return-void

    .line 1247
    :cond_c
    iget-object v5, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v5, :cond_1a

    .line 1248
    iget-object v5, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 1249
    iget-object v5, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 1252
    :cond_1a
    iget-object v5, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1253
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v3, :cond_6e

    .line 1256
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_69

    .line 1257
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_66

    .line 1259
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_3a
    invoke-direct {p0}, getEDMService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_48
    .catchall {:try_start_3a .. :try_end_47} :catchall_66

    goto :goto_2e

    .line 1261
    :catch_48
    move-exception v1

    .line 1262
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to remove active admin from edm database "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1276
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_66
    move-exception v5

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_66

    throw v5

    .line 1270
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_69
    :try_start_69
    iget-object v5, p0, mUserData:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1272
    :cond_6e
    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    const-string v6, "device_policies.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1274
    .local v4, "policyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1275
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed device policy file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_66

    .line 1277
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, updateScreenCaptureDisabledInWindowManager(IZ)V

    goto/16 :goto_b
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 4389
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 4391
    invoke-direct {p0, p1}, isKnoxWorkspace(I)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 4392
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "It is KnoxWorkspace skip enforceNotManagedProfile: reportFailedPasswordAttempt"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    :goto_10
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4401
    .local v0, "ident":J
    const/4 v4, 0x0

    .line 4402
    .local v4, "wipeData":Z
    const/4 v2, 0x0

    .line 4403
    .local v2, "identifier":I
    :try_start_1e
    monitor-enter p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_4f

    .line 4404
    :try_start_1f
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4405
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 4406
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, saveSettingsLocked(IZ)V

    .line 4407
    iget-boolean v5, p0, mHasFeature:Z

    if-eqz v5, :cond_37

    .line 4420
    const-string v5, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, p1}, sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V

    .line 4424
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_4c

    .line 4425
    if-eqz v4, :cond_41

    .line 4427
    const/4 v5, 0x0

    :try_start_3b
    const-string/jumbo v6, "reportFailedPasswordAttempt()"

    invoke-direct {p0, v5, v2, v6}, wipeDeviceOrUserLocked(IILjava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4f

    .line 4430
    :cond_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4432
    return-void

    .line 4394
    .end local v0    # "ident":J
    .end local v2    # "identifier":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "wipeData":Z
    :cond_45
    const-string/jumbo v5, "report failed password attempt"

    invoke-direct {p0, p1, v5}, enforceNotManagedProfile(ILjava/lang/String;)V

    goto :goto_10

    .line 4424
    .restart local v0    # "ident":J
    .restart local v2    # "identifier":I
    .restart local v4    # "wipeData":Z
    :catchall_4c
    move-exception v5

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 4430
    :catchall_4f
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 4435
    invoke-direct {p0, p1}, enforceCrossUserPermission(I)V

    .line 4436
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4439
    monitor-enter p0

    .line 4440
    :try_start_c
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 4441
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_18

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_33

    .line 4442
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_3a

    move-result-wide v0

    .line 4444
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1d
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 4445
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 4446
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, saveSettingsLocked(IZ)V

    .line 4447
    iget-boolean v3, p0, mHasFeature:Z

    if-eqz v3, :cond_30

    .line 4448
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p1}, sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_35

    .line 4453
    :cond_30
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4456
    .end local v0    # "ident":J
    :cond_33
    monitor-exit p0

    .line 4457
    return-void

    .line 4453
    .restart local v0    # "ident":J
    :catchall_35
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4456
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_3a
    move-exception v3

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .registers 40
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3498
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasFeature:Z

    move/from16 v33, v0

    if-nez v33, :cond_b

    .line 3499
    const/16 v33, 0x0

    .line 3661
    :goto_a
    return v33

    .line 3501
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, enforceCrossUserPermission(I)V

    .line 3503
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, isKnoxWorkspace(I)Z

    move-result v33

    if-eqz v33, :cond_85

    .line 3504
    const-string v33, "DevicePolicyManagerService"

    const-string v34, "It is KnoxWorkspace skip enforceNotManagedProfile: resetPassword"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :goto_23
    monitor-enter p0

    .line 3515
    const/16 v33, 0x0

    const/16 v34, 0x2

    :try_start_28
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3522
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v27

    .line 3523
    .local v27, "quality":I
    if-eqz v27, :cond_9a

    .line 3524
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v28

    .line 3525
    .local v28, "realQuality":I
    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_92

    const/high16 v33, 0x60000

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_92

    .line 3527
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: password quality 0x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required quality 0x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    const/16 v33, 0x0

    monitor-exit p0

    goto :goto_a

    .line 3614
    .end local v27    # "quality":I
    .end local v28    # "realQuality":I
    :catchall_82
    move-exception v33

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_28 .. :try_end_84} :catchall_82

    throw v33

    .line 3506
    :cond_85
    const-string/jumbo v33, "reset the password"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, enforceNotManagedProfile(ILjava/lang/String;)V

    goto :goto_23

    .line 3533
    .restart local v27    # "quality":I
    .restart local v28    # "realQuality":I
    :cond_92
    :try_start_92
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 3538
    .end local v28    # "realQuality":I
    :cond_9a
    const/high16 v33, 0x70000

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_af

    .line 3539
    const-string v33, "DevicePolicyManagerService"

    const-string/jumbo v34, "resetPassword: current password quality is smartcard numeric and can\'t set reset password"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3544
    :cond_af
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v13

    .line 3545
    .local v13, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v0, v13, :cond_f1

    .line 3546
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: password length "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required length "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3550
    :cond_f1
    const/high16 v33, 0x60000

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_2d0

    .line 3551
    const/4 v14, 0x0

    .line 3552
    .local v14, "letters":I
    const/16 v31, 0x0

    .line 3553
    .local v31, "uppercase":I
    const/4 v15, 0x0

    .line 3554
    .local v15, "lowercase":I
    const/16 v24, 0x0

    .line 3555
    .local v24, "numbers":I
    const/16 v30, 0x0

    .line 3556
    .local v30, "symbols":I
    const/16 v23, 0x0

    .line 3557
    .local v23, "nonletter":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_104
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v8, v0, :cond_14c

    .line 3558
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 3559
    .local v6, "c":C
    const/16 v33, 0x41

    move/from16 v0, v33

    if-lt v6, v0, :cond_125

    const/16 v33, 0x5a

    move/from16 v0, v33

    if-gt v6, v0, :cond_125

    .line 3560
    add-int/lit8 v14, v14, 0x1

    .line 3561
    add-int/lit8 v31, v31, 0x1

    .line 3557
    :goto_122
    add-int/lit8 v8, v8, 0x1

    goto :goto_104

    .line 3562
    :cond_125
    const/16 v33, 0x61

    move/from16 v0, v33

    if-lt v6, v0, :cond_136

    const/16 v33, 0x7a

    move/from16 v0, v33

    if-gt v6, v0, :cond_136

    .line 3563
    add-int/lit8 v14, v14, 0x1

    .line 3564
    add-int/lit8 v15, v15, 0x1

    goto :goto_122

    .line 3565
    :cond_136
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v6, v0, :cond_147

    const/16 v33, 0x39

    move/from16 v0, v33

    if-gt v6, v0, :cond_147

    .line 3566
    add-int/lit8 v24, v24, 0x1

    .line 3567
    add-int/lit8 v23, v23, 0x1

    goto :goto_122

    .line 3569
    :cond_147
    add-int/lit8 v30, v30, 0x1

    .line 3570
    add-int/lit8 v23, v23, 0x1

    goto :goto_122

    .line 3573
    .end local v6    # "c":C
    :cond_14c
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v16

    .line 3574
    .local v16, "neededLetters":I
    move/from16 v0, v16

    if-ge v14, v0, :cond_18a

    .line 3575
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3579
    :cond_18a
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v19

    .line 3580
    .local v19, "neededNumbers":I
    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1cc

    .line 3581
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of numerical digits "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of numerical digits "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3586
    :cond_1cc
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v17

    .line 3587
    .local v17, "neededLowerCase":I
    move/from16 v0, v17

    if-ge v15, v0, :cond_20a

    .line 3588
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of lowercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3593
    :cond_20a
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v21

    .line 3594
    .local v21, "neededUpperCase":I
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_24c

    .line 3595
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of uppercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3600
    :cond_24c
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v20

    .line 3601
    .local v20, "neededSymbols":I
    move/from16 v0, v30

    move/from16 v1, v20

    if-ge v0, v1, :cond_28e

    .line 3602
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of special symbols "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of special symbols "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3606
    :cond_28e
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v18

    .line 3607
    .local v18, "neededNonLetter":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_2d0

    .line 3608
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of non-letter characters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_a

    .line 3614
    .end local v8    # "i":I
    .end local v14    # "letters":I
    .end local v15    # "lowercase":I
    .end local v16    # "neededLetters":I
    .end local v17    # "neededLowerCase":I
    .end local v18    # "neededNonLetter":I
    .end local v19    # "neededNumbers":I
    .end local v20    # "neededSymbols":I
    .end local v21    # "neededUpperCase":I
    .end local v23    # "nonletter":I
    .end local v24    # "numbers":I
    .end local v30    # "symbols":I
    .end local v31    # "uppercase":I
    :cond_2d0
    monitor-exit p0
    :try_end_2d1
    .catchall {:try_start_92 .. :try_end_2d1} :catchall_82

    .line 3616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3617
    .local v7, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v26

    .line 3618
    .local v26, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    if-ltz v33, :cond_2fb

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v7, :cond_2fb

    .line 3619
    const-string v33, "DevicePolicyManagerService"

    const-string/jumbo v34, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    const/16 v33, 0x0

    goto/16 :goto_a

    .line 3625
    :cond_2fb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3629
    .local v10, "ident":J
    :try_start_2ff
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string/jumbo v34, "persona"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PersonaManager;

    .line 3630
    .local v25, "pm":Landroid/os/PersonaManager;
    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    .line 3631
    .local v9, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v9, :cond_325

    iget-boolean v0, v9, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v33, v0
    :try_end_31c
    .catchall {:try_start_2ff .. :try_end_31c} :catchall_39a

    if-eqz v33, :cond_325

    .line 3632
    const/16 v33, 0x0

    .line 3650
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_a

    .line 3636
    :cond_325
    :try_start_325
    new-instance v32, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 3637
    .local v32, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v33

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 3638
    and-int/lit8 v33, p2, 0x1

    if-eqz v33, :cond_391

    const/16 v29, 0x1

    .line 3639
    .local v29, "requireEntry":Z
    :goto_345
    if-eqz v29, :cond_34c

    .line 3640
    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 3642
    :cond_34c
    monitor-enter p0
    :try_end_34d
    .catchall {:try_start_325 .. :try_end_34d} :catchall_39a

    .line 3643
    if-eqz v29, :cond_394

    move/from16 v22, v7

    .line 3644
    .local v22, "newOwner":I
    :goto_351
    :try_start_351
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v22

    if-eq v0, v1, :cond_36e

    .line 3645
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3646
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, saveSettingsLocked(IZ)V

    .line 3648
    :cond_36e
    monitor-exit p0
    :try_end_36f
    .catchall {:try_start_351 .. :try_end_36f} :catchall_397

    .line 3650
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3655
    new-instance v12, Landroid/content/Intent;

    const-string v33, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3656
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3661
    const/16 v33, 0x1

    goto/16 :goto_a

    .line 3638
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v22    # "newOwner":I
    .end local v29    # "requireEntry":Z
    :cond_391
    const/16 v29, 0x0

    goto :goto_345

    .line 3643
    .restart local v29    # "requireEntry":Z
    :cond_394
    const/16 v22, -0x1

    goto :goto_351

    .line 3648
    .restart local v22    # "newOwner":I
    :catchall_397
    move-exception v33

    :try_start_398
    monitor-exit p0
    :try_end_399
    .catchall {:try_start_398 .. :try_end_399} :catchall_397

    :try_start_399
    throw v33
    :try_end_39a
    .catchall {:try_start_399 .. :try_end_39a} :catchall_39a

    .line 3650
    .end local v9    # "info":Landroid/content/pm/PersonaInfo;
    .end local v22    # "newOwner":I
    .end local v25    # "pm":Landroid/os/PersonaManager;
    .end local v29    # "requireEntry":Z
    .end local v32    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_39a
    move-exception v33

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v33
.end method

.method public satisfyFIPSPassword(I)Z
    .registers 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v8, 0x6

    .line 8142
    iget-boolean v6, p0, mHasFeature:Z

    if-nez v6, :cond_7

    .line 8143
    const/4 v5, 0x0

    .line 8175
    :goto_6
    return v5

    .line 8146
    :cond_7
    invoke-virtual {p0, p1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 8147
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 8148
    .local v3, "mode":I
    const/4 v5, 0x0

    .line 8150
    .local v5, "ret":Z
    monitor-enter p0

    .line 8151
    :try_start_e
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8152
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_28

    .line 8153
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 8154
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v6, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v6, :cond_25

    .line 8155
    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 8152
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 8159
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_28
    const/high16 v6, 0x20000

    if-lt v3, v6, :cond_36

    .line 8160
    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-lt v6, v3, :cond_31

    .line 8161
    const/4 v5, 0x1

    .line 8174
    :cond_31
    :goto_31
    monitor-exit p0

    goto :goto_6

    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_33
    move-exception v6

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw v6

    .line 8163
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_36
    :try_start_36
    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_42

    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-lt v6, v8, :cond_42

    .line 8165
    const/4 v5, 0x1

    goto :goto_31

    .line 8168
    :cond_42
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, isSupportFingerprintForODE(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_31

    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const v7, 0x61000

    if-ne v6, v7, :cond_31

    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_33

    if-lt v6, v8, :cond_31

    .line 8171
    const/4 v5, 0x1

    goto :goto_31
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1481
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    .line 1485
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .registers 23
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1492
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1494
    const-string v2, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1495
    const-string v2, "expiration"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1497
    :cond_25
    if-eqz p3, :cond_2c

    .line 1498
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1500
    :cond_2c
    if-eqz p4, :cond_c1

    .line 1502
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1503
    .local v12, "identifier":I
    const/16 v2, 0x64

    if-lt v12, v2, :cond_85

    const/16 v2, 0xc8

    if-gt v12, v2, :cond_85

    .line 1504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1506
    .local v16, "token":J
    :try_start_42
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v13

    .line 1507
    .local v13, "isUserRunning":Z
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserRunning -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    if-nez v13, :cond_82

    .line 1509
    const-string v2, "DevicePolicyManagerService"

    const-string/jumbo v4, "result.onReceive called"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_7e} :catch_9b
    .catchall {:try_start_42 .. :try_end_7e} :catchall_bc

    .line 1516
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    .end local v12    # "identifier":I
    .end local v13    # "isUserRunning":Z
    .end local v16    # "token":J
    :goto_81
    return-void

    .line 1516
    .restart local v12    # "identifier":I
    .restart local v13    # "isUserRunning":Z
    .restart local v16    # "token":J
    :cond_82
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1520
    .end local v13    # "isUserRunning":Z
    .end local v16    # "token":J
    :cond_85
    :goto_85
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mHandler:Landroid/os/Handler;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_81

    .line 1513
    .restart local v16    # "token":J
    :catch_9b
    move-exception v11

    .line 1514
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_9c
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_9c .. :try_end_b8} :catchall_bc

    .line 1516
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_85

    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_bc
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1525
    .end local v12    # "identifier":I
    .end local v16    # "token":J
    :cond_c1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    .line 1527
    .local v15, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    .line 1528
    .local v14, "persona":Landroid/os/PersonaManager;
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1530
    :try_start_dc
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z

    move-result v13

    .line 1531
    .restart local v13    # "isUserRunning":Z
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserRunning -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    if-nez v13, :cond_105

    .line 1533
    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_105} :catch_12e

    .line 1540
    .end local v13    # "isUserRunning":Z
    :cond_105
    :goto_105
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending admin enabled broadcast intent to user -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_81

    .line 1535
    :catch_12e
    move-exception v11

    .line 1536
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1549
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1550
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1551
    .local v1, "count":I
    if-lez v1, :cond_25

    .line 1552
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_25

    .line 1553
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1554
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1555
    invoke-virtual {p0, v0, p1}, sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1552
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1559
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    .line 7721
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 7737
    :goto_4
    return-void

    .line 7724
    :cond_5
    monitor-enter p0

    .line 7725
    if-nez p1, :cond_13

    .line 7726
    :try_start_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7736
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1

    .line 7728
    :cond_13
    const/4 v1, -0x1

    :try_start_14
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7730
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_29

    .line 7731
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7735
    :goto_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, saveSettingsLocked(IZ)V

    .line 7736
    monitor-exit p0

    goto :goto_4

    .line 7733
    :cond_29
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_10

    goto :goto_1f
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2365
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_5

    .line 2369
    :goto_4
    return-void

    .line 2368
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    goto :goto_4
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .registers 16
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "userHandle"    # I

    .prologue
    .line 4294
    iget-boolean v3, p0, mHasFeature:Z

    if-nez v3, :cond_5

    .line 4363
    :goto_4
    return-void

    .line 4297
    :cond_5
    invoke-direct {p0, p9}, enforceCrossUserPermission(I)V

    .line 4299
    invoke-direct {p0, p9}, isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4300
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "It is KnoxWorkspace skip enforceNotManagedProfile: setActivePasswordState"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    :goto_15
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    invoke-virtual {p0, p9}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 4311
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/high16 v3, 0x70000

    if-ne p1, v3, :cond_51

    .line 4312
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 4313
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality constant: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4302
    .end local v2    # "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4a
    const-string/jumbo v3, "set the active password"

    invoke-direct {p0, p9, v3}, enforceNotManagedProfile(ILjava/lang/String;)V

    goto :goto_15

    .line 4316
    .restart local v2    # "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_51
    invoke-static {p1}, validateQualityConstant(I)V

    .line 4323
    :cond_54
    monitor-enter p0

    .line 4324
    :try_start_55
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_79

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_b6

    .line 4331
    :cond_79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_b9

    move-result-wide v0

    .line 4334
    .local v0, "ident":J
    const v3, 0x61000

    if-ne p1, v3, :cond_8e

    :try_start_82
    invoke-direct {p0, p9}, isSupportFP(I)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 4335
    const/4 p2, 0x0

    .line 4336
    const/4 p3, 0x0

    .line 4337
    const/4 p5, 0x0

    .line 4338
    const/4 p4, 0x0

    .line 4339
    const/4 p6, 0x0

    .line 4340
    const/4 p8, 0x0

    .line 4343
    :cond_8e
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 4344
    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 4345
    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 4346
    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 4347
    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 4348
    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 4349
    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 4350
    iput p8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 4351
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 4352
    const/4 v3, 0x0

    invoke-direct {p0, p9, v3}, saveSettingsLocked(IZ)V

    .line 4353
    invoke-direct {p0, p9}, updatePasswordExpirationsLocked(I)V

    .line 4354
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 4355
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p9}, sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_b3
    .catchall {:try_start_82 .. :try_end_b3} :catchall_bc

    .line 4359
    :try_start_b3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4362
    .end local v0    # "ident":J
    :cond_b6
    monitor-exit p0

    goto/16 :goto_4

    :catchall_b9
    move-exception v3

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_b9

    throw v3

    .line 4359
    .restart local v0    # "ident":J
    :catchall_bc
    move-exception v3

    :try_start_bd
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_b9
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 5396
    invoke-virtual {p0, p1, p2}, getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5397
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_7

    .line 5416
    :goto_6
    return-void

    .line 5402
    :cond_7
    invoke-virtual {p0, p1, p2}, findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    .line 5403
    .local v1, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v1, :cond_26

    .line 5404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5407
    :cond_26
    monitor-enter p0

    .line 5408
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3d

    move-result-wide v2

    .line 5410
    .local v2, "ident":J
    :try_start_2b
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 5411
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, saveSettingsLocked(IZ)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_40

    .line 5413
    :try_start_38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5415
    monitor-exit p0

    goto :goto_6

    .end local v2    # "ident":J
    :catchall_3d
    move-exception v4

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v4

    .line 5413
    .restart local v2    # "ident":J
    :catchall_40
    move-exception v4

    :try_start_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_3d
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 6176
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 6178
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 6180
    if-nez p1, :cond_12

    .line 6181
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6204
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 6185
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6186
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    monitor-exit p0

    .line 6205
    :goto_26
    return-void

    .line 6190
    :cond_27
    const/16 v4, 0x16

    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6193
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 6194
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    .line 6195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v2

    .line 6198
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_40
    invoke-direct {p0, p3, v4}, saveSettingsLocked(IZ)V

    .line 6199
    invoke-virtual {p0, p3}, manageAllowThirdPartyApps(I)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4b

    .line 6201
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6204
    .end local v2    # "ident":J
    :cond_49
    monitor-exit p0

    goto :goto_26

    .line 6201
    .restart local v2    # "ident":J
    :catchall_4b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_f
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 5803
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5804
    monitor-enter p0

    .line 5805
    if-nez p1, :cond_11

    .line 5806
    :try_start_6
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5823
    :catchall_e
    move-exception v4

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v4

    .line 5808
    :cond_11
    const/16 v4, 0x11

    :try_start_13
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5810
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v1, 0x0

    .line 5811
    .local v1, "isBTchanged":Z
    iget v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v4, p2, :cond_29

    .line 5812
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 5813
    const/4 v1, 0x1

    .line 5815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_e

    move-result-wide v2

    .line 5817
    .local v2, "ident":J
    :try_start_23
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_32

    .line 5819
    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5822
    .end local v2    # "ident":J
    :cond_29
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v4}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 5823
    monitor-exit p0

    .line 5824
    return-void

    .line 5819
    .restart local v2    # "ident":J
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_e
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5706
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5707
    monitor-enter p0

    .line 5708
    if-nez p1, :cond_11

    .line 5709
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5723
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5711
    :cond_11
    const/16 v1, 0xf

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5713
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v1, p2, :cond_28

    .line 5714
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 5716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5718
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5720
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5723
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5724
    return-void

    .line 5720
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5558
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0, p3}, setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 5559
    return-void

    .line 5558
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5864
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5865
    monitor-enter p0

    .line 5866
    if-nez p1, :cond_11

    .line 5867
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5881
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5869
    :cond_11
    const/16 v1, 0x12

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5871
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v1, p2, :cond_28

    .line 5872
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 5874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5876
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5878
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5881
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5882
    return-void

    .line 5878
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5748
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5749
    monitor-enter p0

    .line 5750
    if-nez p1, :cond_11

    .line 5751
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5765
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5753
    :cond_11
    const/16 v1, 0x10

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5755
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v1, p2, :cond_28

    .line 5756
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 5758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5760
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5762
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5765
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5766
    return-void

    .line 5762
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5919
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5920
    monitor-enter p0

    .line 5921
    if-nez p1, :cond_11

    .line 5922
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5936
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5924
    :cond_11
    const/16 v1, 0x13

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5926
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v1, p2, :cond_28

    .line 5927
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 5929
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5931
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5933
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5936
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5937
    return-void

    .line 5933
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5664
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5665
    monitor-enter p0

    .line 5666
    if-nez p1, :cond_11

    .line 5667
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5681
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5669
    :cond_11
    const/16 v1, 0xe

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5671
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v1, p2, :cond_28

    .line 5672
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 5674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5676
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5678
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5681
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5682
    return-void

    .line 5678
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5460
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5461
    monitor-enter p0

    .line 5462
    if-nez p1, :cond_11

    .line 5463
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5477
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5465
    :cond_11
    const/16 v1, 0xb

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5467
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v1, p2, :cond_28

    .line 5468
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 5470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5472
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5474
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5477
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5478
    return-void

    .line 5474
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5622
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5623
    monitor-enter p0

    .line 5624
    if-nez p1, :cond_11

    .line 5625
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5639
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5627
    :cond_11
    const/16 v1, 0xd

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5629
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v1, p2, :cond_28

    .line 5630
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 5632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5634
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5636
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5639
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5640
    return-void

    .line 5636
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 6469
    monitor-enter p0

    .line 6470
    if-nez p1, :cond_e

    .line 6471
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6499
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 6474
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 6475
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    monitor-exit p0

    .line 6500
    :goto_22
    return-void

    .line 6478
    :cond_23
    const/4 v1, 0x0

    .line 6479
    .local v1, "handle":Z
    const/16 v4, 0x19

    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6481
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    if-eq v4, p2, :cond_4d

    .line 6482
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    .line 6483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_b

    move-result-wide v2

    .line 6485
    .local v2, "ident":J
    if-nez p2, :cond_43

    .line 6487
    :try_start_36
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6490
    const/4 v1, 0x1

    .line 6492
    :cond_43
    invoke-virtual {p0, v1, p3}, handleAllowUnsignedApp(ZI)V

    .line 6494
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, saveSettingsLocked(IZ)V
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_4f

    .line 6496
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6499
    .end local v2    # "ident":J
    :cond_4d
    monitor-exit p0

    goto :goto_22

    .line 6496
    .restart local v2    # "ident":J
    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_b
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 6577
    monitor-enter p0

    .line 6578
    if-nez p1, :cond_e

    .line 6579
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6602
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 6582
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 6583
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Not Email Admin not proceeding."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6584
    monitor-exit p0

    .line 6603
    :goto_22
    return-void

    .line 6586
    :cond_23
    const/16 v1, 0x1a

    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6589
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    if-eq v1, p2, :cond_48

    .line 6590
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    .line 6591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6593
    .local v2, "ident":J
    if-nez p2, :cond_41

    .line 6594
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_b

    .line 6597
    :cond_41
    const/4 v1, 0x0

    :try_start_42
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4a

    .line 6599
    :try_start_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6602
    .end local v2    # "ident":J
    :cond_48
    monitor-exit p0

    goto :goto_22

    .line 6599
    .restart local v2    # "ident":J
    :catchall_4a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_b
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5566
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5567
    monitor-enter p0

    .line 5568
    if-nez p1, :cond_11

    .line 5569
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5583
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5571
    :cond_11
    const/16 v1, 0xc

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5573
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v1, p2, :cond_28

    .line 5574
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 5576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5578
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5580
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5583
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5584
    return-void

    .line 5580
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setAlternativePasswordState(IIIIIIII)V
    .registers 15
    .param p1, "length"    # I
    .param p2, "letters"    # I
    .param p3, "uppercase"    # I
    .param p4, "lowercase"    # I
    .param p5, "numbers"    # I
    .param p6, "symbols"    # I
    .param p7, "nonletter"    # I
    .param p8, "userHandle"    # I

    .prologue
    .line 4264
    invoke-direct {p0, p8}, isSupportFP(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4289
    :goto_6
    return-void

    .line 4265
    :cond_7
    invoke-direct {p0, p8}, enforceCrossUserPermission(I)V

    .line 4266
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    invoke-virtual {p0, p8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 4269
    .local v2, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 4270
    :try_start_17
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    if-ne v3, p1, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    if-ne v3, p2, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    if-ne v3, p3, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    if-ne v3, p4, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    if-ne v3, p5, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    if-ne v3, p6, :cond_33

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    if-eq v3, p7, :cond_4c

    .line 4274
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_4e

    move-result-wide v0

    .line 4276
    .local v0, "ident":J
    :try_start_37
    iput p1, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLength:I

    .line 4277
    iput p2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLetters:I

    .line 4278
    iput p4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordLowerCase:I

    .line 4279
    iput p3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordUpperCase:I

    .line 4280
    iput p5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNumeric:I

    .line 4281
    iput p6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordSymbols:I

    .line 4282
    iput p7, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAlternativePasswordNonLetter:I

    .line 4283
    const/4 v3, 0x0

    invoke-direct {p0, p8, v3}, saveSettingsLocked(IZ)V
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_51

    .line 4285
    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4288
    .end local v0    # "ident":J
    :cond_4c
    monitor-exit p0

    goto :goto_6

    :catchall_4e
    move-exception v3

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_4e

    throw v3

    .line 4285
    .restart local v0    # "ident":J
    :catchall_51
    move-exception v3

    :try_start_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_4e
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    .line 7565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7566
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 7567
    if-nez p1, :cond_12

    .line 7568
    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7583
    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    .line 7570
    :cond_12
    const/4 v5, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_f

    move-result-wide v2

    .line 7574
    .local v2, "id":J
    :try_start_1a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 7575
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_27
    .catchall {:try_start_1a .. :try_end_21} :catchall_35

    move-result v5

    .line 7580
    :try_start_22
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_f

    .line 7582
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_26
    return v5

    .line 7576
    :catch_27
    move-exception v4

    .line 7578
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setApplicationHiddenSetting"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 7580
    :try_start_2f
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 7582
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_26

    .line 7580
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_35
    move-exception v5

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v5
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_f
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 6860
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 6862
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 6863
    if-nez p1, :cond_17

    .line 6864
    :try_start_c
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6874
    :catchall_14
    move-exception v3

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v3

    .line 6866
    :cond_17
    const/4 v3, -0x1

    :try_start_18
    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_14

    move-result-wide v0

    .line 6870
    .local v0, "id":J
    :try_start_1f
    iget-object v3, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_29

    .line 6872
    :try_start_24
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 6874
    monitor-exit p0

    .line 6875
    return-void

    .line 6872
    :catchall_29
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_14
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;IZ)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "required"    # Z

    .prologue
    .line 4801
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 4827
    :cond_4
    :goto_4
    return-void

    .line 4804
    :cond_5
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 4805
    monitor-enter p0

    .line 4806
    if-nez p1, :cond_16

    .line 4807
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4815
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 4809
    :cond_16
    const/4 v1, -0x2

    :try_start_17
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4811
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eq v1, p3, :cond_25

    .line 4812
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 4813
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, saveSettingsLocked(IZ)V

    .line 4815
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    .line 4818
    if-eqz p3, :cond_4

    .line 4819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4821
    .local v2, "ident":J
    :try_start_2c
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_time"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3c

    .line 4824
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_3c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 6371
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    .line 6373
    .local v1, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 6374
    if-nez p1, :cond_12

    .line 6375
    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6397
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    .line 6379
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6380
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6381
    monitor-exit p0

    .line 6398
    :goto_26
    return-void

    .line 6383
    :cond_27
    const/16 v4, 0x17

    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6385
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 6387
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    .line 6389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v2

    .line 6391
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_40
    invoke-direct {p0, p3, v4}, saveSettingsLocked(IZ)V

    .line 6392
    invoke-virtual {p0, p3}, manageBlockedApplications(I)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4b

    .line 6394
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6397
    .end local v2    # "ident":J
    :cond_49
    monitor-exit p0

    goto :goto_26

    .line 6394
    .restart local v2    # "ident":J
    :catchall_4b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_f
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 4854
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 4870
    :goto_4
    return-void

    .line 4857
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 4858
    monitor-enter p0

    .line 4859
    if-nez p1, :cond_16

    .line 4860
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4869
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 4862
    :cond_16
    const/16 v1, 0x8

    :try_start_18
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4864
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_26

    .line 4865
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 4866
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 4868
    :cond_26
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 4869
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_13

    goto :goto_4
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 7812
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 7826
    :goto_4
    return-void

    .line 7815
    :cond_5
    monitor-enter p0

    .line 7816
    if-nez p1, :cond_13

    .line 7817
    :try_start_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7825
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1

    .line 7819
    :cond_13
    const/4 v1, -0x1

    :try_start_14
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7821
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eq v1, p2, :cond_26

    .line 7822
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 7823
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, saveSettingsLocked(IZ)V

    .line 7825
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_10

    goto :goto_4
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 4960
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_7

    .line 4961
    const/4 v0, 0x0

    .line 4988
    :goto_6
    return v0

    .line 4963
    :cond_7
    if-eqz p1, :cond_15

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 4965
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4968
    :cond_34
    monitor-enter p0

    .line 4969
    :try_start_35
    invoke-direct {p0}, allowedToSetDeviceOwnerOnDevice()Z

    move-result v1

    if-nez v1, :cond_46

    .line 4970
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to set device owner but device is already provisioned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4990
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw v0

    .line 4974
    :cond_46
    :try_start_46
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_5a

    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4975
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to set device owner but device owner is already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4979
    :cond_5a
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v1, :cond_6b

    .line 4981
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v1

    iput-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 4982
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4983
    monitor-exit p0

    goto :goto_6

    .line 4986
    :cond_6b
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4988
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_46 .. :try_end_76} :catchall_43

    goto :goto_6
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1291
    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v12

    .line 1292
    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1293
    .local v14, "now":J
    sub-long v16, v12, v14

    .line 1295
    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_68

    .line 1297
    const-wide/16 v8, 0x0

    .line 1311
    .local v8, "alarmTime":J
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1313
    .local v18, "token":J
    :try_start_24
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 1314
    .local v10, "am":Landroid/app/AlarmManager;
    const/16 v20, 0x15c3

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1318
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1319
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_64

    .line 1320
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_85

    .line 1323
    :cond_64
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    return-void

    .line 1298
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_68
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_74

    .line 1300
    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .restart local v8    # "alarmTime":J
    goto :goto_20

    .line 1304
    .end local v8    # "alarmTime":J
    :cond_74
    const-wide/32 v20, 0x5265c00

    rem-long v6, v16, v20

    .line 1305
    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_82

    .line 1306
    const-wide/32 v6, 0x5265c00

    .line 1308
    :cond_82
    add-long v8, v14, v6

    .restart local v8    # "alarmTime":J
    goto :goto_20

    .line 1323
    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_85
    move-exception v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 4461
    iget-boolean v8, p0, mHasFeature:Z

    if-nez v8, :cond_6

    .line 4462
    const/4 v3, 0x0

    .line 4512
    :goto_5
    return-object v3

    .line 4464
    :cond_6
    invoke-direct {p0, p4}, enforceCrossUserPermission(I)V

    .line 4465
    monitor-enter p0

    .line 4466
    if-nez p1, :cond_17

    .line 4467
    :try_start_c
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4513
    :catchall_14
    move-exception v8

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v8

    .line 4471
    :cond_17
    const/4 v8, 0x0

    :try_start_18
    invoke-virtual {p0, v8}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 4472
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4477
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4478
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4479
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4480
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2b

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 4483
    monitor-exit p0

    goto :goto_5

    .line 4488
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_4b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_72

    .line 4489
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_5

    .line 4493
    :cond_72
    if-nez p2, :cond_8b

    .line 4494
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 4495
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 4496
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 4506
    :goto_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_80
    .catchall {:try_start_18 .. :try_end_80} :catchall_14

    move-result-wide v6

    .line 4508
    .local v6, "origId":J
    :try_start_81
    invoke-direct {p0, v5}, resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_93

    .line 4510
    :try_start_84
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4512
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_5

    .line 4499
    .end local v6    # "origId":J
    :cond_8b
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 4500
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 4501
    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto :goto_7d

    .line 4510
    .restart local v6    # "origId":J
    :catchall_93
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_98
    .catchall {:try_start_84 .. :try_end_98} :catchall_14
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 7950
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7952
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 7953
    if-nez p1, :cond_14

    .line 7954
    :try_start_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7969
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1

    .line 7956
    :cond_14
    const/4 v1, -0x2

    :try_start_15
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7958
    sget-object v1, GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 7959
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Permission denial: device owners cannot update %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7963
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_11

    move-result-wide v2

    .line 7965
    .local v2, "id":J
    :try_start_36
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    .line 7967
    :try_start_39
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    .line 7969
    monitor-exit p0

    .line 7970
    return-void

    .line 7967
    :catchall_3e
    move-exception v1

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_11
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 4912
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 4929
    :goto_4
    return-void

    .line 4915
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 4916
    const-string v1, "disable keyguard features"

    invoke-direct {p0, p3, v1}, enforceNotManagedProfile(ILjava/lang/String;)V

    .line 4917
    monitor-enter p0

    .line 4918
    if-nez p1, :cond_1b

    .line 4919
    :try_start_10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4928
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1

    .line 4921
    :cond_1b
    const/16 v1, 0x9

    :try_start_1d
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4923
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2b

    .line 4924
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 4925
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 4927
    :cond_2b
    invoke-virtual {p0, p3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 4928
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_18

    goto :goto_4
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 7862
    monitor-enter p0

    .line 7863
    if-nez p1, :cond_e

    .line 7864
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7880
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 7866
    :cond_e
    const/4 v4, -0x2

    :try_start_f
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7868
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 7869
    .local v3, "userHandle":I
    invoke-virtual {p0, v3}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 7870
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 7871
    if-eqz p2, :cond_33

    .line 7872
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_26
    array-length v4, p2

    if-ge v0, v4, :cond_33

    .line 7873
    aget-object v1, p2, v0

    .line 7874
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7872
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 7879
    .end local v0    # "j":I
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_33
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, saveSettingsLocked(IZ)V

    .line 7880
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_b

    .line 7881
    return-void
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    .line 8005
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8007
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 8008
    if-nez p1, :cond_14

    .line 8009
    :try_start_9
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8020
    :catchall_11
    move-exception v3

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3

    .line 8011
    :cond_14
    const/4 v3, -0x1

    :try_start_15
    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 8013
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_11

    move-result-object v1

    .line 8016
    .local v1, "iAudioService":Landroid/media/IAudioService;
    const/4 v3, 0x0

    :try_start_23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, p2, v3, v4, v5}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2b} :catch_2d
    .catchall {:try_start_23 .. :try_end_2b} :catchall_11

    .line 8020
    :goto_2b
    :try_start_2b
    monitor-exit p0

    .line 8021
    return-void

    .line 8017
    :catch_2d
    move-exception v2

    .line 8018
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failed to setMasterMute"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_11

    goto :goto_2b
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3417
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3446
    :goto_4
    return-void

    .line 3420
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 3421
    monitor-enter p0

    .line 3422
    if-nez p1, :cond_16

    .line 3423
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3445
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3430
    :cond_16
    const/4 v1, 0x4

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3432
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3441
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_29

    .line 3442
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 3443
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3445
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_13

    goto :goto_4
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 3665
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3689
    :goto_4
    return-void

    .line 3668
    :cond_5
    invoke-direct {p0, p4}, enforceCrossUserPermission(I)V

    .line 3669
    monitor-enter p0

    .line 3670
    if-nez p1, :cond_16

    .line 3671
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3688
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3676
    :cond_16
    const/4 v1, 0x3

    :try_start_17
    invoke-virtual {p0, p1, v1, p4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3683
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v2, p2

    if-eqz v1, :cond_2e

    .line 3684
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 3685
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, saveSettingsLocked(IZ)V

    .line 3686
    invoke-virtual {p0, p4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3688
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_13

    goto :goto_4
.end method

.method public setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;ZI)V
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 8394
    iget-boolean v0, p0, mHasFeature:Z

    if-nez v0, :cond_5

    .line 8399
    :goto_4
    return-void

    .line 8397
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 8398
    sput-boolean p2, mNeedToGetAlternativePasswdForODE:Z

    goto :goto_4
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 2740
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_7

    .line 2774
    :goto_6
    return-void

    .line 2743
    :cond_7
    invoke-direct {p0, p4}, enforceCrossUserPermission(I)V

    .line 2744
    monitor-enter p0

    .line 2745
    if-nez p1, :cond_18

    .line 2746
    :try_start_d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2773
    :catchall_15
    move-exception v1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1

    .line 2748
    :cond_18
    cmp-long v1, p2, v4

    if-gez v1, :cond_24

    .line 2749
    :try_start_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2754
    :cond_24
    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, p4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2762
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v1, p2, v4

    if-lez v1, :cond_72

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, p2, v6

    .line 2763
    .local v2, "expiration":J
    :goto_33
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2764
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2765
    cmp-long v1, p2, v4

    if-lez v1, :cond_63

    .line 2766
    const-string v1, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_63
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, saveSettingsLocked(IZ)V

    .line 2772
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2773
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_1c .. :try_end_71} :catchall_15

    goto :goto_6

    .end local v2    # "expiration":J
    :cond_72
    move-wide v2, v4

    .line 2762
    goto :goto_33
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2678
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 2701
    :goto_4
    return-void

    .line 2681
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2682
    monitor-enter p0

    .line 2683
    if-nez p1, :cond_16

    .line 2684
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2700
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2689
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2696
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_25

    .line 2697
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2698
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 2700
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2616
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 2639
    :goto_4
    return-void

    .line 2619
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2620
    monitor-enter p0

    .line 2621
    if-nez p1, :cond_16

    .line 2622
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2638
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2627
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2634
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_25

    .line 2635
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2636
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 2638
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3051
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3074
    :goto_4
    return-void

    .line 3054
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 3055
    monitor-enter p0

    .line 3056
    if-nez p1, :cond_16

    .line 3057
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3073
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3062
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3069
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_25

    .line 3070
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 3071
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3073
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2992
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2993
    monitor-enter p0

    .line 2994
    if-nez p1, :cond_11

    .line 2995
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3011
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 3000
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3007
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_20

    .line 3008
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 3009
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3011
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_e

    .line 3012
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3237
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3260
    :goto_4
    return-void

    .line 3240
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 3241
    monitor-enter p0

    .line 3242
    if-nez p1, :cond_16

    .line 3243
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3259
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3248
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3255
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_25

    .line 3256
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 3257
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3259
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3113
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3136
    :goto_4
    return-void

    .line 3116
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 3117
    monitor-enter p0

    .line 3118
    if-nez p1, :cond_16

    .line 3119
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3135
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3124
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3131
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_25

    .line 3132
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 3133
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3135
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3175
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 3198
    :goto_4
    return-void

    .line 3178
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 3179
    monitor-enter p0

    .line 3180
    if-nez p1, :cond_16

    .line 3181
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3197
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 3186
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3193
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_25

    .line 3194
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 3195
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 3197
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2931
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 2954
    :goto_4
    return-void

    .line 2934
    :cond_5
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2935
    monitor-enter p0

    .line 2936
    if-nez p1, :cond_16

    .line 2937
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2953
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 2942
    :cond_16
    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p0, p1, v1, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2949
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_25

    .line 2950
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2951
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V

    .line 2953
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_13

    goto :goto_4
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2530
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_5

    .line 2577
    :goto_4
    return-void

    .line 2536
    :cond_5
    const/high16 v4, 0x70000

    if-ne p2, v4, :cond_5a

    .line 2537
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2538
    .local v1, "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2540
    .local v2, "ident":J
    :try_start_14
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v4

    if-nez v4, :cond_46

    .line 2542
    :cond_24
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid quality constant: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_41

    .line 2545
    :catchall_41
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2555
    .end local v1    # "scLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "ident":J
    :goto_49
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 2557
    monitor-enter p0

    .line 2558
    if-nez p1, :cond_5e

    .line 2559
    :try_start_4f
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2576
    :catchall_57
    move-exception v4

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v4

    .line 2549
    :cond_5a
    invoke-static {p2}, validateQualityConstant(I)V

    goto :goto_49

    .line 2565
    :cond_5e
    const/4 v4, 0x0

    :try_start_5f
    invoke-virtual {p0, p1, v4, p3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2572
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v4, p2, :cond_6d

    .line 2573
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 2574
    const/4 v4, 0x0

    invoke-direct {p0, p3, v4}, saveSettingsLocked(IZ)V

    .line 2576
    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_57

    goto :goto_4
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5418
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5419
    monitor-enter p0

    .line 5420
    if-nez p1, :cond_11

    .line 5421
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5435
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5423
    :cond_11
    const/16 v1, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5425
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v1, p2, :cond_28

    .line 5426
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 5428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5430
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5432
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5435
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5436
    return-void

    .line 5432
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x0

    .line 7073
    iget-boolean v11, p0, mHasFeature:Z

    if-nez v11, :cond_6

    .line 7115
    :goto_5
    return v10

    .line 7076
    :cond_6
    if-nez p1, :cond_10

    .line 7077
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 7080
    :cond_10
    if-eqz p2, :cond_6b

    .line 7081
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 7082
    .local v9, "userId":I
    const/4 v3, 0x0

    .line 7083
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 7085
    .local v6, "id":J
    :try_start_1b
    iget-object v11, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 7086
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 7087
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 7089
    :cond_29
    invoke-direct {p0, v9}, getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 7090
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_58

    move-result-object v3

    .line 7093
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    .line 7096
    if-eqz v3, :cond_6b

    .line 7097
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7098
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 7099
    .local v5, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 7093
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_58
    move-exception v10

    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    throw v10

    .line 7101
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_5d
    invoke-direct {p0, v2, p2}, checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_6b

    .line 7102
    const-string v11, "DevicePolicyManagerService"

    const-string v12, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 7109
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":J
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_6b
    monitor-enter p0

    .line 7110
    const/4 v10, -0x1

    :try_start_6d
    invoke-virtual {p0, p1, v10}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 7112
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 7113
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, saveSettingsLocked(IZ)V

    .line 7114
    monitor-exit p0

    .line 7115
    const/4 v10, 0x1

    goto :goto_5

    .line 7114
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_7e
    move-exception v10

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_6d .. :try_end_80} :catchall_7e

    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 7233
    iget-boolean v7, p0, mHasFeature:Z

    if-nez v7, :cond_6

    .line 7273
    :cond_5
    :goto_5
    return v6

    .line 7236
    :cond_6
    if-nez p1, :cond_10

    .line 7237
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7242
    :cond_10
    invoke-direct {p0}, checkCallerIsCurrentUserOrProfile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7246
    if-eqz p2, :cond_53

    .line 7250
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 7252
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 7254
    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_53

    .line 7255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7256
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 7257
    .local v4, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 7259
    .end local v4    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_45
    invoke-direct {p0, v2, p2}, checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 7260
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods, because it contains already enabled input method."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 7267
    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_53
    monitor-enter p0

    .line 7268
    const/4 v6, -0x1

    :try_start_55
    invoke-virtual {p0, p1, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7270
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 7271
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, saveSettingsLocked(IZ)V

    .line 7272
    monitor-exit p0

    .line 7273
    const/4 v6, 0x1

    goto :goto_5

    .line 7272
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_66
    move-exception v6

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_66

    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5181
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_5

    .line 5207
    :goto_4
    return-void

    .line 5184
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 5185
    .local v3, "userHandle":I
    monitor-enter p0

    .line 5187
    if-nez p1, :cond_17

    .line 5188
    :try_start_c
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5206
    :catchall_14
    move-exception v5

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v5

    .line 5191
    :cond_17
    const/4 v5, -0x1

    :try_start_18
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5192
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5194
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_14

    move-result-wide v0

    .line 5196
    .local v0, "id":J
    :try_start_23
    iget-object v5, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 5197
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5198
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.USER"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5199
    const/high16 v5, 0x50000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5202
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_4a

    .line 5204
    :try_start_45
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 5206
    monitor-exit p0

    goto :goto_4

    .line 5204
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_4a
    move-exception v5

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v5
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_14
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 5211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5213
    .local v2, "userId":I
    if-nez p1, :cond_e

    .line 5214
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5218
    :cond_e
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5222
    .local v0, "id":J
    :try_start_16
    iget-object v3, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 5224
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 5226
    return-void

    .line 5224
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5082
    iget-boolean v3, p0, mHasFeature:Z

    if-nez v3, :cond_7

    .line 5125
    :goto_6
    return v1

    .line 5085
    :cond_7
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_USERS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5087
    invoke-direct {p0, p3}, isKnoxWorkspace(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 5088
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to set profile owner for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exiting.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5092
    :cond_35
    iget-object v1, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5093
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_56

    .line 5095
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set profile owner for invalid userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5098
    :cond_56
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 5099
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set a profile owner on a guest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5102
    :cond_64
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_93

    .line 5104
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not installed for userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5107
    :cond_93
    monitor-enter p0

    .line 5109
    :try_start_94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_b1

    invoke-direct {p0, p3}, hasUserSetupCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 5111
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to set profile owner but user is already set-up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5127
    :catchall_ae
    move-exception v1

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_ae

    throw v1

    .line 5115
    :cond_b1
    :try_start_b1
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v1, :cond_c4

    .line 5117
    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v1

    iput-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 5119
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 5120
    monitor-exit p0

    move v1, v2

    goto/16 :goto_6

    .line 5123
    :cond_c4
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 5124
    iget-object v1, p0, mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 5125
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_b1 .. :try_end_cf} :catchall_ae

    move v1, v2

    goto/16 :goto_6
.end method

.method public setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 8308
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_6

    .line 8338
    :cond_5
    :goto_5
    return v4

    .line 8311
    :cond_6
    invoke-direct {p0, p4}, enforceCrossUserPermission(I)V

    .line 8312
    const/4 v1, 0x0

    .line 8315
    .local v1, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 8316
    .local v3, "service":Landroid/os/IBinder;
    if-eqz v3, :cond_20

    .line 8317
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 8318
    if-nez v1, :cond_28

    .line 8319
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount interface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8323
    :cond_20
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t get mount service"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8328
    :cond_28
    :try_start_28
    invoke-interface {v1, p2, p3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_30

    move-result v2

    .line 8329
    .local v2, "ret":I
    if-nez v2, :cond_5

    .line 8330
    const/4 v4, 0x1

    goto :goto_5

    .line 8334
    .end local v2    # "ret":I
    :catch_30
    move-exception v0

    .line 8335
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Can\'t set PropertyIntoFooter"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 4540
    monitor-enter p0

    .line 4541
    const/4 v1, -0x2

    :try_start_2
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4542
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1b

    .line 4543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4545
    .local v2, "token":J
    :try_start_a
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4547
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1e

    .line 4549
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4551
    return-void

    .line 4542
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 4549
    .restart local v2    # "token":J
    :catchall_1e
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 6096
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 6097
    monitor-enter p0

    .line 6098
    if-nez p1, :cond_11

    .line 6099
    :try_start_6
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6118
    :catchall_e
    move-exception v5

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v5

    .line 6101
    :cond_11
    const/16 v5, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6104
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_30

    .line 6105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_e

    move-result-wide v2

    .line 6107
    .local v2, "ident":J
    :try_start_1e
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6108
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 6109
    .local v4, "mRecoveryPassword":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_32

    .line 6115
    :try_start_2d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6118
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "ident":J
    .end local v4    # "mRecoveryPassword":Ljava/lang/String;
    :cond_30
    monitor-exit p0

    .line 6120
    return-void

    .line 6115
    .restart local v2    # "ident":J
    :catchall_32
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_e
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5981
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5982
    monitor-enter p0

    .line 5983
    if-nez p1, :cond_11

    .line 5984
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5998
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5986
    :cond_11
    const/16 v1, 0x14

    :try_start_13
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5988
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v1, p2, :cond_28

    .line 5989
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 5991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v2

    .line 5993
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    .line 5995
    :try_start_25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5998
    .end local v2    # "ident":J
    :cond_28
    monitor-exit p0

    .line 5999
    return-void

    .line 5995
    .restart local v2    # "ident":J
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    .prologue
    .line 6949
    monitor-enter p0

    .line 6950
    if-nez p1, :cond_e

    .line 6951
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6959
    :catchall_b
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v2

    .line 6953
    :cond_e
    const/4 v2, -0x1

    :try_start_f
    invoke-virtual {p0, p1, v2}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 6955
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 6956
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 6957
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 6958
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, saveSettingsLocked(IZ)V

    .line 6959
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_b

    .line 6960
    return-void
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V
    .registers 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "disabled"    # Z

    .prologue
    .line 4742
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 4758
    :goto_4
    return-void

    .line 4745
    :cond_5
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 4746
    monitor-enter p0

    .line 4747
    if-nez p1, :cond_16

    .line 4748
    :try_start_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4757
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 4750
    :cond_16
    const/4 v1, -0x1

    :try_start_17
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4752
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eq v1, p3, :cond_28

    .line 4753
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 4754
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, saveSettingsLocked(IZ)V

    .line 4755
    invoke-direct {p0, p2, p3}, updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 4757
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_13

    goto :goto_4
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 7974
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 7975
    .local v1, "callingUserId":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7977
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 7978
    if-nez p1, :cond_18

    .line 7979
    :try_start_d
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8000
    :catchall_15
    move-exception v3

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v3

    .line 7981
    :cond_18
    const/4 v3, -0x1

    :try_start_19
    invoke-virtual {p0, p1, v3}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 7984
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 7985
    sget-object v3, SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 7986
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Device owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7989
    :cond_43
    sget-object v3, SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 7990
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Profile owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7994
    :cond_5d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_60
    .catchall {:try_start_19 .. :try_end_60} :catchall_15

    move-result-wide v4

    .line 7996
    .local v4, "id":J
    :try_start_61
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_69

    .line 7998
    :try_start_64
    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    .line 8000
    monitor-exit p0

    .line 8001
    return-void

    .line 7998
    :catchall_69
    move-exception v3

    invoke-static {v4, v5}, restoreCallingIdentity(J)V

    throw v3
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_15
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 5515
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 5516
    monitor-enter p0

    .line 5517
    if-nez p1, :cond_11

    .line 5518
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5532
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 5520
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5522
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v1, p2, :cond_27

    .line 5523
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 5525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_e

    move-result-wide v2

    .line 5527
    .local v2, "ident":J
    const/4 v1, 0x0

    :try_start_21
    invoke-direct {p0, p3, v1}, saveSettingsLocked(IZ)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    .line 5529
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5532
    .end local v2    # "ident":J
    :cond_27
    monitor-exit p0

    .line 5533
    return-void

    .line 5529
    .restart local v2    # "ident":J
    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 4601
    iget-boolean v6, p0, mHasFeature:Z

    if-nez v6, :cond_6

    .line 4644
    :goto_5
    return v5

    .line 4604
    :cond_6
    invoke-direct {p0, p3}, enforceCrossUserPermission(I)V

    .line 4605
    monitor-enter p0

    .line 4607
    if-nez p1, :cond_17

    .line 4608
    :try_start_c
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4647
    :catchall_14
    move-exception v5

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v5

    .line 4611
    :cond_17
    if-nez p3, :cond_1f

    :try_start_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_43

    .line 4613
    :cond_1f
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    monitor-exit p0

    goto :goto_5

    .line 4618
    :cond_43
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4622
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_50

    .line 4623
    monitor-exit p0

    goto :goto_5

    .line 4627
    :cond_50
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5a

    .line 4628
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 4629
    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, saveSettingsLocked(IZ)V

    .line 4632
    :cond_5a
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 4634
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 4635
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4636
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_67
    if-ge v2, v0, :cond_77

    .line 4637
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 4636
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 4641
    :cond_77
    invoke-direct {p0, v3}, setEncryptionRequested(Z)V

    .line 4644
    if-eqz v3, :cond_7f

    const/4 v5, 0x3

    :goto_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_19 .. :try_end_7e} :catchall_14

    goto :goto_5

    :cond_7f
    const/4 v5, 0x1

    goto :goto_7d
.end method

.method public setTrustAgentFeaturesEnabled(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p4, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6879
    .local p3, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, mHasFeature:Z

    if-nez v1, :cond_5

    .line 6897
    :goto_4
    return-void

    .line 6882
    :cond_5
    invoke-direct {p0, p4}, enforceCrossUserPermission(I)V

    .line 6883
    const-string v1, "manage trust agent features"

    invoke-direct {p0, p4, v1}, enforceNotManagedProfile(ILjava/lang/String;)V

    .line 6884
    monitor-enter p0

    .line 6885
    if-nez p1, :cond_1b

    .line 6886
    :try_start_10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "admin is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6896
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1

    .line 6888
    :cond_1b
    if-nez p2, :cond_25

    .line 6889
    :try_start_1d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "agent is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6891
    :cond_25
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 6893
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentFeatures:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6894
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, saveSettingsLocked(IZ)V

    .line 6895
    invoke-virtual {p0, p4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 6896
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_18

    goto :goto_4
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    .line 7765
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 7767
    .local v4, "userId":I
    monitor-enter p0

    .line 7768
    if-nez p1, :cond_12

    .line 7769
    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7783
    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    .line 7771
    :cond_12
    const/4 v5, -0x1

    :try_start_13
    invoke-virtual {p0, p1, v5}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_f

    move-result-wide v0

    .line 7775
    .local v0, "id":J
    :try_start_1a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 7776
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_26
    .catchall {:try_start_1a .. :try_end_21} :catchall_32

    .line 7781
    :try_start_21
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    .line 7783
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_f

    .line 7784
    return-void

    .line 7777
    :catch_26
    move-exception v3

    .line 7779
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_27
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_32

    .line 7781
    :try_start_2e
    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    goto :goto_24

    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_32
    move-exception v5

    invoke-static {v0, v1}, restoreCallingIdentity(J)V

    throw v5
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_f
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 20
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 7474
    new-instance v10, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-direct {v10, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 7475
    .local v10, "user":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 7476
    .local v11, "userHandle":I
    monitor-enter p0

    .line 7477
    if-nez p1, :cond_1b

    .line 7478
    :try_start_10
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "ComponentName is null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7559
    :catchall_18
    move-exception v12

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v12

    .line 7480
    :cond_1b
    const/4 v12, -0x1

    :try_start_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 7482
    .local v2, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, isDeviceOwner(Ljava/lang/String;)Z

    move-result v5

    .line 7483
    .local v5, "isDeviceOwner":Z
    if-nez v5, :cond_59

    if-eqz v11, :cond_59

    sget-object v12, DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 7485
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Profile owners cannot set user restriction "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7487
    :cond_59
    move-object/from16 v0, p0

    iget-object v12, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 7489
    .local v3, "alreadyRestricted":Z
    const/4 v4, 0x0

    .line 7490
    .local v4, "iAudioService":Landroid/media/IAudioService;
    const-string v12, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_78

    const-string v12, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    .line 7492
    :cond_78
    const-string v12, "audio"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_81
    .catchall {:try_start_1c .. :try_end_81} :catchall_18

    move-result-object v4

    .line 7496
    :cond_82
    if-eqz p3, :cond_98

    if-nez v3, :cond_98

    .line 7498
    :try_start_86
    const-string v12, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_df

    .line 7499
    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_98} :catch_f4
    .catchall {:try_start_86 .. :try_end_98} :catchall_18

    .line 7507
    :cond_98
    :goto_98
    :try_start_98
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_18

    move-result-wide v6

    .line 7509
    .local v6, "id":J
    if-eqz p3, :cond_b9

    if-nez v3, :cond_b9

    .line 7510
    :try_start_a0
    const-string v12, "no_config_wifi"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 7511
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "wifi_networks_available_notification_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7544
    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v12, v0, mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1, v10}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    :try_end_c4
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_11b

    .line 7546
    :try_start_c4
    invoke-static {v6, v7}, restoreCallingIdentity(J)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_18

    .line 7548
    if-nez p3, :cond_dd

    if-eqz v3, :cond_dd

    .line 7550
    :try_start_cb
    const-string v12, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ac

    .line 7551
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_dd} :catch_1c2
    .catchall {:try_start_cb .. :try_end_dd} :catchall_18

    .line 7559
    :cond_dd
    :goto_dd
    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_18

    .line 7560
    return-void

    .line 7500
    .end local v6    # "id":J
    :cond_df
    :try_start_df
    const-string v12, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 7501
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v4, v12, v13, v14, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_f3} :catch_f4
    .catchall {:try_start_df .. :try_end_f3} :catchall_18

    goto :goto_98

    .line 7503
    :catch_f4
    move-exception v9

    .line 7504
    .local v9, "re":Landroid/os/RemoteException;
    :try_start_f5
    const-string v12, "DevicePolicyManagerService"

    const-string v13, "Failed to talk to AudioService."

    invoke-static {v12, v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fc
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_18

    goto :goto_98

    .line 7514
    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v6    # "id":J
    :cond_fd
    :try_start_fd
    const-string v12, "no_usb_file_transfer"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_120

    .line 7515
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string/jumbo v13, "usb"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    .line 7517
    .local v8, "manager":Landroid/hardware/usb/UsbManager;
    const-string v12, "none"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_11a
    .catchall {:try_start_fd .. :try_end_11a} :catchall_11b

    goto :goto_b9

    .line 7546
    .end local v8    # "manager":Landroid/hardware/usb/UsbManager;
    :catchall_11b
    move-exception v12

    :try_start_11c
    invoke-static {v6, v7}, restoreCallingIdentity(J)V

    throw v12
    :try_end_120
    .catchall {:try_start_11c .. :try_end_120} :catchall_18

    .line 7518
    :cond_120
    :try_start_120
    const-string v12, "no_share_location"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    .line 7519
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "location_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7522
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "location_providers_allowed"

    const-string v14, ""

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_b9

    .line 7525
    :cond_149
    const-string v12, "no_debugging_features"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_166

    .line 7527
    if-nez v11, :cond_b9

    .line 7528
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "adb_enabled"

    const-string v14, "0"

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_b9

    .line 7531
    :cond_166
    const-string v12, "ensure_verify_apps"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_192

    .line 7532
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "package_verifier_enable"

    const-string v14, "1"

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 7535
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "verifier_verify_adb_installs"

    const-string v14, "1"

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_b9

    .line 7538
    :cond_192
    const-string v12, "no_install_unknown_sources"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 7539
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "install_non_market_apps"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14, v11}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1aa
    .catchall {:try_start_120 .. :try_end_1aa} :catchall_11b

    goto/16 :goto_b9

    .line 7552
    :cond_1ac
    :try_start_1ac
    const-string v12, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_dd

    .line 7553
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v4, v12, v13, v14, v15}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c0
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1c0} :catch_1c2
    .catchall {:try_start_1ac .. :try_end_1c0} :catchall_18

    goto/16 :goto_dd

    .line 7555
    :catch_1c2
    move-exception v9

    .line 7556
    .restart local v9    # "re":Landroid/os/RemoteException;
    :try_start_1c3
    const-string v12, "DevicePolicyManagerService"

    const-string v13, "Failed to talk to AudioService."

    invoke-static {v12, v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ca
    .catchall {:try_start_1c3 .. :try_end_1ca} :catchall_18

    goto/16 :goto_dd
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 7431
    monitor-enter p0

    .line 7432
    if-nez p1, :cond_e

    .line 7433
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7450
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 7435
    :cond_e
    const/4 v4, -0x2

    :try_start_f
    invoke-virtual {p0, p1, v4}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 7437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_b

    move-result-wide v2

    .line 7439
    .local v2, "id":J
    const/4 v1, 0x0

    .line 7440
    .local v1, "userId":I
    if-eqz p2, :cond_1d

    .line 7441
    :try_start_19
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 7443
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_2a
    .catchall {:try_start_19 .. :try_end_24} :catchall_38

    move-result v4

    .line 7448
    :try_start_25
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_b

    :goto_29
    return v4

    .line 7444
    :catch_2a
    move-exception v0

    .line 7445
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2b
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Couldn\'t switch user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_38

    .line 7446
    const/4 v4, 0x0

    .line 7448
    :try_start_33
    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_29

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, restoreCallingIdentity(J)V

    throw v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_b
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 12
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v9, 0x0

    .line 2125
    const-string/jumbo v7, "sys.secpolicy.camera.disabled"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2126
    .local v2, "systemState":Z
    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v9, v7}, getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 2128
    .local v1, "cameraDisabled":Z
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2129
    .local v3, "systemStateBT":I
    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v9, v7}, getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2131
    .local v0, "btMode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2134
    .local v4, "token":J
    if-eq v1, v2, :cond_2d

    .line 2135
    if-eqz v1, :cond_3e

    :try_start_25
    const-string v6, "1"

    .line 2138
    .local v6, "value":Ljava/lang/String;
    :goto_27
    const-string/jumbo v7, "sys.secpolicy.camera.disabled"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    .end local v6    # "value":Ljava/lang/String;
    :cond_2d
    if-eq v3, v0, :cond_3a

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3a

    .line 2141
    const-string/jumbo v7, "service.bt.security.policy.mode"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_41

    .line 2144
    :cond_3a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2146
    return-void

    .line 2135
    :cond_3e
    :try_start_3e
    const-string v6, "0"
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_27

    .line 2144
    :catchall_41
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 2149
    iget-boolean v4, p0, mHasFeature:Z

    if-nez v4, :cond_5

    .line 2169
    :cond_4
    return-void

    .line 2152
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 2153
    invoke-virtual {p0}, loadDeviceOwner()V

    .line 2154
    invoke-direct {p0}, cleanUpOldUsers()V

    .line 2156
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 2158
    invoke-virtual {p0}, updateUserSetupComplete()V

    .line 2161
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 2162
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2163
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_4

    .line 2164
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2165
    .local v2, "userHandle":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    invoke-direct {p0, v2, v4}, updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 2163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3862
    invoke-virtual {p0, p1}, enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3864
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 3865
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3867
    .local v2, "id":J
    :try_start_10
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_30
    .catchall {:try_start_10 .. :try_end_15} :catchall_48

    move-result-object v4

    .line 3869
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_16
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_24
    .catchall {:try_start_16 .. :try_end_1d} :catchall_43

    .line 3873
    :try_start_1d
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_30
    .catchall {:try_start_1d .. :try_end_20} :catchall_48

    .line 3879
    :goto_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3881
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_23
    return-void

    .line 3870
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_24
    move-exception v0

    .line 3871
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "from CaCertUninstaller: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_43

    .line 3873
    :try_start_2c
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_48

    goto :goto_20

    .line 3875
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_30
    move-exception v1

    .line 3876
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_31
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "CaCertUninstaller: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3877
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_48

    .line 3879
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 3873
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_43
    move-exception v6

    :try_start_44
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_48} :catch_30
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 3879
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_48
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 11
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 3692
    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v6, v7}, getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 3693
    .local v4, "timeMs":J
    iget-wide v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_e

    .line 3732
    :goto_d
    return-void

    .line 3697
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3699
    .local v2, "ident":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_42

    .line 3700
    const-wide/32 v4, 0x7fffffff

    .line 3708
    :goto_1b
    :try_start_1b
    iput-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_50

    .line 3713
    :try_start_1d
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 3714
    .local v1, "persona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_55

    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v1, v6}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 3715
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in personamanager manager this time"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_3e} :catch_65
    .catchall {:try_start_1d .. :try_end_3e} :catchall_50

    .line 3730
    .end local v1    # "persona":Landroid/os/PersonaManager;
    :goto_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 3704
    :cond_42
    :try_start_42
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    goto :goto_1b

    .line 3730
    :catchall_50
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 3718
    .restart local v1    # "persona":Landroid/os/PersonaManager;
    :cond_55
    :try_start_55
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Setting a timeout in power manager this time for non-container"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    invoke-direct {p0}, getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v6

    long-to-int v7, v4

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_64} :catch_65
    .catchall {:try_start_55 .. :try_end_64} :catchall_50

    goto :goto_3e

    .line 3726
    .end local v1    # "persona":Landroid/os/PersonaManager;
    :catch_65
    move-exception v0

    .line 3727
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failure talking with power manager"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_50

    goto :goto_3e
.end method

.method updateUserSetupComplete()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8048
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 8049
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8050
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 8051
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_3c

    .line 8052
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 8053
    .local v4, "userHandle":I
    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_36

    .line 8055
    invoke-virtual {p0, v4}, getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 8056
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v6, :cond_36

    .line 8057
    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 8058
    monitor-enter p0

    .line 8059
    const/4 v6, 0x0

    :try_start_32
    invoke-direct {p0, v4, v6}, saveSettingsLocked(IZ)V

    .line 8060
    monitor-exit p0

    .line 8051
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 8060
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_39
    move-exception v6

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v6

    .line 8064
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_3c
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2102
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_45

    .line 2103
    const/4 v0, 0x0

    .line 2104
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_20

    .line 2105
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    .line 2106
    const/4 v0, 0x1

    .line 2110
    :cond_20
    if-nez v0, :cond_45

    .line 2111
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2116
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_45
    return-void

    .line 2104
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public wipeData(II)V
    .registers 10
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 4084
    iget-boolean v5, p0, mHasFeature:Z

    if-nez v5, :cond_5

    .line 4122
    :goto_4
    return-void

    .line 4087
    :cond_5
    invoke-direct {p0, p2}, enforceCrossUserPermission(I)V

    .line 4088
    monitor-enter p0

    .line 4091
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_b
    invoke-virtual {p0, v5, v6}, getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4095
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_4a

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    if-eqz v5, :cond_4a

    .line 4096
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4097
    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_43

    .line 4098
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 4106
    .end local v1    # "cname":Landroid/content/ComponentName;
    .local v4, "source":Ljava/lang/String;
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_40

    move-result-wide v2

    .line 4115
    .local v2, "ident":J
    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DevicePolicyManager.wipeData() from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, wipeDeviceOrUserLocked(IILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_4d

    .line 4119
    :try_start_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4121
    monitor-exit p0

    goto :goto_4

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "ident":J
    .end local v4    # "source":Ljava/lang/String;
    :catchall_40
    move-exception v5

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    throw v5

    .line 4100
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    :cond_43
    :try_start_43
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "source":Ljava/lang/String;
    goto :goto_21

    .line 4103
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v4    # "source":Ljava/lang/String;
    :cond_4a
    const-string v4, "?"

    .restart local v4    # "source":Ljava/lang/String;
    goto :goto_21

    .line 4119
    .restart local v2    # "ident":J
    :catchall_4d
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_40
.end method

.method wipeDataLocked(ILjava/lang/String;)V
    .registers 13
    .param p1, "flags"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3958
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-direct {p0}, isExtStorageEncrypted()Z

    move-result v7

    if-eqz v7, :cond_4b

    move v2, v6

    .line 3959
    .local v2, "forceExtWipe":Z
    :goto_f
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_14

    move v5, v6

    .line 3963
    .local v5, "wipeExtRequested":Z
    :cond_14
    invoke-direct {p0}, findSDCard()Z

    move-result v4

    .line 3968
    .local v4, "isExtSDSupported":Z
    if-eqz v4, :cond_4d

    if-nez v2, :cond_1e

    if-eqz v5, :cond_4d

    .line 3969
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3970
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "always_reset"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3971
    const-string v6, "android.intent.extra.REASON"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3972
    sget-object v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3973
    invoke-direct {p0}, getExternalSD()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3974
    .local v1, "extSD":Landroid/os/storage/StorageVolume;
    const-string/jumbo v6, "storage_volume"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3975
    iget-object v6, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3976
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3986
    .end local v1    # "extSD":Landroid/os/storage/StorageVolume;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_4a
    return-void

    .end local v2    # "forceExtWipe":Z
    .end local v4    # "isExtSDSupported":Z
    .end local v5    # "wipeExtRequested":Z
    :cond_4b
    move v2, v5

    .line 3958
    goto :goto_f

    .line 3979
    .restart local v2    # "forceExtWipe":Z
    .restart local v4    # "isExtSDSupported":Z
    .restart local v5    # "wipeExtRequested":Z
    :cond_4d
    :try_start_4d
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_53
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_52} :catch_5c

    goto :goto_4a

    .line 3980
    :catch_53
    move-exception v0

    .line 3981
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failed requesting data wipe"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 3982
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v0

    .line 3983
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failed requesting data wipe"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method

.method wipeDataLockedFor3LM(ILjava/lang/String;)V
    .registers 13
    .param p1, "flags"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3992
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v8

    if-nez v8, :cond_4f

    invoke-direct {p0}, isExtStorageEncrypted()Z

    move-result v8

    if-eqz v8, :cond_4f

    move v1, v6

    .line 3996
    .local v1, "forceExtWipe":Z
    :goto_f
    invoke-direct {p0}, findSDCard()Z

    move-result v3

    .line 3999
    .local v3, "isExtSDSupported":Z
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_51

    move v4, v6

    .line 4002
    .local v4, "wipeExtRequested":Z
    :goto_18
    if-nez v1, :cond_1c

    if-eqz v4, :cond_53

    :cond_1c
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-nez v7, :cond_53

    .line 4004
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4005
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "always_reset"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4006
    const-string v6, "android.intent.extra.REASON"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4007
    sget-object v6, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4008
    invoke-direct {p0}, getExternalSD()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 4009
    .local v0, "extSD":Landroid/os/storage/StorageVolume;
    const-string/jumbo v6, "storage_volume"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4010
    iget-object v6, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4011
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4047
    .end local v0    # "extSD":Landroid/os/storage/StorageVolume;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4e
    return-void

    .end local v1    # "forceExtWipe":Z
    .end local v3    # "isExtSDSupported":Z
    .end local v4    # "wipeExtRequested":Z
    :cond_4f
    move v1, v7

    .line 3992
    goto :goto_f

    .restart local v1    # "forceExtWipe":Z
    .restart local v3    # "isExtSDSupported":Z
    :cond_51
    move v4, v7

    .line 3999
    goto :goto_18

    .line 4030
    .restart local v4    # "wipeExtRequested":Z
    :cond_53
    const-string v6, "DevicePolicyManagerService"

    const-string/jumbo v7, "wipeDataLockedFor3LM() called"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    move-object v5, p2

    .line 4032
    .local v5, "wipeReason":Ljava/lang/String;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    invoke-direct {v7, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_4e
.end method
