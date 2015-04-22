.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$DirEncryptListner;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$MountShutdownLatch;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final H_FSTRIM:I = 0x5

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_ADDOBJ:I = 0x64

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field private static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field private static final RESTRICTIONPOLICY_SDCARDENABLED_METHOD:Ljava/lang/String; = "isSdCardEnabled"

.field private static final RESTRICTIONPOLICY_SDCARDWRITEALLOW_METHOD:Ljava/lang/String; = "isSDCardWriteAllowed"

.field private static final RESTRICTIONPOLICY_USBHOSTSTORAGE_METHOD:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field private static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final mASECDirectory:Ljava/lang/String;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBooted:Z

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureContainerVolume:Landroid/os/storage/StorageVolume;

.field private mSendUmsConnectedOnBoot:Z

.field private volatile mSystemReady:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePendingStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, sSelf:Lcom/android/server/MountService;

    .line 234
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "pin"

    aput-object v2, v0, v1

    sput-object v0, CRYPTO_TYPES:[Ljava/lang/String;

    .line 405
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1791
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mVolumesLock:Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mVolumes:Ljava/util/ArrayList;

    .line 250
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mVolumesByPath:Ljava/util/HashMap;

    .line 253
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mVolumeStates:Ljava/util/HashMap;

    .line 256
    iput-boolean v1, p0, mSystemReady:Z

    .line 260
    iput-boolean v1, p0, mUmsAvailable:Z

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 265
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 266
    iput-boolean v1, p0, mSendUmsConnectedOnBoot:Z

    .line 269
    iput-object v6, p0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    .line 270
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, mVolumePendingStates:Ljava/util/LinkedHashMap;

    .line 271
    iput-boolean v1, p0, mBooted:Z

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mAsecMountSet:Ljava/util/HashSet;

    .line 308
    invoke-static {}, Landroid/os/Environment;->getAndroidSecureContainerDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mASECDirectory:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mObbMounts:Ljava/util/Map;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    .line 408
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 425
    iput-object v6, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 740
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 769
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 3786
    new-instance v0, Lcom/android/server/MountService$9;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$9;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 3930
    iput-object v6, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 3931
    iput-object v6, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 1792
    sput-object p0, sSelf:Lcom/android/server/MountService;

    .line 1793
    const-string v0, "MountService"

    const-string v1, "MountService :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1797
    iget-object v1, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1798
    :try_start_94
    invoke-direct {p0}, readStorageListLocked()V

    .line 1799
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_11c

    .line 1802
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1804
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "MountService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v7, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1806
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 1809
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1810
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1811
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v10, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1815
    invoke-direct {p0}, registerDeviceRestriction()V

    .line 1818
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 1819
    .local v8, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v8, :cond_ef

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1820
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1825
    :cond_ef
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1832
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1835
    new-instance v9, Ljava/lang/Thread;

    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1836
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1842
    return-void

    .line 1799
    .end local v7    # "hthread":Landroid/os/HandlerThread;
    .end local v8    # "primary":Landroid/os/storage/StorageVolume;
    .end local v9    # "thread":Ljava/lang/Thread;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    :catchall_11c
    move-exception v0

    :try_start_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .registers 13
    .param p1, "available"    # Z

    .prologue
    const/4 v10, 0x1

    .line 3870
    const/4 v2, 0x0

    .line 3871
    .local v2, "removeEncryption":Z
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    if-ne p1, v10, :cond_84

    .line 3874
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1d
    iget-object v7, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_84

    .line 3875
    iget-object v7, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3876
    .local v5, "vPath":Ljava/lang/String;
    invoke-virtual {p0, v5}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3877
    .local v6, "vState":Ljava/lang/String;
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removable storage path :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    const-string v7, "checking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 3879
    const/16 v3, 0x1e

    .line 3880
    .local v3, "retries":I
    :goto_58
    const-string v7, "checking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "retries":I
    .local v4, "retries":I
    if-ltz v3, :cond_85

    .line 3882
    const-wide/16 v8, 0x3e8

    :try_start_66
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_69} :catch_6b

    move v3, v4

    .line 3886
    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    goto :goto_58

    .line 3883
    .end local v3    # "retries":I
    .restart local v4    # "retries":I
    :catch_6b
    move-exception v1

    .line 3884
    .local v1, "iex":Ljava/lang/InterruptedException;
    const-string v7, "MountService"

    const-string v8, "Interrupted while waiting for media"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 3888
    .end local v1    # "iex":Ljava/lang/InterruptedException;
    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    :cond_74
    :goto_74
    if-nez v3, :cond_7d

    .line 3889
    const-string v7, "MountService"

    const-string v8, "Timed out waiting for media to check"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    .end local v3    # "retries":I
    :cond_7d
    const/4 v7, 0x0

    invoke-direct {p0, v5, v10, v7}, doUnmountVolume(Ljava/lang/String;ZZ)I

    .line 3874
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3895
    .end local v0    # "i":I
    .end local v5    # "vPath":Ljava/lang/String;
    .end local v6    # "vState":Ljava/lang/String;
    :cond_84
    return-void

    .restart local v0    # "i":I
    .restart local v4    # "retries":I
    .restart local v5    # "vPath":Ljava/lang/String;
    .restart local v6    # "vState":Ljava/lang/String;
    :cond_85
    move v3, v4

    .end local v4    # "retries":I
    .restart local v3    # "retries":I
    goto :goto_74
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;Landroid/os/UserHandle;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 138
    invoke-direct {p0, p1}, removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mVolumePendingStates:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3}, doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 138
    iput-object p1, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 138
    invoke-direct {p0, p1}, removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    invoke-direct {p0}, warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1}, addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    invoke-direct {p0}, handleSystemReady()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    invoke-direct {p0}, waitForReady()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 138
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method public static addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 3962
    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 3965
    .end local p0    # "input":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object p0

    .restart local p0    # "input":Ljava/lang/String;
    :cond_14
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_13
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3087
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3088
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3090
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 3091
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3092
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3104
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 3119
    iget-object v5, p0, mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    return-void

    .line 3094
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3095
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3096
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3105
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 3110
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3111
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3112
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    :cond_57
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 1761
    iget-object v1, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    iget-object v1, p0, mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 1763
    .local v0, "existing":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_3a

    .line 1764
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1767
    :cond_3a
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3557
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3598
    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p0

    .line 3561
    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3564
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3567
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3569
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3572
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 3573
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3581
    :goto_31
    const-string v2, "Android/obb"

    .line 3582
    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 3583
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3585
    if-eqz p2, :cond_68

    .line 3586
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 3574
    .end local v2    # "obbPath":Ljava/lang/String;
    :cond_57
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3575
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    .line 3588
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_68
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3589
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 3595
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_7d
    if-eqz p2, :cond_8e

    .line 3596
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    .line 3598
    :cond_8e
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7
.end method

.method private checkExternalSecureContainerMounted()Z
    .registers 3

    .prologue
    .line 2564
    iget-object v0, p0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2565
    :goto_5
    return v0

    :cond_6
    const-string v0, "mounted"

    iget-object v1, p0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private cleanupSercureContainerList(Ljava/lang/String;)V
    .registers 6
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 2158
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2159
    :try_start_3
    const-string v2, "all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2160
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2175
    :cond_10
    monitor-exit v3

    .line 2176
    return-void

    .line 2162
    :cond_12
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2163
    .local v0, "iter":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2165
    .local v1, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v2, :cond_37

    const-string v2, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2175
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v2

    .line 2169
    .restart local v0    # "iter":Ljava/util/Iterator;
    .restart local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_37
    :try_start_37
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-nez v2, :cond_18

    const-string v2, "internal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_34

    goto :goto_18
.end method

.method private copyLocaleFromMountService()V
    .registers 8

    .prologue
    .line 980
    :try_start_0
    const-string v4, "SystemLocale"

    invoke-virtual {p0, v4}, getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v3

    .line 984
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1002
    .end local v3    # "systemLocale":Ljava/lang/String;
    :goto_c
    return-void

    .line 981
    :catch_d
    move-exception v1

    .line 982
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 988
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_f
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 990
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 991
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 993
    :try_start_39
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_73

    .line 999
    :goto_40
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string/jumbo v4, "persist.sys.language"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v4, "persist.sys.country"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 994
    :catch_73
    move-exception v1

    .line 995
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v4, "MountService"

    const-string v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;Z)V
    .registers 9
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Z

    .prologue
    .line 1734
    iget-object v3, p0, mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    .line 1735
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1738
    :cond_c
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 1739
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1740
    .local v0, "path":Ljava/io/File;
    iget-object v3, p0, mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1741
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1742
    invoke-direct {p0, v2}, addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1746
    if-eqz p2, :cond_3d

    .line 1747
    iget-object v3, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    :goto_33
    iget-boolean v3, p0, mSystemReady:Z

    if-eqz v3, :cond_4a

    .line 1752
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1758
    :goto_3c
    return-void

    .line 1749
    :cond_3d
    iget-object v3, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "removed"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 1755
    :cond_4a
    iget-object v3, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1460
    :try_start_2
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "format"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_15
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_15} :catch_16

    .line 1477
    :goto_15
    return v3

    .line 1462
    :catch_16
    move-exception v1

    .line 1463
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1465
    .local v0, "code":I
    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1b} :catch_29

    move-result v0

    .line 1469
    const/16 v3, 0x191

    if-ne v0, v3, :cond_2c

    .line 1470
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedNoMedia"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const/4 v3, -0x2

    goto :goto_15

    .line 1466
    :catch_29
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move v3, v4

    .line 1467
    goto :goto_15

    .line 1472
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_2c
    const/16 v3, 0x193

    if-ne v0, v3, :cond_39

    .line 1473
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v3, -0x4

    goto :goto_15

    .line 1476
    :cond_39
    const-string v3, "MountService"

    const-string v5, "doFormatVolume :: result = OperationFailedInternalError"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1477
    goto :goto_15
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1485
    :try_start_1
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_18} :catch_2c

    move-result-object v0

    .line 1491
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_2b

    .line 1492
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1494
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2b
    :goto_2b
    return v2

    .line 1486
    :catch_2c
    move-exception v1

    .line 1487
    .local v1, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1381
    const-string v0, "mounting"

    invoke-direct {p0, p1, v0}, doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    .line 1248
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doMountVolume :: mount path = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    move-object/from16 v0, p0

    iget-object v14, v0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1252
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageVolume;

    .line 1253
    .local v11, "storage":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_88

    .line 1255
    const/4 v8, 0x0

    .line 1258
    .local v8, "rc":I
    move-object/from16 v0, p0

    iget-object v14, v0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1259
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v13, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 1260
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_8b

    .line 1262
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-eqz v13, :cond_8e

    const-string/jumbo v13, "sd"

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8e

    const/4 v6, 0x1

    .line 1263
    .local v6, "isSdCard":Z
    :goto_5f
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    if-eqz v13, :cond_90

    const-string/jumbo v13, "usb"

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_90

    const/4 v7, 0x1

    .line 1264
    .local v7, "isUsbHost":Z
    :goto_73
    const/4 v9, 0x0

    .line 1266
    .local v9, "readonly":Z
    const-string/jumbo v13, "storage_kor_mdm"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_92

    .line 1267
    const-string v13, "MountService"

    const-string v14, "Policy has restriction \'storage_kor_mdm\'; cannot mount volume."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v13, -0x1

    .line 1377
    :goto_87
    return v13

    .line 1253
    .end local v6    # "isSdCard":Z
    .end local v7    # "isUsbHost":Z
    .end local v8    # "rc":I
    .end local v9    # "readonly":Z
    .end local v11    # "storage":Landroid/os/storage/StorageVolume;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_88
    move-exception v13

    :try_start_89
    monitor-exit v14
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v13

    .line 1260
    .restart local v8    # "rc":I
    .restart local v11    # "storage":Landroid/os/storage/StorageVolume;
    :catchall_8b
    move-exception v13

    :try_start_8c
    monitor-exit v14
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v13

    .line 1262
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_8e
    const/4 v6, 0x0

    goto :goto_5f

    .line 1263
    .restart local v6    # "isSdCard":Z
    :cond_90
    const/4 v7, 0x0

    goto :goto_73

    .line 1271
    .restart local v7    # "isUsbHost":Z
    .restart local v9    # "readonly":Z
    :cond_92
    if-eqz v6, :cond_a8

    const-string/jumbo v13, "sdcard_storage"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 1272
    const-string v13, "MountService"

    const-string v14, "Policy has restriction \'sdcard\'; cannot mount volume."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v13, -0x1

    goto :goto_87

    .line 1276
    :cond_a8
    const/4 v13, 0x1

    if-ne v7, v13, :cond_bf

    const-string/jumbo v13, "usbhost_storage"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_bf

    .line 1277
    const-string v13, "MountService"

    const-string v14, "Policy has restriction \'usbhost_storage\'; cannot mount volume."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v13, -0x1

    goto :goto_87

    .line 1281
    :cond_bf
    const-string/jumbo v13, "storage_itpolicy_ui"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 1282
    const-string v13, "MountService"

    const-string v14, "Policy has restriction \'storage_itpolicy_ui\'; cannot mount volume."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v13, -0x1

    goto :goto_87

    .line 1286
    :cond_d3
    const-string/jumbo v13, "readonly_storage"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 1287
    const-string v13, "MountService"

    const-string v14, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v9, 0x1

    .line 1291
    :cond_e6
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-nez v13, :cond_ff

    const-string v13, "no_physical_media"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ff

    .line 1292
    const-string v13, "MountService"

    const-string v14, "User has restriction DISALLOW_MOUNT_PHYSICAL_MEDIA; cannot mount volume."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v13, -0x1

    goto :goto_87

    .line 1296
    :cond_ff
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doMountVolume: Mouting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v10, 0x0

    .line 1300
    .local v10, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v13, :cond_128

    .line 1301
    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v13}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v10

    .line 1302
    :cond_128
    if-nez v10, :cond_12f

    .line 1303
    new-instance v10, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v10    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v10}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1309
    .restart local v10    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_12f
    :try_start_12f
    const-string/jumbo v13, "vold.encrypt_progress"

    const-string v14, "false"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1310
    .local v4, "encDecProgress":Ljava/lang/String;
    const-string v13, "false"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14a

    .line 1311
    const-string v13, "MountService"

    const-string v14, "Do not mount if en/decryption is in progres"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "encDecProgress":Ljava/lang/String;
    :cond_147
    :goto_147
    move v13, v8

    .line 1377
    goto/16 :goto_87

    .line 1314
    .restart local v4    # "encDecProgress":Ljava/lang/String;
    :cond_14a
    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v13, :cond_196

    if-eqz p1, :cond_196

    invoke-virtual/range {p0 .. p1}, requiredEncPolicyCheck(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_196

    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v13}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v13

    if-eqz v13, :cond_196

    .line 1315
    move-object/from16 v0, p0

    iget-object v13, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v14, "volume"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "mount"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    const/16 v16, 0x2

    const-string v17, "hidden"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_17f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12f .. :try_end_17f} :catch_180

    goto :goto_147

    .line 1333
    .end local v4    # "encDecProgress":Ljava/lang/String;
    :catch_180
    move-exception v3

    .line 1337
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 1338
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1340
    .local v2, "code":I
    :try_start_183
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_186
    .catch Ljava/lang/NullPointerException; {:try_start_183 .. :try_end_186} :catch_206

    move-result v2

    .line 1344
    const/16 v13, 0x191

    if-ne v2, v13, :cond_20a

    .line 1348
    const/4 v8, -0x2

    .line 1372
    :goto_18c
    if-eqz v1, :cond_147

    .line 1373
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12, v13}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_147

    .line 1317
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "encDecProgress":Ljava/lang/String;
    :cond_196
    :try_start_196
    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v13, :cond_1bb

    if-eqz p1, :cond_1bb

    const/4 v13, 0x2

    iget v14, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v13, v14, :cond_1bb

    move-object/from16 v0, p0

    iget-object v13, v0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v13}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1bb

    .line 1319
    const-string v13, "MountService"

    const-string v14, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 1321
    :cond_1bb
    if-eqz v11, :cond_1ca

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v13

    if-eqz v13, :cond_1ca

    .line 1322
    const-string v13, "external"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, cleanupSercureContainerList(Ljava/lang/String;)V

    .line 1324
    :cond_1ca
    if-eqz v9, :cond_1ed

    .line 1325
    move-object/from16 v0, p0

    iget-object v13, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v14, "volume"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "remount"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "ro"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_147

    .line 1327
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v13, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v14, "volume"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "mount"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_204
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_196 .. :try_end_204} :catch_180

    goto/16 :goto_147

    .line 1341
    .end local v4    # "encDecProgress":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_206
    move-exception v5

    .line 1342
    .local v5, "ex":Ljava/lang/NullPointerException;
    const/4 v13, -0x1

    goto/16 :goto_87

    .line 1349
    .end local v5    # "ex":Ljava/lang/NullPointerException;
    :cond_20a
    const/16 v13, 0x192

    if-ne v2, v13, :cond_221

    .line 1350
    const-string v13, "MountService"

    const-string v14, " updating volume state :: media nofs"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v13, "nofs"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1355
    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 1356
    const/4 v8, -0x3

    goto/16 :goto_18c

    .line 1357
    :cond_221
    const/16 v13, 0x193

    if-ne v2, v13, :cond_23a

    .line 1358
    const-string v13, "MountService"

    const-string/jumbo v14, "updating volume state media corrupt"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string/jumbo v13, "unmountable"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1363
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1364
    const/4 v8, -0x4

    goto/16 :goto_18c

    .line 1366
    :cond_23a
    const/4 v8, -0x1

    goto/16 :goto_18c
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 807
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string/jumbo v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 811
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    :cond_47
    :try_start_47
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_61

    const-string/jumbo v1, "share"

    :goto_55
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 819
    :goto_60
    return-void

    .line 815
    :cond_61
    const-string/jumbo v1, "unshare"
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_47 .. :try_end_64} :catch_65

    goto :goto_55

    .line 816
    :catch_65
    move-exception v0

    .line 817
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/16 v4, 0x194

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1406
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doUnmountVolume :: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", force = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", removeEncryption = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0, p1}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1453
    :goto_3c
    return v4

    .line 1417
    :cond_3d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 1421
    iget-object v7, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1422
    :try_start_47
    iget-object v8, p0, mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1423
    .local v3, "storage":Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_6d

    .line 1424
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v7

    if-eqz v7, :cond_5d

    iget-object v7, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v5, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1425
    :cond_5d
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fuse"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    move v4, v5

    goto :goto_3c

    .line 1423
    .end local v3    # "storage":Landroid/os/storage/StorageVolume;
    :catchall_6d
    move-exception v4

    :try_start_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v4

    .line 1427
    .restart local v3    # "storage":Landroid/os/storage/StorageVolume;
    :cond_70
    :try_start_70
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "unmount"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_9f

    .line 1429
    const-string v7, "force_and_revert"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1433
    :cond_8b
    :goto_8b
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1438
    if-eqz v3, :cond_9d

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1439
    const-string v7, "external"

    invoke-direct {p0, v7}, cleanupSercureContainerList(Ljava/lang/String;)V

    :cond_9d
    move v4, v5

    .line 1440
    goto :goto_3c

    .line 1430
    :cond_9f
    if-eqz p2, :cond_8b

    .line 1431
    const-string v7, "force"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_a6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_70 .. :try_end_a6} :catch_a7

    goto :goto_8b

    .line 1441
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_a7
    move-exception v2

    .line 1444
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-direct {p0, v2, v6}, getCodeFromException(Lcom/android/server/NativeDaemonConnectorException;I)I

    move-result v1

    .line 1445
    .local v1, "code":I
    if-ne v1, v4, :cond_b7

    .line 1446
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v4, -0x5

    goto :goto_3c

    .line 1448
    :cond_b7
    const/16 v4, 0x195

    if-ne v1, v4, :cond_c5

    .line 1449
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v4, -0x7

    goto/16 :goto_3c

    .line 1452
    :cond_c5
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 1453
    goto/16 :goto_3c
.end method

.method private fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "hexPassword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2721
    if-nez p1, :cond_4

    .line 2729
    :goto_3
    return-object v2

    .line 2726
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    .line 2727
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_13
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_4 .. :try_end_13} :catch_15

    move-object v2, v3

    goto :goto_3

    .line 2728
    .end local v0    # "bytes":[B
    :catch_15
    move-exception v1

    .line 2729
    .local v1, "e":Lorg/apache/commons/codec/DecoderException;
    goto :goto_3
.end method

.method private getCodeFromException(Lcom/android/server/NativeDaemonConnectorException;I)I
    .registers 7
    .param p1, "e"    # Lcom/android/server/NativeDaemonConnectorException;
    .param p2, "defaultCode"    # I

    .prologue
    .line 1385
    move v0, p2

    .line 1387
    .local v0, "code":I
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 1391
    :goto_5
    return v0

    .line 1388
    :catch_6
    move-exception v1

    .line 1389
    .local v1, "nex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Error getting code from exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .registers 5

    .prologue
    .line 1776
    iget-object v3, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1777
    :try_start_3
    iget-object v2, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 1778
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1779
    monitor-exit v3

    .line 1783
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :goto_22
    return-object v1

    .line 1782
    :cond_23
    monitor-exit v3

    .line 1783
    const/4 v1, 0x0

    goto :goto_22

    .line 1782
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "inter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2532
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 2533
    invoke-direct {p0}, waitForReady()V

    .line 2534
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2538
    :try_start_e
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "fspath"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2539
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2540
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_29} :catch_2b

    move-result-object v4

    .line 2550
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_2a
    return-object v4

    .line 2541
    :catch_2b
    move-exception v1

    .line 2542
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2544
    .local v0, "code":I
    :try_start_2d
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_30} :catch_45

    move-result v0

    .line 2548
    const/16 v5, 0x196

    if-ne v0, v5, :cond_47

    .line 2549
    const-string v5, "MountService"

    const-string v6, "Container \'%s\' not found"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 2545
    :catch_45
    move-exception v3

    .line 2546
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_2a

    .line 2552
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_47
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 1939
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1940
    :try_start_3
    iget-boolean v0, p0, mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1941
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private handleSystemReady()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 691
    iget-object v8, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 692
    :try_start_5
    new-instance v4, Ljava/util/HashMap;

    iget-object v7, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 693
    .local v4, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_55

    .line 695
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 696
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 697
    .local v2, "path":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 699
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v7, "unmounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 700
    const-string v7, "booting"

    invoke-direct {p0, v2, v7}, doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 701
    .local v3, "rc":I
    if-eqz v3, :cond_15

    .line 702
    const-string v7, "MountService"

    const-string v8, "Boot-time mount failed \'%s\' (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 693
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "rc":I
    .end local v4    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "state":Ljava/lang/String;
    :catchall_55
    move-exception v7

    :try_start_56
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v7

    .line 705
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "state":Ljava/lang/String;
    :cond_58
    const-string/jumbo v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 710
    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-direct {p0, v7, v2, v11, v8}, notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_15

    .line 716
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "path":Ljava/lang/String;
    .end local v5    # "state":Ljava/lang/String;
    :cond_67
    iget-object v8, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 717
    :try_start_6a
    iget-object v7, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_70
    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 718
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 719
    const-string v7, "mounted"

    invoke-direct {p0, v6, v7}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_70

    .line 722
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_88
    move-exception v7

    monitor-exit v8
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_88

    throw v7

    :cond_8b
    :try_start_8b
    monitor-exit v8
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_88

    .line 728
    iget-boolean v7, p0, mSendUmsConnectedOnBoot:Z

    if-eqz v7, :cond_95

    .line 729
    invoke-direct {p0, v12}, sendUmsIntent(Z)V

    .line 730
    iput-boolean v11, p0, mSendUmsConnectedOnBoot:Z

    .line 738
    :cond_95
    return-void
.end method

.method private hasDeviceRestriction(Ljava/lang/String;)Z
    .registers 11
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3827
    const-string/jumbo v6, "usbhost_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3828
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbHostStorageAllowed"

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v8, "true"

    aput-object v8, v4, v5

    invoke-direct {p0, p1, v6, v7, v4}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 3860
    :cond_1b
    :goto_1b
    return v4

    .line 3829
    :cond_1c
    const-string/jumbo v6, "sdcard_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 3830
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSdCardEnabled"

    invoke-direct {p0, p1, v4, v5, v8}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto :goto_1b

    .line 3831
    :cond_2e
    if-eqz p1, :cond_84

    const-string/jumbo v6, "storage_itpolicy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 3832
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 3833
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v0, 0x1

    .line 3835
    .local v0, "check":Z
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3836
    if-nez v0, :cond_68

    const-string/jumbo v6, "storage_itpolicy_ui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 3837
    const-string v6, "MountService"

    const-string v7, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3839
    .local v3, "toastintent":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3841
    .end local v3    # "toastintent":Landroid/content/Intent;
    :cond_68
    if-nez v0, :cond_b4

    .line 3842
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy has restriction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 3846
    .end local v0    # "check":Z
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_84
    const-string/jumbo v6, "storage_kor_mdm"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 3848
    const-string/jumbo v6, "persist.sys.microsd_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3849
    .local v1, "externalstorage_lock_state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "externalstorage_lock_state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    const-string v6, "microsd_lock.enabled"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .end local v1    # "externalstorage_lock_state":Ljava/lang/String;
    :cond_b4
    :goto_b4
    move v4, v5

    .line 3860
    goto/16 :goto_1b

    .line 3853
    :cond_b7
    const-string v6, "mass_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 3854
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isUsbMassStorageEnabled"

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v8, "true"

    aput-object v8, v4, v5

    invoke-direct {p0, p1, v6, v7, v4}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1b

    .line 3855
    :cond_d0
    const-string/jumbo v4, "readonly_storage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 3856
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v5, "isSDCardWriteAllowed"

    invoke-direct {p0, p1, v4, v5, v8}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1b

    .line 3858
    :cond_e3
    const-string v4, "MountService"

    const-string v6, "not define policy !!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4
.end method

.method private hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 3795
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3797
    .local v1, "uri":Landroid/net/Uri;
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3798
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_54

    .line 3799
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3800
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3801
    .local v8, "restrict":Ljava/lang/String;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restrict(allow) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const-string v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3804
    const/4 v0, 0x1

    .line 3814
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_4e
    return v0

    .line 3806
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v8    # "restrict":Ljava/lang/String;
    :cond_4f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3814
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_52
    const/4 v0, 0x0

    goto :goto_4e

    .line 3808
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_54
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " policy not yet?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6d

    goto :goto_52

    .line 3810
    .end local v6    # "cr":Landroid/database/Cursor;
    :catch_6d
    move-exception v7

    .line 3811
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method

.method private hasUserRestriction(Ljava/lang/String;)Z
    .registers 5
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    .line 1578
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1579
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private isExternalSecureContainer(Ljava/lang/String;)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2569
    const/4 v0, 0x0

    .line 2570
    .local v0, "isExt":Z
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2571
    :try_start_4
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2572
    .local v1, "iter":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2573
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2574
    .local v2, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v3, v2, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2575
    iget-boolean v0, v2, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .line 2579
    .end local v2    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_20
    monitor-exit v4

    .line 2581
    return v0

    .line 2579
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v3
.end method

.method private isReady()Z
    .registers 6

    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 683
    :goto_a
    return v1

    .line 682
    :catch_b
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2589
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2604
    :cond_6
    :goto_6
    return v1

    .line 2593
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 2594
    goto :goto_6

    .line 2597
    :cond_b
    iget-object v3, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2604
    .local v0, "packageUid":I
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private isUsbMassStorageEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "call"    # Ljava/lang/String;

    .prologue
    .line 2011
    invoke-direct {p0}, waitForReady()V

    .line 2013
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2014
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_15

    .line 2015
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ums"

    invoke-direct {p0, v1, v2}, doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2017
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appPaths"    # [Ljava/io/File;
    .param p2, "voldPaths"    # [Ljava/io/File;

    .prologue
    .line 3048
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_c

    .line 3049
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3052
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_61

    .line 3053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3054
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3055
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3057
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 3058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3063
    .end local v0    # "appPath":Ljava/lang/String;
    .end local p0    # "path":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-object p0

    .line 3052
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3063
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_61
    const/4 p0, 0x0

    goto :goto_5d
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 11
    .param p1, "avail"    # Z

    .prologue
    .line 1499
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyShareAvailabilityChange :: avail = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-boolean v6, p0, mUmsAvailable:Z

    if-ne v6, p1, :cond_47

    .line 1502
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate UMS state change ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mUmsAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_46
    :goto_46
    return-void

    .line 1505
    :cond_47
    iget-object v7, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1506
    :try_start_4a
    iput-boolean p1, p0, mUmsAvailable:Z

    .line 1507
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_54
    if-ltz v2, :cond_80

    .line 1508
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_74

    .line 1510
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_5e
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_66
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_77
    .catchall {:try_start_5e .. :try_end_63} :catchall_74

    .line 1507
    :goto_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_54

    .line 1511
    :catch_66
    move-exception v5

    .line 1512
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_67
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_63

    .line 1518
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_74
    move-exception v6

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_74

    throw v6

    .line 1514
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_77
    move-exception v1

    .line 1515
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_78
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 1518
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_80
    monitor-exit v7
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_74

    .line 1520
    iget-boolean v6, p0, mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b1

    .line 1521
    invoke-direct {p0, p1}, sendUmsIntent(Z)V

    .line 1526
    :goto_89
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1527
    .local v4, "primary":Landroid/os/storage/StorageVolume;
    if-nez p1, :cond_46

    if-eqz v4, :cond_46

    const-string/jumbo v6, "shared"

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1529
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1533
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Lcom/android/server/MountService$5;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$5;->start()V

    goto :goto_46

    .line 1523
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "primary":Landroid/os/storage/StorageVolume;
    :cond_b1
    iput-boolean p1, p0, mSendUmsConnectedOnBoot:Z

    goto :goto_89
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x2

    .line 1157
    iget-object v5, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1158
    :try_start_5
    iget-object v4, p0, mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1159
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1160
    .local v2, "state":Ljava/lang/String;
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_71

    .line 1164
    const/4 v0, 0x0

    .line 1166
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1167
    .local v1, "pending":Z
    if-ne p4, v7, :cond_17

    const/4 v1, 0x1

    .line 1169
    :cond_17
    iget-object v5, p0, mVolumePendingStates:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 1170
    :try_start_1a
    iget-object v4, p0, mVolumePendingStates:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, p2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_74

    .line 1174
    if-ne p3, v8, :cond_36

    if-eq p4, p3, :cond_36

    .line 1175
    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v3, v5}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1179
    :cond_36
    const/4 v4, -0x1

    if-ne p4, v4, :cond_77

    .line 1239
    :cond_39
    :goto_39
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyVolumeStateChanged:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    if-eqz v0, :cond_70

    .line 1243
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3, v4}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1245
    :cond_70
    :goto_70
    return-void

    .line 1160
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "pending":Z
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_71
    move-exception v4

    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v4

    .line 1171
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "pending":Z
    .restart local v2    # "state":Ljava/lang/String;
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_74
    move-exception v4

    :try_start_75
    monitor-exit v5
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v4

    .line 1180
    :cond_77
    if-eqz p4, :cond_39

    .line 1182
    const/4 v4, 0x1

    if-ne p4, v4, :cond_ac

    .line 1187
    const-string v4, "bad_removal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "nofs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-direct {p0}, getUmsEnabling()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1191
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v4, "unmounted"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1193
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_39

    .line 1195
    :cond_ac
    if-eq p4, v7, :cond_39

    .line 1196
    const/4 v4, 0x3

    if-ne p4, v4, :cond_c2

    .line 1197
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state checking"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v4, "checking"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1199
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto/16 :goto_39

    .line 1200
    :cond_c2
    const/4 v4, 0x4

    if-ne p4, v4, :cond_d6

    .line 1201
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v4, "mounted"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1203
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_39

    .line 1206
    :cond_d6
    const/16 v4, 0xa

    if-ne p4, v4, :cond_e9

    .line 1207
    const-string v4, "MountService"

    const-string/jumbo v5, "updating volume state move mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v4, "MoveMount"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1211
    :cond_e9
    const/4 v4, 0x5

    if-ne p4, v4, :cond_f0

    .line 1212
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto/16 :goto_39

    .line 1213
    :cond_f0
    const/4 v4, 0x6

    if-eq p4, v4, :cond_39

    .line 1214
    if-ne p4, v8, :cond_121

    .line 1215
    const-string v4, "MountService"

    const-string v5, "Updating volume state media mounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string/jumbo v4, "unmounted"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1218
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v3, v5}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1220
    const-string v4, "MountService"

    const-string v5, "Updating media shared"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string/jumbo v4, "shared"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1222
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1223
    const-string v4, "MountService"

    const-string v5, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 1224
    :cond_121
    const/16 v4, 0x8

    if-ne p4, v4, :cond_12e

    .line 1225
    const-string v4, "MountService"

    const-string v5, "Live shared mounts not supported yet!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 1229
    :cond_12e
    const/16 v4, 0x9

    if-ne p4, v4, :cond_15d

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_15d

    .line 1231
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hidden Volume ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mounted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v4, "checking"

    invoke-direct {p0, v3, v4}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1236
    :cond_15d
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled VolumeState {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39
.end method

.method private readStorageListLocked()V
    .registers 37

    .prologue
    .line 1594
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    .line 1595
    .local v29, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1596
    .local v17, "SDCARD_PATH":Ljava/lang/String;
    const-string v3, "android.hardware.usb.host"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 1597
    .local v16, "ENABLE_USBHOST":Z
    const/4 v15, 0x1

    .line 1599
    .local v15, "ENABLE_SDCARD":Z
    if-eqz v17, :cond_23

    const-string v3, "/storage/extSdCard"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    :cond_23
    const/4 v15, 0x0

    .line 1602
    :goto_24
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 1607
    .local v30, "resources":Landroid/content/res/Resources;
    const v24, 0x1110017

    .line 1608
    .local v24, "id":I
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v27

    .line 1609
    .local v27, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static/range {v27 .. v27}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v19

    .line 1612
    .local v19, "attrs":Landroid/util/AttributeSet;
    :try_start_49
    const-string v3, "StorageList"

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1614
    :cond_50
    :goto_50
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1616
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_56} :catch_11c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_16d
    .catchall {:try_start_49 .. :try_end_56} :catchall_125

    move-result-object v22

    .line 1617
    .local v22, "element":Ljava/lang/String;
    if-nez v22, :cond_87

    .line 1719
    invoke-virtual/range {p0 .. p0}, isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_278

    const/16 v25, 0x1

    .line 1720
    .local v25, "index":I
    :goto_61
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_69
    :goto_69
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1721
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_69

    .line 1722
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "index":I
    .local v26, "index":I
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v25, v26

    .end local v26    # "index":I
    .restart local v25    # "index":I
    goto :goto_69

    .line 1600
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v19    # "attrs":Landroid/util/AttributeSet;
    .end local v22    # "element":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "id":I
    .end local v25    # "index":I
    .end local v27    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "resources":Landroid/content/res/Resources;
    :cond_85
    const/4 v15, 0x1

    goto :goto_24

    .line 1619
    .restart local v19    # "attrs":Landroid/util/AttributeSet;
    .restart local v22    # "element":Ljava/lang/String;
    .restart local v24    # "id":I
    .restart local v27    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "resources":Landroid/content/res/Resources;
    :cond_87
    :try_start_87
    const-string/jumbo v3, "storage"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1620
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 1623
    .local v18, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1625
    .local v28, "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1627
    .local v4, "descriptionId":I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1629
    .local v20, "description":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1631
    .local v5, "primary":Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1633
    .local v6, "removable":Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1635
    .local v7, "emulated":Z
    const/4 v3, 0x5

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 1637
    .local v8, "mtpReserve":I
    const/4 v3, 0x6

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1640
    .local v9, "allowMassStorage":Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v12, v3

    const-wide/16 v34, 0x400

    mul-long v12, v12, v34

    const-wide/16 v34, 0x400

    mul-long v10, v12, v34

    .line 1644
    .local v10, "maxFileSize":J
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 1647
    .local v31, "subsystem":Ljava/lang/CharSequence;
    const/16 v3, 0x9

    const/4 v12, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1650
    .local v14, "activitySecureContainer":Z
    if-nez v31, :cond_101

    const-string/jumbo v31, "unknown"

    .line 1653
    :cond_101
    if-nez v16, :cond_152

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "usb"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 1654
    const-string v3, "MountService"

    const-string v12, "Not Support USBHOST"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_11a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_11a} :catch_11c
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_11a} :catch_16d
    .catchall {:try_start_87 .. :try_end_11a} :catchall_125

    goto/16 :goto_50

    .line 1712
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v18    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "description":Ljava/lang/CharSequence;
    .end local v22    # "element":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v31    # "subsystem":Ljava/lang/CharSequence;
    :catch_11c
    move-exception v21

    .line 1713
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11d
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_125

    .line 1719
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_125
    move-exception v3

    invoke-virtual/range {p0 .. p0}, isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_280

    const/16 v25, 0x1

    .line 1720
    .restart local v25    # "index":I
    :goto_12e
    move-object/from16 v0, p0

    iget-object v12, v0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_136
    :goto_136
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_284

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1721
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_136

    .line 1722
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "index":I
    .restart local v26    # "index":I
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v25, v26

    .end local v26    # "index":I
    .restart local v25    # "index":I
    goto :goto_136

    .line 1658
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "index":I
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v14    # "activitySecureContainer":Z
    .restart local v18    # "a":Landroid/content/res/TypedArray;
    .restart local v20    # "description":Ljava/lang/CharSequence;
    .restart local v22    # "element":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v31    # "subsystem":Ljava/lang/CharSequence;
    :cond_152
    if-nez v15, :cond_176

    :try_start_154
    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "sd"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_176

    .line 1659
    const-string v3, "MountService"

    const-string v12, "Not Support SDcard"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_154 .. :try_end_16b} :catch_11c
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_16b} :catch_16d
    .catchall {:try_start_154 .. :try_end_16b} :catchall_125

    goto/16 :goto_50

    .line 1714
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v18    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "description":Ljava/lang/CharSequence;
    .end local v22    # "element":Ljava/lang/String;
    .end local v28    # "path":Ljava/lang/String;
    .end local v31    # "subsystem":Ljava/lang/CharSequence;
    :catch_16d
    move-exception v21

    .line 1715
    .local v21, "e":Ljava/io/IOException;
    :try_start_16e
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_176
    .catchall {:try_start_16e .. :try_end_176} :catchall_125

    .line 1664
    .end local v21    # "e":Ljava/io/IOException;
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v14    # "activitySecureContainer":Z
    .restart local v18    # "a":Landroid/content/res/TypedArray;
    .restart local v20    # "description":Ljava/lang/CharSequence;
    .restart local v22    # "element":Ljava/lang/String;
    .restart local v28    # "path":Ljava/lang/String;
    .restart local v31    # "subsystem":Ljava/lang/CharSequence;
    :cond_176
    :try_start_176
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got storage path: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " description: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " primary: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " removable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " emulated: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mtpReserve: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " allowMassStorage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maxFileSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " subsystem: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " activitySecureContainer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    if-eqz v7, :cond_229

    .line 1677
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    move-result-object v13

    invoke-direct/range {v2 .. v14}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 1681
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v33

    .line 1682
    .local v33, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_212
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_234

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    .line 1683
    .local v32, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;Z)V

    goto :goto_212

    .line 1687
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v32    # "user":Landroid/content/pm/UserInfo;
    .end local v33    # "userManager":Lcom/android/server/pm/UserManagerService;
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v9    # "allowMassStorage":Z
    :cond_229
    if-eqz v28, :cond_22d

    if-nez v20, :cond_239

    .line 1688
    :cond_22d
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    :cond_234
    :goto_234
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_50

    .line 1690
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v9    # "allowMassStorage":Z
    :cond_239
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v2 .. v14}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 1694
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "unmounted"

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    const-string/jumbo v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 1699
    if-eqz v14, :cond_234

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_270

    .line 1701
    move-object/from16 v0, p0

    iput-object v2, v0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    goto :goto_234

    .line 1703
    :cond_270
    const-string v3, "MountService"

    const-string v12, "multiple secure container volumes in storage list"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_277
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_176 .. :try_end_277} :catch_11c
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_277} :catch_16d
    .catchall {:try_start_176 .. :try_end_277} :catchall_125

    goto :goto_234

    .line 1719
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v14    # "activitySecureContainer":Z
    .end local v18    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "description":Ljava/lang/CharSequence;
    .end local v28    # "path":Ljava/lang/String;
    .end local v31    # "subsystem":Ljava/lang/CharSequence;
    :cond_278
    const/16 v25, 0x0

    goto/16 :goto_61

    .line 1725
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v25    # "index":I
    :cond_27c
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1727
    return-void

    .line 1719
    .end local v22    # "element":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "index":I
    :cond_280
    const/16 v25, 0x0

    goto/16 :goto_12e

    .line 1725
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v25    # "index":I
    :cond_284
    invoke-interface/range {v27 .. v27}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1726
    throw v3
.end method

.method private registerDeviceRestriction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3782
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3784
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3123
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3124
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3125
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3126
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3127
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3129
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3130
    iget-object v2, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    :cond_22
    iget-object v2, p0, mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 1770
    iget-object v0, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1771
    iget-object v0, p0, mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v0, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1555
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1556
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1557
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1559
    return-void
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .param p1, "c"    # Z

    .prologue
    .line 1562
    iget-boolean v0, p0, mBooted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1563
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_16

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_d
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1569
    :goto_15
    return-void

    .line 1563
    :cond_16
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_d

    .line 1567
    :cond_19
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendUmsIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipped, due to boot don\'t complete yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1945
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1946
    :try_start_3
    iput-boolean p1, p0, mUmsEnabling:Z

    .line 1947
    monitor-exit v1

    .line 1948
    return-void

    .line 1947
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static sortByValue(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .param p0, "m"    # Ljava/util/Map;

    .prologue
    .line 3754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3755
    .local v0, "keys":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3756
    new-instance v1, Lcom/android/server/MountService$8;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$8;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3771
    return-object v0
.end method

.method private toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2713
    if-nez p1, :cond_8

    .line 2714
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2717
    :goto_7
    return-object v1

    .line 2716
    :cond_8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2717
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_7
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 14
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 822
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePublicVolumeState :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 826
    :try_start_30
    iget-object v6, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 827
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 828
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_58

    .line 830
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 831
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_57
    return-void

    .line 828
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_58
    move-exception v6

    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v6

    .line 836
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_5b
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 842
    const-string/jumbo v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 843
    iget-object v6, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 850
    iget-object v6, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    :cond_b0
    :goto_b0
    iget-object v7, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 858
    :try_start_b3
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_bb
    if-ltz v2, :cond_f5

    .line 859
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_e9

    .line 861
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_c5
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_ca} :catch_db
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ca} :catch_ec
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_e9

    .line 858
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    goto :goto_bb

    .line 852
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    :cond_cd
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 853
    iget-object v6, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_b0

    .line 862
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_db
    move-exception v5

    .line 863
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_dc
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v6, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_ca

    .line 869
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_e9
    move-exception v6

    monitor-exit v7
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_e9

    throw v6

    .line 865
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_ec
    move-exception v1

    .line 866
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_ed
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ca

    .line 869
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_f5
    monitor-exit v7
    :try_end_f6
    .catchall {:try_start_ed .. :try_end_f6} :catchall_e9

    goto/16 :goto_57
.end method

.method private validateDeviceRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    .line 3864
    invoke-direct {p0, p1}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3865
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policy has restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3867
    :cond_20
    return-void
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1572
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1573
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :cond_1a
    return-void
.end method

.method private validateUserRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    .line 1583
    invoke-direct {p0, p1}, hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1584
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1586
    :cond_1f
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 667
    :goto_0
    const-wide/16 v2, 0x1388

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 668
    return-void

    .line 670
    :cond_b
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_0

    .line 673
    :catch_32
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 662
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 2143
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2144
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_1e

    .line 2145
    const/4 v0, 0x0

    .line 2147
    .local v0, "mounted":Z
    :try_start_7
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_1f

    move-result v0

    .line 2151
    :goto_15
    if-nez v0, :cond_1e

    .line 2152
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    .end local v0    # "mounted":Z
    :cond_1e
    return-void

    .line 2148
    .restart local v0    # "mounted":Z
    :catch_1f
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2804
    sget-object v2, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2805
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2807
    :cond_1b
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    invoke-direct {p0}, waitForReady()V

    .line 2813
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :try_start_2e
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p2}, toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2819
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_58} :catch_5a

    move-result v2

    .line 2822
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_59
    return v2

    .line 2820
    :catch_5a
    move-exception v0

    .line 2822
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_59
.end method

.method public changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4017
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1a

    .line 4020
    :cond_12
    const-string v3, "MountService"

    const-string v4, "Password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    :goto_19
    return v2

    .line 4023
    :cond_1a
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2a

    .line 4024
    :cond_22
    const-string v3, "MountService"

    const-string v4, "New Password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 4028
    :cond_2a
    invoke-direct {p0}, waitForReady()V

    .line 4032
    :try_start_2d
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "changepw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4033
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_54} :catch_56

    move-result v2

    goto :goto_19

    .line 4034
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_56
    move-exception v0

    .line 4036
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEncryptionPassword faile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public clearPassword()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2943
    invoke-direct {p0}, isReady()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2953
    :goto_6
    return-void

    .line 2949
    :cond_7
    :try_start_7
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "clearpw"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_16
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_6

    .line 2950
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_18
    move-exception v0

    .line 2951
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 2223
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: createSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sizeMb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fstype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ownerUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", external = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 2225
    invoke-direct {p0}, waitForReady()V

    .line 2226
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2228
    const/4 v1, 0x0

    .line 2230
    .local v1, "rc":I
    :try_start_4c
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_92

    const-string v2, "1"

    :goto_79
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_7e} :catch_95

    .line 2236
    :goto_7e
    if-nez v1, :cond_91

    .line 2237
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2238
    if-eqz p6, :cond_98

    .line 2239
    :try_start_85
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2243
    :goto_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_a4

    .line 2245
    :cond_91
    return v1

    .line 2230
    :cond_92
    :try_start_92
    const-string v2, "0"
    :try_end_94
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_92 .. :try_end_94} :catch_95

    goto :goto_79

    .line 2232
    :catch_95
    move-exception v0

    .line 2233
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_7e

    .line 2241
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_98
    :try_start_98
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 2243
    :catchall_a4
    move-exception v2

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_a4

    throw v2
.end method

.method public cryptoMount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "mountpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 4042
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the crypt keeper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    invoke-direct {p0}, waitForReady()V

    .line 4046
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1d

    .line 4047
    :cond_15
    const-string v4, "MountService"

    const-string v5, "Password is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :goto_1c
    return v3

    .line 4050
    :cond_1d
    move-object v2, p2

    .line 4051
    .local v2, "mntname":Ljava/lang/String;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_28

    .line 4052
    :cond_26
    const-string v2, ""

    .line 4056
    :cond_28
    :try_start_28
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "cryptfs"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4057
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_4a} :catch_4c

    move-result v3

    goto :goto_1c

    .line 4058
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_4c
    move-exception v0

    .line 4060
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cryptoMount faile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2736
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2739
    :cond_f
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0}, waitForReady()V

    .line 2745
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :try_start_22
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2752
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2753
    .local v0, "code":I
    if-nez v0, :cond_54

    .line 2756
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$7;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_54} :catch_55

    .line 2770
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_54
    :goto_54
    return v0

    .line 2768
    :catch_55
    move-exception v1

    .line 2770
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_54
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2300
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: destroySecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v5, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 2302
    invoke-direct {p0}, waitForReady()V

    .line 2303
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2311
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2313
    const/4 v4, 0x0

    .line 2315
    .local v4, "rc":I
    :try_start_35
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "destroy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_4e

    .line 2317
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2319
    :cond_4e
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_53} :catch_72

    .line 2334
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_53
    if-nez v4, :cond_70

    .line 2335
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2336
    :try_start_58
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2337
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2339
    :cond_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_83

    :cond_70
    move v5, v4

    .line 2342
    :goto_71
    return v5

    .line 2320
    :catch_72
    move-exception v2

    .line 2321
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 2323
    .local v1, "code":I
    :try_start_74
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_77
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_77} :catch_7e

    move-result v1

    .line 2327
    const/16 v5, 0x195

    if-ne v1, v5, :cond_81

    .line 2328
    const/4 v4, -0x7

    goto :goto_53

    .line 2324
    :catch_7e
    move-exception v3

    .line 2325
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v5, -0x1

    goto :goto_71

    .line 2330
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_81
    const/4 v4, -0x1

    goto :goto_53

    .line 2339
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v5
.end method

.method public dirCryptoMntFinished(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4148
    :try_start_0
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "mount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "dirCryptoMntFinished"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_18} :catch_19

    .line 4152
    :goto_18
    return-void

    .line 4149
    :catch_19
    move-exception v0

    .line 4150
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot update VolumeState! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public disableStorageEncryption(Ljava/lang/String;)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3993
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3994
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3997
    :cond_10
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    invoke-direct {p0}, waitForReady()V

    .line 4003
    const-string v2, "MountService"

    const-string v3, "decrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :try_start_23
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "disablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_43} :catch_44

    .line 4013
    :goto_43
    return v1

    .line 4008
    :catch_44
    move-exception v0

    .line 4010
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_43
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3604
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    const-string v24, "MountService"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    new-instance v20, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v22, "  "

    const/16 v23, 0xa0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3608
    .local v20, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, mObbMounts:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3609
    :try_start_25
    const-string v22, "mObbMounts:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, mObbMounts:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3613
    .local v4, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_99

    .line 3614
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3615
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3617
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 3618
    .local v18, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_95

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/MountService$ObbState;

    .line 3619
    .local v17, "obbState":Lcom/android/server/MountService$ObbState;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7e

    .line 3636
    .end local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_92
    move-exception v22

    monitor-exit v23
    :try_end_94
    .catchall {:try_start_25 .. :try_end_94} :catchall_92

    throw v22

    .line 3621
    .restart local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_95
    :try_start_95
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_3f

    .line 3623
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v18    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_99
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3625
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3626
    const-string v22, "mObbPathToStateMap:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3628
    move-object/from16 v0, p0

    iget-object v0, v0, mObbPathToStateMap:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3629
    .local v16, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_b9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e7

    .line 3630
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3631
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    const-string v22, " -> "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3633
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b9

    .line 3635
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_e7
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3636
    monitor-exit v23
    :try_end_eb
    .catchall {:try_start_95 .. :try_end_eb} :catchall_92

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3639
    :try_start_f2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3640
    const-string v22, "mVolumes:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3642
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_10b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/StorageVolume;

    .line 3643
    .local v21, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3644
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3645
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Current state: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_10b

    .line 3649
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v21    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_157
    move-exception v22

    monitor-exit v23
    :try_end_159
    .catchall {:try_start_f2 .. :try_end_159} :catchall_157

    throw v22

    .line 3648
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_15a
    :try_start_15a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3649
    monitor-exit v23
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_157

    .line 3651
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3652
    :try_start_165
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mListeners: count = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 3655
    .local v14, "listenerCaller":Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    .local v9, "i":I
    :goto_1a2
    if-ltz v9, :cond_1ec

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 3657
    .local v5, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    invoke-virtual {v5}, Lcom/android/server/MountService$MountServiceBinderListener;->getCaller()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3658
    .local v19, "pid":Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3659
    .local v8, "freq":Ljava/lang/Integer;
    if-nez v8, :cond_1d9

    new-instance v22, Ljava/lang/Integer;

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_1cf
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3655
    add-int/lit8 v9, v9, -0x1

    goto :goto_1a2

    .line 3659
    :cond_1d9
    new-instance v22, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1cf

    .line 3672
    .end local v5    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v8    # "freq":Ljava/lang/Integer;
    .end local v9    # "i":I
    .end local v14    # "listenerCaller":Ljava/util/Map;
    .end local v19    # "pid":Ljava/lang/Integer;
    :catchall_1e9
    move-exception v22

    monitor-exit v23
    :try_end_1eb
    .catchall {:try_start_165 .. :try_end_1eb} :catchall_1e9

    throw v22

    .line 3662
    .restart local v9    # "i":I
    .restart local v14    # "listenerCaller":Ljava/util/Map;
    :cond_1ec
    const/4 v12, 0x0

    .line 3664
    .local v12, "j":I
    :try_start_1ed
    invoke-static {v14}, sortByValue(Ljava/util/Map;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iter":Ljava/util/Iterator;
    :goto_1f5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_244

    .line 3665
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 3666
    .local v13, "key":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3667
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "pid = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", counter of call = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3669
    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v12, v0, :cond_2b1

    .line 3672
    .end local v13    # "key":Ljava/lang/Integer;
    :cond_244
    monitor-exit v23
    :try_end_245
    .catchall {:try_start_1ed .. :try_end_245} :catchall_1e9

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3675
    :try_start_24c
    const-string v22, "mAsecMountSet: "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, mAsecMountSet:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3677
    :goto_25f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2b5

    .line 3678
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/MountService$PackageInstalledMap;

    .line 3679
    .local v15, "map":Lcom/android/server/MountService$PackageInstalledMap;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3680
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "id = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", external = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v15, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_25f

    .line 3683
    .end local v15    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_2ae
    move-exception v22

    monitor-exit v23
    :try_end_2b0
    .catchall {:try_start_24c .. :try_end_2b0} :catchall_2ae

    throw v22

    .line 3670
    .restart local v13    # "key":Ljava/lang/Integer;
    :cond_2b1
    add-int/lit8 v12, v12, 0x1

    .line 3671
    goto/16 :goto_1f5

    .line 3683
    .end local v13    # "key":Ljava/lang/Integer;
    :cond_2b5
    :try_start_2b5
    monitor-exit v23
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2ae

    .line 3684
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3685
    const-string v22, "mConnection:"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3688
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3689
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2775
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eq p1, v3, :cond_13

    .line 2776
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2779
    :cond_13
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    invoke-direct {p0}, waitForReady()V

    .line 2785
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :try_start_26
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p2}, toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_26 .. :try_end_4d} :catch_4e

    .line 2796
    :goto_4d
    return v1

    .line 2791
    :catch_4e
    move-exception v0

    .line 2793
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_4d
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2264
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: finalizeSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 2266
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2268
    const/4 v1, 0x0

    .line 2270
    .local v1, "rc":I
    :try_start_21
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_33} :catch_34

    .line 2278
    :goto_33
    return v1

    .line 2275
    :catch_34
    move-exception v0

    .line 2276
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_33
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2585
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2586
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 2282
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: fixPermissionsSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 2284
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2286
    const/4 v1, 0x0

    .line 2288
    .local v1, "rc":I
    :try_start_35
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_51} :catch_52

    .line 2296
    :goto_51
    return v1

    .line 2293
    :catch_52
    move-exception v0

    .line 2294
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_51
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2106
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, validatePermission(Ljava/lang/String;)V

    .line 2108
    invoke-direct {p0}, waitForReady()V

    .line 2110
    invoke-direct {p0, p1}, doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 2692
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-direct {p0}, waitForReady()V

    .line 2699
    :try_start_d
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2700
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 2708
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 2701
    :catch_26
    move-exception v0

    .line 2703
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2705
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 2707
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2909
    invoke-direct {p0}, waitForReady()V

    .line 2913
    :try_start_3
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "cryptfs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "getfield"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x71

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, "contents":[Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 2917
    .local v6, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_24
    if-ge v4, v5, :cond_42

    aget-object v1, v0, v4

    .line 2918
    .local v1, "content":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_38} :catch_3c

    move-result-object v6

    .line 2917
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 2921
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contents":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :catch_3c
    move-exception v3

    .line 2922
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7

    .line 2920
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "contents":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "result":Ljava/lang/String;
    :cond_42
    return-object v6
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 2608
    const-string/jumbo v6, "rawPath cannot be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    invoke-direct {p0}, waitForReady()V

    .line 2611
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2614
    iget-object v6, p0, mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v6

    .line 2615
    :try_start_12
    iget-object v7, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 2616
    .local v4, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_36

    .line 2617
    if-nez v4, :cond_39

    .line 2618
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find OBB mounted at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_35
    :goto_35
    return-object v5

    .line 2616
    .end local v4    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_36
    move-exception v5

    :try_start_37
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v5

    .line 2624
    .restart local v4    # "state":Lcom/android/server/MountService$ObbState;
    :cond_39
    :try_start_39
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "obb"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "path"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2625
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v6, 0xd3

    invoke-virtual {v2, v6}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2626
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_57
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_57} :catch_59

    move-result-object v5

    goto :goto_35

    .line 2627
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_59
    move-exception v1

    .line 2628
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2630
    .local v0, "code":I
    :try_start_5b
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_5e} :catch_77

    move-result v0

    .line 2634
    const/16 v6, 0x196

    if-eq v0, v6, :cond_35

    .line 2637
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected response code %d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2631
    :catch_77
    move-exception v3

    .line 2632
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_35
.end method

.method public getPassword()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2928
    invoke-direct {p0}, isReady()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2929
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 2935
    :goto_b
    return-object v2

    .line 2934
    :cond_c
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "getpw"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2935
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, fromHex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_23} :catch_25

    move-result-object v2

    goto :goto_b

    .line 2936
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_25
    move-exception v0

    .line 2937
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getPasswordType()I
    .registers 9

    .prologue
    .line 2867
    invoke-direct {p0}, waitForReady()V

    .line 2871
    :try_start_3
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getpwtype"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2872
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    sget-object v3, CRYPTO_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2b

    .line 2873
    sget-object v3, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2874
    return v2

    .line 2872
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2877
    :cond_2b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unexpected return from cryptfs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_34} :catch_34

    .line 2878
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_34
    move-exception v0

    .line 2879
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4136
    :try_start_0
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const/16 v3, 0x4e20

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getfield"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4137
    .local v1, "event":[Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 4138
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v2

    .line 4142
    .end local v1    # "event":[Lcom/android/server/NativeDaemonEvent;
    :goto_24
    return-object v2

    .line 4139
    :catch_25
    move-exception v0

    .line 4141
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Cannot get the property from footer"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2558
    const-string v1, "noting"

    invoke-direct {p0, p1, v1}, getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: getSecureContainerFilesystemPath :: id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    return-object v0
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 2178
    const-string v7, "MountService"

    const-string v8, " :::: getSecureContainerList"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const-string v7, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v7}, validatePermission(Ljava/lang/String;)V

    .line 2180
    invoke-direct {p0}, waitForReady()V

    .line 2181
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2185
    :try_start_13
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "asec"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "list"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_28} :catch_5f

    move-result-object v5

    .line 2190
    .local v5, "packdata":[Ljava/lang/String;
    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2193
    .local v0, "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v8

    .line 2194
    :try_start_35
    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v7

    if-nez v7, :cond_80

    .line 2197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    .local v6, "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2199
    .local v2, "i":I
    iget-object v7, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2200
    .local v3, "iter":Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2203
    .local v4, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v7, :cond_47

    .line 2204
    iget-object v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_35 .. :try_end_5c} :catchall_8c

    .line 2205
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 2187
    .end local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    .end local v5    # "packdata":[Ljava/lang/String;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_5f
    move-exception v1

    .line 2188
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v5, v12, [Ljava/lang/String;

    .restart local v5    # "packdata":[Ljava/lang/String;
    goto :goto_29

    .line 2209
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_63
    if-lez v2, :cond_7d

    .line 2210
    :try_start_65
    const-string v7, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSecureContainerList : (no media) lists = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_7d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2216
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_8c

    .line 2218
    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 2216
    :catchall_8c
    move-exception v7

    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v7
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2499
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: getSecureContainerPath :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 2501
    invoke-direct {p0}, waitForReady()V

    .line 2502
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2504
    invoke-direct {p0, p1}, isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 2505
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 2506
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureContainerPath : (no media) return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mASECDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, mASECDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2524
    :goto_7c
    return-object v4

    .line 2512
    :cond_7d
    :try_start_7d
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2513
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2514
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_99
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7d .. :try_end_99} :catch_9b

    move-result-object v4

    goto :goto_7c

    .line 2515
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_9b
    move-exception v1

    .line 2516
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2518
    .local v0, "code":I
    :try_start_9d
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_a0} :catch_b5

    move-result v0

    .line 2522
    const/16 v5, 0x196

    if-ne v0, v5, :cond_b7

    .line 2523
    const-string v5, "MountService"

    const-string v6, "Container \'%s\' not found"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 2519
    :catch_b5
    move-exception v3

    .line 2520
    .local v3, "ex":Ljava/lang/NullPointerException;
    goto :goto_7c

    .line 2526
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_b7
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 15
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 2114
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, validatePermission(Ljava/lang/String;)V

    .line 2115
    invoke-direct {p0}, waitForReady()V

    .line 2117
    :try_start_9
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "storage"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "users"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x70

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v5

    .line 2122
    .local v5, "r":[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [I

    .line 2123
    .local v1, "data":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    array-length v7, v5

    if-ge v3, v7, :cond_57

    .line 2124
    aget-object v7, v5, v3

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_32} :catch_6b

    move-result-object v6

    .line 2126
    .local v6, "tok":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_34
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3c} :catch_3f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_3c} :catch_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_3c} :catch_6b

    .line 2123
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2127
    :catch_3f
    move-exception v4

    .line 2128
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_40
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Error parsing pid %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    const/4 v7, 0x0

    new-array v1, v7, [I

    .line 2138
    .end local v1    # "data":[I
    .end local v3    # "i":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "r":[Ljava/lang/String;
    .end local v6    # "tok":[Ljava/lang/String;
    :cond_57
    :goto_57
    return-object v1

    .line 2130
    .restart local v1    # "data":[I
    .restart local v3    # "i":I
    .restart local v5    # "r":[Ljava/lang/String;
    .restart local v6    # "tok":[Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 2131
    .local v0, "are":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: out of bounds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v7, 0x0

    new-array v1, v7, [I
    :try_end_6a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_6a} :catch_6b

    goto :goto_57

    .line 2136
    .end local v0    # "are":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1    # "data":[I
    .end local v3    # "i":I
    .end local v5    # "r":[Ljava/lang/String;
    .end local v6    # "tok":[Ljava/lang/String;
    :catch_6b
    move-exception v2

    .line 2137
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Failed to retrieve storage users list"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    new-array v1, v12, [I

    goto :goto_57
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3068
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3069
    .local v1, "callingUserId":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_4a

    move v0, v7

    .line 3073
    .local v0, "accessAll":Z
    :goto_19
    iget-object v9, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3074
    :try_start_1c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3075
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3076
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3077
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4c

    :cond_3e
    move v5, v7

    .line 3078
    .local v5, "ownerMatch":Z
    :goto_3f
    if-nez v0, :cond_43

    if-eqz v5, :cond_26

    .line 3079
    :cond_43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 3083
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_47
    move-exception v7

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    throw v7

    .end local v0    # "accessAll":Z
    :cond_4a
    move v0, v8

    .line 3069
    goto :goto_19

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4c
    move v5, v8

    .line 3077
    goto :goto_3f

    .line 3082
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_47

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 2025
    iget-object v2, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2026
    :try_start_3
    iget-object v1, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2027
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_3b

    .line 2028
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 2030
    const-string/jumbo v0, "removed"

    .line 2036
    :cond_3b
    monitor-exit v2

    return-object v0

    .line 2032
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2037
    .end local v0    # "state":Ljava/lang/String;
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public isEncryptedWithForceEncrypt()I
    .registers 8

    .prologue
    .line 4157
    :try_start_0
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "forceencrypt"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4158
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_17} :catch_19

    move-result v2

    .line 4161
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_18
    return v2

    .line 4159
    :catch_19
    move-exception v0

    .line 4160
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot check force encrypt condition! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 2042
    iget-object v0, p0, mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 2644
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    iget-object v1, p0, mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2646
    :try_start_9
    iget-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2647
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2441
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, validatePermission(Ljava/lang/String;)V

    .line 2442
    invoke-direct {p0}, waitForReady()V

    .line 2443
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2445
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 2446
    :try_start_e
    iget-object v1, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2447
    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: isSecureContainerMounted :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    monitor-exit v2

    return v0

    .line 2449
    .end local v0    # "ret":Z
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public isStorageFullyEncrypted()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 4086
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    invoke-direct {p0}, waitForReady()V

    .line 4093
    :try_start_d
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fullyencrypted"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4094
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 4102
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 4095
    :catch_26
    move-exception v0

    .line 4097
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs fullyencrypted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 4099
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 4101
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public isUsbMassStorageConnected()Z
    .registers 5

    .prologue
    .line 1951
    invoke-direct {p0}, waitForReady()V

    .line 1953
    invoke-direct {p0}, getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1954
    const/4 v0, 0x1

    .line 1958
    :goto_a
    return v0

    .line 1956
    :cond_b
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1957
    :try_start_e
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsbMassStorageConnected :: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mUmsAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-boolean v0, p0, mUmsAvailable:Z

    monitor-exit v1

    goto :goto_a

    .line 1959
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 5

    .prologue
    .line 2006
    const-string/jumbo v1, "share"

    invoke-direct {p0, v1}, isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 2007
    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: isUsbMassStorageEnabled :: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    .line 2957
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2958
    .local v4, "userId":I
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2961
    .local v3, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2963
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2966
    :try_start_1e
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_67

    move-result-object p2

    .line 2972
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 2973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2978
    :cond_42
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 2981
    .local v5, "voldPath":Ljava/lang/String;
    if-eqz v5, :cond_b7

    .line 2984
    :try_start_50
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const/16 v7, 0x7d0

    const-string/jumbo v8, "volume"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "mkdirs"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    :try_end_65
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_50 .. :try_end_65} :catch_8c

    .line 2985
    const/4 v6, 0x0

    .line 3025
    .end local v5    # "voldPath":Ljava/lang/String;
    :goto_66
    return v6

    .line 2967
    :catch_67
    move-exception v1

    .line 2968
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v6, -0x1

    goto :goto_66

    .line 2986
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "voldPath":Ljava/lang/String;
    :catch_8c
    move-exception v1

    .line 2988
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_8d
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_90} :catch_92

    move-result v6

    goto :goto_66

    .line 2989
    :catch_92
    move-exception v2

    .line 2990
    .local v2, "e1":Ljava/lang/NullPointerException;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to mkdir (2sec) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const/4 v6, -0x1

    goto :goto_66

    .line 2996
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "e1":Ljava/lang/NullPointerException;
    :cond_b7
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 2999
    if-eqz v5, :cond_108

    .line 3001
    :try_start_c5
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const/16 v7, 0x7d0

    const-string/jumbo v8, "volume"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "mkdirs"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    :try_end_da
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c5 .. :try_end_da} :catch_dc

    .line 3002
    const/4 v6, 0x0

    goto :goto_66

    .line 3003
    :catch_dc
    move-exception v1

    .line 3005
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_dd
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_e0
    .catch Ljava/lang/NullPointerException; {:try_start_dd .. :try_end_e0} :catch_e2

    move-result v6

    goto :goto_66

    .line 3006
    :catch_e2
    move-exception v2

    .line 3007
    .restart local v2    # "e1":Ljava/lang/NullPointerException;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to mkdir (2sec) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v6, -0x1

    goto/16 :goto_66

    .line 3013
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "e1":Ljava/lang/NullPointerException;
    :cond_108
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 3016
    if-eqz v5, :cond_15b

    .line 3018
    :try_start_116
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const/16 v7, 0x7d0

    const-string/jumbo v8, "volume"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "mkdirs"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    :try_end_12b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_116 .. :try_end_12b} :catch_12e

    .line 3019
    const/4 v6, 0x0

    goto/16 :goto_66

    .line 3020
    :catch_12e
    move-exception v1

    .line 3022
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_12f
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_132
    .catch Ljava/lang/NullPointerException; {:try_start_12f .. :try_end_132} :catch_135

    move-result v6

    goto/16 :goto_66

    .line 3023
    :catch_135
    move-exception v2

    .line 3024
    .restart local v2    # "e1":Ljava/lang/NullPointerException;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to mkdir (2sec) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const/4 v6, -0x1

    goto/16 :goto_66

    .line 3030
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "e1":Ljava/lang/NullPointerException;
    :cond_15b
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid mkdirs path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public modifyVolumeLocked(Ljava/lang/String;IZLjava/lang/String;)I
    .registers 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "descriptionId"    # I
    .param p3, "removable"    # Z
    .param p4, "subsystem"    # Ljava/lang/String;

    .prologue
    .line 3715
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, validatePermission(Ljava/lang/String;)V

    .line 3716
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: modifyStorageLocked :: path = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", descriptionId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", subsystem = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from pid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const/4 v5, 0x0

    .line 3718
    .local v5, "primary":Z
    const/4 v7, 0x0

    .line 3719
    .local v7, "emulated":Z
    const/4 v8, 0x0

    .line 3720
    .local v8, "mtpReserve":I
    const/4 v9, 0x0

    .line 3721
    .local v9, "allowMassStorage":Z
    const-wide/16 v10, 0x0

    .line 3722
    .local v10, "maxFileSize":J
    const/4 v14, 0x0

    .line 3723
    .local v14, "activitySecureContainer":Z
    const/16 v16, 0x0

    .line 3725
    .local v16, "rc":I
    if-nez p1, :cond_5d

    .line 3726
    const-string v3, "MountService"

    const-string v4, "Missing storage path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    const/16 v16, -0x1

    .line 3749
    :goto_5b
    const/4 v3, 0x0

    return v3

    .line 3729
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3731
    :try_start_64
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    .line 3733
    .local v15, "exited":Landroid/os/storage/StorageVolume;
    if-eqz v15, :cond_79

    .line 3734
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 3735
    const/16 v16, 0x1

    .line 3738
    :cond_79
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_ac

    .line 3739
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    move/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v13, p4

    invoke-direct/range {v2 .. v14}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 3741
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v3, v0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "unmounted"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3743
    const-string/jumbo v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 3744
    const/16 v16, 0x0

    .line 3746
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_ac
    monitor-exit v17

    goto :goto_5b

    .end local v15    # "exited":Landroid/os/storage/StorageVolume;
    :catchall_ae
    move-exception v3

    monitor-exit v17
    :try_end_b0
    .catchall {:try_start_64 .. :try_end_b0} :catchall_ae

    throw v3
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 3693
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 3694
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3696
    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 2653
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2658
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2659
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2660
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2664
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    .prologue
    .line 2346
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: mountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ownerUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", readonly = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0}, waitForReady()V

    .line 2349
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2351
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2352
    :try_start_3a
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 2353
    const/4 v4, -0x6

    monitor-exit v6

    .line 2383
    :cond_49
    :goto_49
    return v4

    .line 2355
    :cond_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_98

    .line 2357
    const/4 v4, 0x0

    .line 2359
    .local v4, "rc":I
    :try_start_4c
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "asec"

    const/4 v5, 0x5

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "mount"

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aput-object p1, v8, v5

    const/4 v5, 0x2

    new-instance v9, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v9, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x4

    if-eqz p4, :cond_9b

    const-string/jumbo v5, "ro"

    :goto_70
    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_75
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_75} :catch_9f

    .line 2373
    :cond_75
    :goto_75
    const-string v5, "not"

    invoke-direct {p0, p1, v5}, getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2374
    .local v3, "path":Ljava/lang/String;
    if-nez v4, :cond_49

    .line 2375
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2376
    :try_start_80
    const-string v5, "/data/app-asec/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 2377
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2381
    :goto_93
    monitor-exit v6

    goto :goto_49

    :catchall_95
    move-exception v5

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_95

    throw v5

    .line 2355
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "rc":I
    :catchall_98
    move-exception v5

    :try_start_99
    monitor-exit v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v5

    .line 2359
    .restart local v4    # "rc":I
    :cond_9b
    :try_start_9b
    const-string/jumbo v5, "rw"
    :try_end_9e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_70

    .line 2361
    :catch_9f
    move-exception v1

    .line 2362
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2364
    .local v0, "code":I
    :try_start_a1
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_a4
    .catch Ljava/lang/NullPointerException; {:try_start_a1 .. :try_end_a4} :catch_ab

    move-result v0

    .line 2368
    const/16 v5, 0x195

    if-eq v0, v5, :cond_75

    .line 2369
    const/4 v4, -0x1

    goto :goto_75

    .line 2365
    :catch_ab
    move-exception v2

    .line 2366
    .local v2, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_49

    .line 2379
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_ae
    :try_start_ae
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v8, 0x1

    invoke-direct {v7, p0, p1, v8}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_95

    goto :goto_93
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2046
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: mountVolume(thread ed.) :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, validatePermission(Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0}, waitForReady()V

    .line 2049
    new-instance v0, Lcom/android/server/MountService$6;

    const-string v1, "mountVolume"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$6;->start()V

    .line 2062
    const/4 v0, 0x0

    return v0
.end method

.method public moveDumpstates()I
    .registers 8

    .prologue
    .line 4107
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    invoke-direct {p0}, waitForReady()V

    .line 4113
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "movedump"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4114
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_23} :catch_25

    move-result v2

    .line 4117
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_24
    return v2

    .line 4115
    :catch_25
    move-exception v0

    .line 4116
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    const/4 v2, -0x1

    goto :goto_24
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 4

    .prologue
    .line 877
    const-string/jumbo v1, "vold.encrypt_progress"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "encDecProgress":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 879
    const-string v1, "MountService"

    const-string v2, "Skip register DirEncryptListener if enc/decryption is in progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_18
    :goto_18
    new-instance v1, Lcom/android/server/MountService$3;

    const-string v2, "MountService#onDaemonConnected"

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$3;->start()V

    .line 975
    return-void

    .line 882
    :cond_23
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 883
    iget-object v1, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    if-nez v1, :cond_18

    .line 884
    iget-object v1, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v1, :cond_3a

    .line 885
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 886
    :cond_3a
    const-string v1, "MountService"

    const-string/jumbo v2, "register direncryption listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v1, Lcom/android/server/MountService$DirEncryptListner;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 888
    iget-object v1, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    goto :goto_18
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 33
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1016
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string v24, "onEvent::"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " raw= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    if-eqz p3, :cond_58

    .line 1020
    const-string v24, " cooked = "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    move-object/from16 v7, p3

    .local v7, "arr$":[Ljava/lang/String;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_35
    if-ge v12, v14, :cond_58

    aget-object v19, v7, v12

    .line 1022
    .local v19, "str":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    .line 1025
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v19    # "str":Ljava/lang/String;
    :cond_58
    const-string v24, "MountService"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/16 v24, 0x25d

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_91

    .line 1033
    const/16 v24, 0x2

    aget-object v24, p3, v24

    const/16 v25, 0x3

    aget-object v25, p3, v25

    const/16 v26, 0x7

    aget-object v26, p3, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0xa

    aget-object v27, p3, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1151
    :cond_8e
    :goto_8e
    const/16 v24, 0x1

    :goto_90
    return v24

    .line 1036
    :cond_91
    const/16 v24, 0x265

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_cb

    .line 1038
    const/16 v24, 0x2

    aget-object v17, p3, v24

    .line 1039
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c8

    const/16 v24, 0x3

    aget-object v21, p3, v24

    .line 1041
    .local v21, "uuid":Ljava/lang/String;
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageVolume;

    .line 1042
    .local v22, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v22, :cond_8e

    .line 1043
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto :goto_8e

    .line 1039
    .end local v21    # "uuid":Ljava/lang/String;
    .end local v22    # "vol":Landroid/os/storage/StorageVolume;
    :cond_c8
    const/16 v21, 0x0

    goto :goto_ae

    .line 1046
    .end local v17    # "path":Ljava/lang/String;
    :cond_cb
    const/16 v24, 0x266

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_105

    .line 1048
    const/16 v24, 0x2

    aget-object v17, p3, v24

    .line 1049
    .restart local v17    # "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_102

    const/16 v24, 0x3

    aget-object v20, p3, v24

    .line 1051
    .local v20, "userLabel":Ljava/lang/String;
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/storage/StorageVolume;

    .line 1052
    .restart local v22    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v22, :cond_8e

    .line 1053
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto :goto_8e

    .line 1049
    .end local v20    # "userLabel":Ljava/lang/String;
    .end local v22    # "vol":Landroid/os/storage/StorageVolume;
    :cond_102
    const/16 v20, 0x0

    goto :goto_e8

    .line 1056
    .end local v17    # "path":Ljava/lang/String;
    :cond_105
    const/16 v24, 0x276

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_11d

    const/16 v24, 0x277

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_11d

    const/16 v24, 0x278

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_278

    .line 1062
    :cond_11d
    const/4 v6, 0x0

    .line 1063
    .local v6, "action":Ljava/lang/String;
    const/16 v24, 0x2

    aget-object v13, p3, v24

    .line 1064
    .local v13, "label":Ljava/lang/String;
    const/16 v24, 0x3

    aget-object v17, p3, v24

    .line 1065
    .restart local v17    # "path":Ljava/lang/String;
    const/4 v15, -0x1

    .line 1066
    .local v15, "major":I
    const/16 v16, -0x1

    .line 1069
    .local v16, "minor":I
    const/16 v24, 0x6

    :try_start_12b
    aget-object v24, p3, v24

    const/16 v25, 0x1

    const/16 v26, 0x6

    aget-object v26, p3, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1070
    .local v9, "devComp":Ljava/lang/String;
    const-string v24, ":"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1071
    .local v10, "devTok":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v10, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1072
    const/16 v24, 0x1

    aget-object v24, v10, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_154} :catch_1a6

    move-result v16

    .line 1079
    .end local v9    # "devComp":Ljava/lang/String;
    .end local v10    # "devTok":[Ljava/lang/String;
    :goto_155
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1080
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageVolume;

    .line 1081
    .local v23, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1082
    .local v18, "state":Ljava/lang/String;
    monitor-exit v25
    :try_end_17d
    .catchall {:try_start_15c .. :try_end_17d} :catchall_1b3

    .line 1084
    const/16 v24, 0x276

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b6

    .line 1085
    new-instance v24, Lcom/android/server/MountService$4;

    const-string v25, "MountService#VolumeDiskInserted"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/MountService$4;->start()V

    .line 1144
    :goto_197
    if-eqz v6, :cond_8e

    .line 1145
    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v6, v1, v2}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_8e

    .line 1073
    .end local v18    # "state":Ljava/lang/String;
    .end local v23    # "volume":Landroid/os/storage/StorageVolume;
    :catch_1a6
    move-exception v11

    .line 1074
    .local v11, "ex":Ljava/lang/Exception;
    const-string v24, "MountService"

    const-string v25, "Failed to parse major/minor"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_155

    .line 1082
    .end local v11    # "ex":Ljava/lang/Exception;
    :catchall_1b3
    move-exception v24

    :try_start_1b4
    monitor-exit v25
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    throw v24

    .line 1114
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v23    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1b6
    const/16 v24, 0x277

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_20a

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "bad_removal"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d2

    .line 1119
    const/16 v24, 0x1

    goto/16 :goto_90

    .line 1122
    :cond_1d2
    const-string v24, "MountService"

    const-string v25, "Sending unmounted event first"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string/jumbo v24, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1124
    const-string v24, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1126
    const-string v24, "MountService"

    const-string v25, "Sending media removed"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const-string/jumbo v24, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1128
    const-string v6, "android.intent.action.MEDIA_REMOVED"

    goto :goto_197

    .line 1129
    :cond_20a
    const/16 v24, 0x278

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_24a

    .line 1130
    const-string v24, "MountService"

    const-string v25, "Sending unmounted event first"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string/jumbo v24, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1133
    const-string v24, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1135
    const-string v24, "MountService"

    const-string v25, "Sending media bad removal"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v24, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1137
    const-string v6, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_197

    .line 1138
    :cond_24a
    const/16 v24, 0x2bc

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_25b

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_197

    .line 1141
    :cond_25b
    const-string v24, "MountService"

    const-string v25, "Unknown code {%d}"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_197

    .line 1148
    .end local v6    # "action":Ljava/lang/String;
    .end local v13    # "label":Ljava/lang/String;
    .end local v15    # "major":I
    .end local v16    # "minor":I
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "state":Ljava/lang/String;
    .end local v23    # "volume":Landroid/os/storage/StorageVolume;
    :cond_278
    const/16 v24, 0x0

    goto/16 :goto_90
.end method

.method public prepareDecryptOnRecovery(ILjava/lang/String;)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 3969
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3970
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3973
    :cond_f
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    invoke-direct {p0}, waitForReady()V

    .line 3979
    const-string v2, "MountService"

    const-string/jumbo v3, "prepareDecryptOnRecovery..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :try_start_23
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "recoverymount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3985
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_4a} :catch_4c

    move-result v2

    .line 3988
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_4b
    return v2

    .line 3986
    :catch_4c
    move-exception v0

    .line 3988
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_4b
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1855
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1856
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    .line 1858
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/MountService$MountServiceBinderListener;->setCaller(I)V

    .line 1859
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1860
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1e
    .catchall {:try_start_8 .. :try_end_1c} :catchall_27

    .line 1864
    :goto_1c
    :try_start_1c
    monitor-exit v3

    .line 1865
    return-void

    .line 1861
    :catch_1e
    move-exception v1

    .line 1862
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1864
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 2453
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: renameSecureContainer :: oldId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 2455
    invoke-direct {p0}, waitForReady()V

    .line 2456
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2458
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2463
    :try_start_30
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2465
    :cond_4a
    const/4 v1, -0x6

    monitor-exit v3

    .line 2476
    :goto_4c
    return v1

    .line 2467
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_69

    .line 2469
    const/4 v1, 0x0

    .line 2471
    .local v1, "rc":I
    :try_start_4f
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_65
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4f .. :try_end_65} :catch_66

    goto :goto_4c

    .line 2472
    :catch_66
    move-exception v0

    .line 2473
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_4c

    .line 2467
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method requiredEncPolicyCheck(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3934
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3952
    :cond_7
    :goto_7
    return v3

    .line 3939
    :cond_8
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3941
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-nez v4, :cond_32

    .line 3942
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 3944
    .local v2, "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    .line 3945
    .local v1, "mDep":Lcom/android/server/DirEncryptPrefs;
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 3948
    .end local v1    # "mDep":Lcom/android/server/DirEncryptPrefs;
    .end local v2    # "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_32
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3949
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 2250
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 2251
    invoke-direct {p0}, waitForReady()V

    .line 2252
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2254
    const/4 v1, 0x0

    .line 2256
    .local v1, "rc":I
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "resize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_2e} :catch_2f

    .line 2260
    :goto_2e
    return v1

    .line 2257
    :catch_2f
    move-exception v0

    .line 2258
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_2e
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 803
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    return-void
.end method

.method public sectrimSecureKeys(Ljava/lang/String;)I
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2482
    invoke-direct {p0}, waitForReady()V

    .line 2484
    :try_start_5
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "fstrim"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "dosectrim"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_17
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_17} :catch_32

    move-result-object v1

    .line 2489
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3c

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3c

    .line 2490
    const-string v3, "MountService"

    const-string v4, "SECTRIM completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_31
    return v2

    .line 2485
    :catch_32
    move-exception v0

    .line 2486
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v4, "Unable to execute SECTRIM"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2487
    goto :goto_31

    .line 2493
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_3c
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SECTRIM failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2494
    goto :goto_31
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2891
    invoke-direct {p0}, waitForReady()V

    .line 2895
    :try_start_3
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setfield"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_19} :catch_1b

    move-result-object v1

    .line 2899
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2896
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1b
    move-exception v0

    .line 2897
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNullSDCardPassword(Ljava/lang/String;)I
    .registers 10
    .param p1, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4066
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1a

    .line 4069
    :cond_12
    const-string v3, "MountService"

    const-string v4, "Error password is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :goto_19
    return v2

    .line 4073
    :cond_1a
    invoke-direct {p0}, waitForReady()V

    .line 4076
    :try_start_1d
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "setnullsdcardpwd"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4077
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_3d} :catch_3f

    move-result v2

    goto :goto_19

    .line 4078
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3f
    move-exception v0

    .line 4080
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set null password for SDCard! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4124
    :try_start_0
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setfield"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4125
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result v2

    .line 4129
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_1f
    return v2

    .line 4126
    :catch_20
    move-exception v0

    .line 4128
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Cannot set the property into footer"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    const/4 v2, -0x1

    goto :goto_1f
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 11
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1963
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: setUsbMassStorageEnabled :: enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-direct {p0}, waitForReady()V

    .line 1965
    const-string v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 1966
    const-string v5, "no_usb_file_transfer"

    invoke-direct {p0, v5}, validateUserRestriction(Ljava/lang/String;)V

    .line 1967
    const-string v5, "mass_storage"

    invoke-direct {p0, v5}, validateDeviceRestriction(Ljava/lang/String;)V

    .line 1969
    invoke-direct {p0}, getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1970
    .local v2, "primary":Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_32

    .line 2003
    :cond_31
    :goto_31
    return-void

    .line 1977
    :cond_32
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, v1}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1979
    .local v4, "vs":Ljava/lang/String;
    const-string/jumbo v0, "ums"

    .line 1980
    .local v0, "method":Ljava/lang/String;
    if-eqz p1, :cond_5e

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1982
    invoke-direct {p0, p1}, setUmsEnabling(Z)V

    .line 1983
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v3, p0, v1, v0, v8}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1984
    .local v3, "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    iget-object v6, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    const/4 v5, 0x0

    invoke-direct {p0, v5}, setUmsEnabling(Z)V

    .line 1991
    .end local v3    # "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5e
    if-nez p1, :cond_31

    .line 1992
    invoke-direct {p0, v1, v0, p1}, doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1993
    invoke-direct {p0, v1}, doMountVolume(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_31

    .line 1994
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after disabling share method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 3700
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 3701
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: setVolumeState :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    iget-object v3, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3703
    :try_start_38
    iget-object v2, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3704
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_63

    .line 3705
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): Unknown volume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    monitor-exit v3

    .line 3712
    :goto_62
    return-void

    .line 3708
    :cond_63
    iget-object v2, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    iget-object v2, p0, mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 3710
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_75

    invoke-virtual {v1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 3711
    :cond_75
    monitor-exit v3

    goto :goto_62

    .end local v0    # "v":Ljava/lang/String;
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_77
    move-exception v2

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_38 .. :try_end_79} :catchall_77

    throw v2
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 14
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 1880
    const-string v8, "android.permission.SHUTDOWN"

    invoke-direct {p0, v8}, validatePermission(Ljava/lang/String;)V

    .line 1882
    const-string v8, "MountService"

    const-string v9, "Shutting down"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v9, p0, mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1885
    :try_start_f
    new-instance v2, Lcom/android/server/MountService$MountShutdownLatch;

    iget-object v8, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-direct {v2, p1, v8}, Lcom/android/server/MountService$MountShutdownLatch;-><init>(Landroid/os/storage/IMountShutdownObserver;I)V

    .line 1888
    .local v2, "mountShutdownLatch":Lcom/android/server/MountService$MountShutdownLatch;
    iget-object v8, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1889
    .local v3, "path":Ljava/lang/String;
    iget-object v8, p0, mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1891
    .local v6, "state":Ljava/lang/String;
    const-string/jumbo v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 1899
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, setUsbMassStorageEnabled(Z)V

    .line 1921
    :cond_45
    :goto_45
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 1923
    new-instance v7, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v7, p0, v3, v2}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Lcom/android/server/MountService$MountShutdownLatch;)V

    .line 1924
    .local v7, "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v8, p0, mHandler:Landroid/os/Handler;

    iget-object v10, p0, mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24

    .line 1935
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mountShutdownLatch":Lcom/android/server/MountService$MountShutdownLatch;
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    :catchall_5f
    move-exception v8

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_5f

    throw v8

    .line 1900
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mountShutdownLatch":Lcom/android/server/MountService$MountShutdownLatch;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "state":Ljava/lang/String;
    :cond_62
    :try_start_62
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 1906
    const/16 v4, 0x1e

    .local v4, "retries":I
    move v5, v4

    .line 1907
    .end local v4    # "retries":I
    .local v5, "retries":I
    :goto_6d
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_5f

    move-result v8

    if-eqz v8, :cond_c2

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    if-ltz v5, :cond_8c

    .line 1909
    const-wide/16 v10, 0x3e8

    :try_start_7b
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_84
    .catchall {:try_start_7b .. :try_end_7e} :catchall_5f

    .line 1914
    :try_start_7e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    move v5, v4

    .end local v4    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_6d

    .line 1910
    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    :catch_84
    move-exception v1

    .line 1911
    .local v1, "iex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v10, "Interrupted while waiting for media"

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1916
    .end local v1    # "iex":Ljava/lang/InterruptedException;
    :cond_8c
    :goto_8c
    if-nez v4, :cond_45

    .line 1917
    const-string v8, "MountService"

    const-string v10, "Timed out waiting for media to check"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1925
    .end local v4    # "retries":I
    :cond_96
    if-eqz p1, :cond_24

    .line 1930
    invoke-virtual {v2}, Lcom/android/server/MountService$MountShutdownLatch;->countDown()V

    .line 1931
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unmount completed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", result code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1935
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    :cond_c0
    monitor-exit v9
    :try_end_c1
    .catchall {:try_start_7e .. :try_end_c1} :catchall_5f

    .line 1936
    return-void

    .restart local v3    # "path":Ljava/lang/String;
    .restart local v5    # "retries":I
    .restart local v6    # "state":Ljava/lang/String;
    :cond_c2
    move v4, v5

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_8c
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, mSystemReady:Z

    .line 1846
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1847
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 2668
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    iget-object v2, p0, mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 2672
    :try_start_9
    iget-object v1, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 2673
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_35

    .line 2675
    if-eqz v8, :cond_38

    .line 2677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2678
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2680
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2681
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2688
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_34
    return-void

    .line 2673
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 2686
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_38
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2387
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: unmountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, validatePermission(Ljava/lang/String;)V

    .line 2389
    invoke-direct {p0}, waitForReady()V

    .line 2390
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2392
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2393
    :try_start_31
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2394
    const/4 v4, -0x5

    monitor-exit v6

    .line 2437
    :cond_40
    :goto_40
    return v4

    .line 2396
    :cond_41
    invoke-direct {p0, p1}, isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_64

    .line 2397
    const-string v5, "MountService"

    const-string/jumbo v7, "unmountSecureContainer : no media"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2399
    monitor-exit v6

    goto :goto_40

    .line 2401
    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_61

    throw v5

    :cond_64
    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    .line 2409
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2411
    const/4 v4, 0x0

    .line 2413
    .local v4, "rc":I
    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2414
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_87

    .line 2415
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2417
    :cond_87
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_8c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_8c} :catch_a0

    .line 2432
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_8c
    if-nez v4, :cond_40

    .line 2433
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2434
    :try_start_91
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2435
    monitor-exit v6

    goto :goto_40

    :catchall_9d
    move-exception v5

    monitor-exit v6
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_9d

    throw v5

    .line 2418
    :catch_a0
    move-exception v2

    .line 2419
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 2421
    .local v1, "code":I
    :try_start_a2
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_a5} :catch_ac

    move-result v1

    .line 2425
    const/16 v5, 0x195

    if-ne v1, v5, :cond_af

    .line 2426
    const/4 v4, -0x7

    goto :goto_8c

    .line 2422
    :catch_ac
    move-exception v3

    .line 2423
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_40

    .line 2428
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_af
    const/4 v4, -0x1

    goto :goto_8c
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2066
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: unmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, validatePermission(Ljava/lang/String;)V

    .line 2068
    invoke-direct {p0}, waitForReady()V

    .line 2071
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2072
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2073
    .local v1, "pathSplits":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v9, :cond_a9

    .line 2074
    const-string v4, "hidden"

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2075
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doUnmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "volume unmount %s force"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :try_start_81
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v1, v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-object v8, v1, v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "force"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_a3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_81 .. :try_end_a3} :catch_a4

    .line 2103
    .end local v1    # "pathSplits":[Ljava/lang/String;
    :cond_a3
    :goto_a3
    return-void

    .line 2078
    .restart local v1    # "pathSplits":[Ljava/lang/String;
    :catch_a4
    move-exception v0

    .line 2079
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_a3

    .line 2087
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "pathSplits":[Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0, p1}, getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, "volState":Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 2101
    new-instance v2, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2102
    .local v2, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a3
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1868
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1869
    :try_start_3
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1870
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v2}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 1871
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1872
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1873
    monitor-exit v3

    .line 1877
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_35
    return-void

    .line 1876
    :cond_36
    monitor-exit v3

    goto :goto_35

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2833
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2836
    :cond_10
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2840
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2843
    :cond_28
    invoke-direct {p0}, waitForReady()V

    .line 2846
    const-string v2, "MountService"

    const-string/jumbo v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :try_start_33
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {p0, p1}, toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2852
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_73
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_33 .. :try_end_73} :catch_75

    move-result v2

    .line 2856
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_74
    return v2

    .line 2854
    :catch_75
    move-exception v0

    .line 2856
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_74
.end method

.method waitForAsecScan()V
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 658
    return-void
.end method
