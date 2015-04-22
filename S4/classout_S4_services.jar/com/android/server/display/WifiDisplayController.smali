.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final AP_CONNECTED:I = 0x5

.field private static final BROKER_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_MAX_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DEFAULT_SCAN_CHANNEL:I = 0x64b

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x32c8

.field private static final FULLSCAN_TIME_DELAY_MILLIS:I = 0x3e8

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final POPUP_CAUSE_OXYGEN_NETWORK_ENABLED:I = 0x22090

.field private static final RESTART_SCANNING_TIME_MILLIS:I = 0x32

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final SCANNING_TIME_MILLIS:I = 0x2710

.field private static final SCAN_MAX_RETRIES:I = 0x0

.field private static final SIDESYNC_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectedMode:I

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionCanceledByUser:Z

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDongleUpdateOnGoing:Z

.field private mDongleUpdateResult:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mFullScanTimer:Ljava/lang/Runnable;

.field private mFullScanningInProgress:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsBootCompleted:Z

.field private mLimitedContentsEnabled:Z

.field private mLimitedContentsType:Ljava/lang/String;

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOnPowerSavingMode:Z

.field private final mP2pClientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialScanningInProgress:Z

.field private mPinRequired:Z

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRemoteIP:Ljava/lang/String;

.field private mRequestedScanChannel:I

.field private mRestartTriggered:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private final mSupportsProtectedBuffers:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mUpdateURL:Ljava/lang/String;

.field private mWaitForAction:Z

.field private final mWaitTillBrokerClosed:Ljava/lang/Runnable;

.field private final mWaitTillSideSyncClosed:Ljava/lang/Runnable;

.field private mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWfdFrequency:I

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pPrevState:Z

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 248
    const/4 v0, 0x4

    iput v0, p0, mWifiDisplayWpsConfig:I

    .line 263
    const/4 v0, -0x1

    iput v0, p0, mConnectedMode:I

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, mPrevNativeDisposeCompleted:Z

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mP2pClientsList:Ljava/util/ArrayList;

    .line 274
    const/16 v0, 0x64b

    iput v0, p0, mRequestedScanChannel:I

    .line 2022
    new-instance v0, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mDiscoverPeers:Ljava/lang/Runnable;

    .line 2030
    new-instance v0, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mWaitTillBrokerClosed:Ljava/lang/Runnable;

    .line 2037
    new-instance v0, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mFullScanTimer:Ljava/lang/Runnable;

    .line 2068
    new-instance v0, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mWaitTillSideSyncClosed:Ljava/lang/Runnable;

    .line 2077
    new-instance v0, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mConnectionTimeout:Ljava/lang/Runnable;

    .line 2089
    new-instance v0, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mRtspTimeout:Ljava/lang/Runnable;

    .line 2295
    new-instance v0, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 280
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 281
    iput-object p3, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 283
    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 284
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 286
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v0, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v0, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v0, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v0, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v0, "android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v0, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v0, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v0, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    new-instance v8, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v0}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 326
    .local v8, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 327
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "wifi_display_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    const-string/jumbo v0, "wifi_display_certification_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    const-string/jumbo v0, "wifi_display_wps_config"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 333
    invoke-direct {p0}, updateSettings()V

    .line 338
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    const/4 v6, 0x1

    .line 342
    .local v6, "enabledMDM":Z
    if-eqz v6, :cond_128

    .line 343
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 344
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_128

    .line 345
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 348
    :cond_128
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mSupportsProtectedBuffers:Z

    .line 353
    new-instance v0, Landroid/media/WFDUibcManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    invoke-static {p0}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    invoke-static {p0}, isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, handleScanResults()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, unadvertiseDisplay()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, updateConnection()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mPinRequired:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, requestPopup(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, disconnect()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, requestScreenMirroringEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;)Landroid/media/WFDUibcManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mDongleUpdateOnGoing:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 118
    iput-object p1, p0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "x2"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    invoke-static {p0}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 118
    invoke-static {p0}, describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mWfdEnabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget v0, p0, mWfdFrequency:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/display/WifiDisplayController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, mWfdFrequency:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 118
    invoke-direct {p0, p1}, getChangedClientDevice(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 118
    iput-object p1, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mDiscoverPeers:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mWifiP2pConnected:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget v0, p0, mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4920(Lcom/android/server/display/WifiDisplayController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iget v0, p0, mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, reportFeatureState()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, retryConnection()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget v0, p0, mConnectedMode:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mConnectionCanceledByUser:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mConnectionCanceledByUser:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1}, handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, handlePeersChanged()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 118
    invoke-direct {p0, p1}, handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mWaitForAction:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mWaitForAction:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, updateScanState()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mUpdateURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, mUpdateURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWaitTillBrokerClosed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, getPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mLimitedContentsType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, mLimitedContentsType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mLimitedContentsEnabled:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mLimitedContentsEnabled:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mWaitTillSideSyncClosed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mDongleUpdateResult:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, mDongleUpdateResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 118
    invoke-direct {p0}, requestPeers()V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 16
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 2133
    iget-object v0, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, p2, :cond_18

    iget v0, p0, mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_18

    iget v0, p0, mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_18

    iget v0, p0, mAdvertisedDisplayFlags:I

    if-eq v0, p5, :cond_7a

    .line 2138
    :cond_18
    iget-object v4, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2139
    .local v4, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2141
    .local v2, "oldSurface":Landroid/view/Surface;
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay << display:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " surface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay << width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iput-object p1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2146
    iput-object p2, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2147
    iput p3, p0, mAdvertisedDisplayWidth:I

    .line 2148
    iput p4, p0, mAdvertisedDisplayHeight:I

    .line 2149
    iput p5, p0, mAdvertisedDisplayFlags:I

    .line 2151
    iget-object v9, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$29;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2201
    .end local v2    # "oldSurface":Landroid/view/Surface;
    .end local v4    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_7a
    return-void
.end method

.method private computeFeatureState()I
    .registers 2

    .prologue
    .line 1003
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_6

    .line 1004
    const/4 v0, 0x1

    .line 1006
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_5

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1218
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2d

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1221
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :goto_2c
    return-void

    .line 1227
    :cond_2d
    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6a

    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_6a

    .line 1231
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not part way through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connecting to a different device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1238
    :cond_6a
    iget-boolean v0, p0, mWfdEnabled:Z

    if-nez v0, :cond_89

    .line 1239
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1246
    :cond_89
    iget-boolean v0, p0, mHDMIConnected:Z

    if-eqz v0, :cond_9b

    .line 1247
    const-string v0, "WifiDisplayController"

    const-string v1, "connect: HDMI is Connected. Can\'t connect screen mirroring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const v0, 0x22074

    invoke-direct {p0, v0}, requestPopup(I)V

    goto :goto_2c

    .line 1252
    :cond_9b
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, mRemoteIP:Ljava/lang/String;

    .line 1253
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote IP :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iput-object p1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1258
    const/4 v0, 0x0

    iput v0, p0, mConnectionRetriesLeft:I

    .line 1259
    invoke-direct {p0}, updateConnection()V

    goto/16 :goto_2c
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 9
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2285
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 4
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2275
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "null"

    goto :goto_e
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 4
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2279
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "null"

    goto :goto_e
.end method

.method private disconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1264
    const-string v0, "WifiDisplayController"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-boolean v0, p0, mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_1d

    .line 1270
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 1272
    iput-object v3, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1273
    iput-object v3, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1274
    iput-boolean v2, p0, mRemoteDisplayConnected:Z

    .line 1276
    iput-boolean v2, p0, mScanRequested:Z

    .line 1278
    invoke-direct {p0}, updateConnection()V

    .line 1284
    :cond_1d
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .registers 6

    .prologue
    .line 749
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "psm_cpu_clock"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 750
    .local v0, "iCpuPowerSavinge":I
    return v0
.end method

.method private getChangedClientDevice(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 10
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2528
    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-eqz v6, :cond_9e

    .line 2529
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v3

    .line 2530
    .local v3, "info_size":I
    if-lez v3, :cond_9e

    .line 2531
    const/4 v0, 0x0

    .line 2532
    .local v0, "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v5, 0x0

    .line 2533
    .local v5, "requestNewList":Z
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1d

    .line 2534
    const/4 v5, 0x1

    .line 2537
    :cond_1d
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2538
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2539
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2540
    .local v1, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v5, :cond_3d

    .line 2541
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2542
    move-object v0, v1

    .line 2538
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2544
    :cond_3d
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v3, v6, :cond_52

    .line 2545
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 2546
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2547
    move-object v0, v1

    .line 2570
    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i":I
    .end local v3    # "info_size":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v5    # "requestNewList":Z
    :cond_51
    :goto_51
    return-object v0

    .line 2550
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v2    # "i":I
    .restart local v3    # "info_size":I
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .restart local v5    # "requestNewList":Z
    :cond_52
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_51

    .line 2551
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    .line 2552
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2553
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_51

    .line 2557
    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 2558
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    iget-object v7, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2559
    .restart local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, mP2pClientsList:Ljava/util/ArrayList;

    iget-object v7, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_51

    .line 2570
    .end local v0    # "changedClient":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i":I
    .end local v3    # "info_size":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v5    # "requestNewList":Z
    :cond_9e
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .registers 9
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v4, 0x0

    .line 2216
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_8} :catch_20

    move-result-object v3

    .line 2227
    .local v3, "iface":Ljava/net/NetworkInterface;
    :try_start_9
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 2228
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2229
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2230
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_d

    .line 2231
    check-cast v0, Ljava/net/Inet4Address;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1f} :catch_3f

    .line 2241
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :goto_1f
    return-object v0

    .line 2217
    :catch_20
    move-exception v2

    .line 2218
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 2220
    goto :goto_1f

    .line 2234
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :catch_3f
    move-exception v5

    .line 2239
    :cond_40
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it had no IPv4 addresses."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 2241
    goto :goto_1f
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .registers 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2245
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2248
    const/16 v0, 0x216a

    .line 2250
    :goto_16
    return v0

    :cond_17
    const/16 v0, 0x1c44

    goto :goto_16
.end method

.method private getPowerSavingMode()I
    .registers 5

    .prologue
    .line 742
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "psm_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 10
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    .line 1781
    if-nez p1, :cond_4

    .line 1782
    const/4 v0, 0x0

    .line 1794
    :goto_3
    return-object v0

    .line 1784
    :cond_4
    invoke-static {p1}, getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1785
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x1

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_46
    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1785
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_54
    const/4 v1, 0x0

    goto :goto_1b

    :cond_56
    const-string v5, ""

    goto :goto_46
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .registers 7
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1863
    iput-object p1, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1866
    if-nez p1, :cond_e

    .line 1867
    const-string v0, "WifiDisplayController"

    const-string v1, "networkInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_d
    :goto_d
    return-void

    .line 1871
    :cond_e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1872
    iput-boolean v4, p0, mWifiP2pConnected:Z

    .line 1873
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 1890
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1925
    :cond_2e
    :goto_2e
    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_96

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1926
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_40

    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    if-eqz v0, :cond_7e

    .line 1927
    :cond_40
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_d

    .line 1906
    :cond_4d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2e

    .line 1907
    iget-boolean v0, p0, mDongleUpdateResult:Z

    if-ne v0, v4, :cond_66

    .line 1908
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "success  disable wfd "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-direct {p0}, disconnect()V

    .line 1910
    iput-boolean v3, p0, mDongleUpdateResult:Z

    .line 1912
    :cond_66
    iput-boolean v3, p0, mWifiP2pConnected:Z

    .line 1913
    iget-object v0, p0, mP2pClientsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1914
    iget-object v0, p0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onP2pDisconnected()V

    .line 1916
    iput v3, p0, mWfdFrequency:I

    .line 1917
    iget-boolean v0, p0, mRestartTriggered:Z

    if-eqz v0, :cond_7b

    .line 1918
    invoke-virtual {p0}, requestStartSettings()V

    .line 1920
    :cond_7b
    iput-boolean v3, p0, mRestartTriggered:Z

    goto :goto_2e

    .line 1986
    :cond_7e
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_d

    iget-boolean v0, p0, mWifiDisplayCertMode:Z

    if-nez v0, :cond_d

    .line 1989
    iput-boolean v4, p0, mWifiP2pPrevState:Z

    .line 1990
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 1998
    :cond_96
    iget-boolean v0, p0, mRemoteDisplayConnected:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, mDongleUpdateOnGoing:Z

    if-eqz v0, :cond_ba

    .line 1999
    :cond_9e
    const v0, 0x2207b

    invoke-direct {p0, v0}, requestPopup(I)V

    .line 2000
    iput-boolean v3, p0, mDongleUpdateOnGoing:Z

    .line 2009
    :cond_a6
    :goto_a6
    iget-object v0, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_ae

    iget-object v0, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_b1

    .line 2010
    :cond_ae
    invoke-direct {p0}, disconnect()V

    .line 2016
    :cond_b1
    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_d

    .line 2017
    invoke-direct {p0}, requestPeers()V

    goto/16 :goto_d

    .line 2001
    :cond_ba
    iget-boolean v0, p0, mWaitForAction:Z

    if-eqz v0, :cond_a6

    .line 2002
    iput-boolean v3, p0, mWaitForAction:Z

    .line 2003
    invoke-direct {p0}, updateSettings()V

    goto :goto_a6
.end method

.method private handleConnectionFailure(Z)V
    .registers 7
    .param p1, "timeoutOccurred"    # Z

    .prologue
    .line 2104
    const-string v1, "WifiDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1f

    .line 2107
    iget v1, p0, mConnectionRetriesLeft:I

    if-lez v1, :cond_23

    .line 2108
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2109
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    if-eqz p1, :cond_20

    const-wide/16 v2, 0x0

    :goto_1c
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2129
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1f
    :goto_1f
    return-void

    .line 2109
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_20
    const-wide/16 v2, 0x3e8

    goto :goto_1c

    .line 2122
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_23
    iget-boolean v1, p0, mRemoteDisplayConnected:Z

    if-eqz v1, :cond_2d

    .line 2123
    const v1, 0x2207b

    invoke-direct {p0, v1}, requestPopup(I)V

    .line 2126
    :cond_2d
    invoke-direct {p0}, disconnect()V

    goto :goto_1f
.end method

.method private handlePeersChanged()V
    .registers 1

    .prologue
    .line 1859
    invoke-direct {p0}, requestPeers()V

    .line 1860
    return-void
.end method

.method private handleScanFinished()V
    .registers 3

    .prologue
    .line 1192
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    return-void
.end method

.method private handleScanResults()V
    .registers 7

    .prologue
    .line 1175
    iget-object v4, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1176
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 1177
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_25

    .line 1178
    iget-object v4, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1179
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1180
    invoke-direct {p0, v1}, updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1177
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1183
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_25
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v5, p0, v2}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1189
    return-void
.end method

.method private handleScanStarted()V
    .registers 3

    .prologue
    .line 1166
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1172
    return-void
.end method

.method private handleStateChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1838
    if-nez p1, :cond_4

    .line 1839
    iput-boolean p1, p0, mWifiP2pPrevState:Z

    .line 1842
    :cond_4
    iput-boolean p1, p0, mWifiP2pEnabled:Z

    .line 1845
    iget-boolean v0, p0, mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1d

    if-nez p1, :cond_1d

    .line 1846
    const/4 v0, 0x1

    iput-boolean v0, p0, mWifiP2pPrevState:Z

    .line 1847
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1854
    :goto_1c
    return-void

    .line 1852
    :cond_1d
    invoke-direct {p0}, updateWfdEnableState()V

    goto :goto_1c
.end method

.method private isHotspotOn()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_12

    .line 819
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 822
    :cond_12
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_18

    move v0, v1

    .line 836
    :goto_17
    return v0

    .line 826
    :cond_18
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    move v0, v1

    .line 836
    goto :goto_17

    .line 830
    :pswitch_23
    const/4 v0, 0x1

    goto :goto_17

    .line 826
    nop

    :pswitch_data_26
    .packed-switch 0xc
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private isP2pConnected()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 720
    :try_start_1
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 721
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 722
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_1b

    if-ne v4, v5, :cond_1a

    .line 723
    const/4 v3, 0x1

    .line 729
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1a
    :goto_1a
    return v3

    .line 727
    :catch_1b
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "WifiDisplayController"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .registers 3
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 2270
    if-eq p0, v0, :cond_6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSideSyncAppRunning()Z
    .registers 8

    .prologue
    .line 757
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 760
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 761
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 762
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3e

    .line 763
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.sidesync"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 765
    const-string v5, "WifiDisplayController"

    const-string v6, "isSideSyncAppRunning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v5, 0x1

    .line 769
    .end local v2    # "className":Ljava/lang/String;
    :goto_3a
    return v5

    .line 762
    .restart local v2    # "className":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 769
    .end local v2    # "className":Ljava/lang/String;
    :cond_3e
    const/4 v5, 0x0

    goto :goto_3a
.end method

.method private isSideSyncConnected()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "isSideSync":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 803
    if-nez v0, :cond_12

    .line 806
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2256
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isWifiIbssEnabled()Z
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 845
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 848
    :cond_11
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_17

    .line 849
    const/4 v0, 0x0

    .line 852
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v0

    goto :goto_16
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 8
    .param p1, "mP2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1800
    const-string v1, "WifiDisplayController"

    const-string v2, "makeConnConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1803
    .local v0, "connectConfig":Landroid/net/wifi/p2p/WifiP2pConfig;
    const/16 v1, 0xe

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1805
    iget v1, p0, mRequestedScanChannel:I

    const/16 v2, 0x64b

    if-eq v1, v2, :cond_1b

    .line 1806
    const/4 v1, -0x2

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1810
    :cond_1b
    if-eqz p1, :cond_55

    .line 1811
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeConnConfig << n:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1815
    iget-boolean v1, p0, mPinRequired:Z

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1816
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1830
    :cond_55
    :goto_55
    return-object v0

    .line 1818
    :cond_56
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1819
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_55

    .line 1820
    :cond_61
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1821
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_55

    .line 1822
    :cond_6c
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1823
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_55

    .line 1825
    :cond_78
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_55
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .registers 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 2208
    iget-object v2, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, mAdvertisedDisplayWidth:I

    iget v4, p0, mAdvertisedDisplayHeight:I

    iget v5, p0, mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2211
    return-void
.end method

.method private reportFeatureState()V
    .registers 4

    .prologue
    .line 993
    invoke-direct {p0}, computeFeatureState()I

    move-result v0

    .line 994
    .local v0, "featureState":I
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    return-void
.end method

.method private requestPeers()V
    .registers 4

    .prologue
    .line 1134
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1163
    return-void
.end method

.method private requestPopup(I)V
    .registers 6
    .param p1, "cause"    # I

    .prologue
    .line 489
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPopup cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    packed-switch p1, :pswitch_data_60

    .line 508
    :goto_29
    :pswitch_29
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    iget-boolean v1, p0, mIsBootCompleted:Z

    if-eqz v1, :cond_39

    .line 510
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 513
    :cond_39
    return-void

    .line 495
    :pswitch_3a
    const-string v1, "WifiDisplayController"

    const-string/jumbo v2, "requestPopup << POPUP_CAUSE_DONGLE_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string/jumbo v1, "url"

    iget-object v2, p0, mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, mDongleUpdateOnGoing:Z

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, mUpdateURL:Ljava/lang/String;

    goto :goto_29

    .line 501
    :pswitch_51
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_29

    .line 492
    nop

    :pswitch_data_60
    .packed-switch 0x22078
        :pswitch_3a
        :pswitch_29
        :pswitch_29
        :pswitch_51
    .end packed-switch
.end method

.method private requestScreenMirroringEnable(Z)V
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroring_enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    const-string v1, "PackageName"

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 535
    return-void
.end method

.method private retryConnection()V
    .registers 3

    .prologue
    .line 1290
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1291
    invoke-direct {p0}, updateConnection()V

    .line 1292
    return-void
.end method

.method private stopPeerDiscovery()V
    .registers 4

    .prologue
    .line 1108
    const-string v1, "WifiDisplayController"

    const-string v2, "callSECApi SEC_COMMAND_ID_P2P_STOP_DISCOVERY_NO_FLUSH instead of stopPeerDiscovery"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1110
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const v1, 0x2208f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1111
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->callSECApi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Message;)I

    .line 1131
    return-void
.end method

.method private tryDiscoverPeers()V
    .registers 5

    .prologue
    .line 1050
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mFullScanTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1052
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v2, p0, mRequestedScanChannel:I

    new-instance v3, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1102
    return-void
.end method

.method private unadvertiseDisplay()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2204
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2205
    return-void
.end method

.method private updateConnection()V
    .registers 22

    .prologue
    .line 1301
    const-string v2, "WifiDisplayController"

    const-string/jumbo v4, "updateConnection"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-direct/range {p0 .. p0}, updateScanState()V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_b2

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_b2

    .line 1312
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    if-eqz v2, :cond_54

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->stop()Z

    .line 1324
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, broadcastWfdState(I)V

    .line 1325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, requestScreenMirroringEnable(Z)V

    .line 1326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mPrevNativeDisposeCompleted:Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_72

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1335
    :cond_72
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mPrevNativeDisposeCompleted:Z

    .line 1337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 1339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRemoteDisplayConnected:Z

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v2, v0, mRestartTriggered:Z

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a7

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_display_on"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1349
    :cond_a7
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1350
    invoke-direct/range {p0 .. p0}, unadvertiseDisplay()V

    .line 1356
    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_d6

    .line 1359
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateConnection, mDisconnectingDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_d5
    :goto_d5
    return-void

    .line 1364
    :cond_d6
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_123

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_123

    .line 1365
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1377
    move-object/from16 v0, p0

    iget-object v15, v0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1378
    .local v15, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_d5

    .line 1411
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_147

    .line 1414
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateConnection, mCancelingDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 1419
    :cond_147
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_195

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_195

    .line 1420
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling connection to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1430
    move-object/from16 v0, p0

    iget-object v15, v0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1431
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_d5

    .line 1466
    .end local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_195
    move-object/from16 v0, p0

    iget-object v2, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_1b8

    .line 1467
    move-object/from16 v0, p0

    iget-boolean v2, v0, mWifiDisplayCertMode:Z

    if-eqz v2, :cond_1b3

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1470
    :cond_1b3
    invoke-direct/range {p0 .. p0}, unadvertiseDisplay()V

    goto/16 :goto_d5

    .line 1475
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_21d

    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_21d

    .line 1476
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    .line 1504
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1505
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v14, v0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1508
    .local v14, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_d5

    .line 1543
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v14    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_21d
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_d5

    move-object/from16 v0, p0

    iget-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v2, :cond_d5

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v2}, getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 1545
    .local v8, "addr":Ljava/net/Inet4Address;
    if-nez v8, :cond_259

    .line 1546
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, handleConnectionFailure(Z)V

    goto/16 :goto_d5

    .line 1552
    :cond_259
    move-object/from16 v0, p0

    iget-object v2, v0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v15, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1555
    .restart local v15    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v17

    .line 1556
    .local v17, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1557
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v11, v0, mRemoteDisplayInterface:Ljava/lang/String;

    .line 1559
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1565
    .local v12, "initParam":Lorg/json/JSONObject;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, broadcastWfdState(I)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    if-eqz v2, :cond_2ce

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->start()Z

    .line 1573
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-static {v2, v4}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 1614
    const-string v2, "WifiDisplayController"

    const-string v4, "Wfd request type is normal"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1617
    .local v16, "platform":Ljava/lang/String;
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "platform info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/16 v20, 0x0

    .local v20, "support_width":I
    const/16 v19, 0x0

    .line 1620
    .local v19, "support_height":I
    const-string v2, "exynos4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_331

    const-string v2, "exynos3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_331

    const-string v2, "msm8226"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_331

    const-string v2, "msm8916"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39b

    .line 1621
    :cond_331
    const/16 v20, 0x500

    const/16 v19, 0x2d0

    .line 1628
    :goto_335
    :try_start_335
    const-string/jumbo v2, "width"

    move/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1629
    const-string v2, "height"

    move/from16 v0, v19

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1630
    const-string v2, "fps"

    const/16 v4, 0x1e

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1631
    const-string/jumbo v2, "use_hdcp"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1632
    const-string/jumbo v2, "use_audio"

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1633
    const-string/jumbo v2, "qoslevel"

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1634
    const-string/jumbo v2, "supportsProtectedBuffers"

    move-object/from16 v0, p0

    iget-boolean v4, v0, mSupportsProtectedBuffers:Z

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_36a
    .catch Lorg/json/JSONException; {:try_start_335 .. :try_end_36a} :catch_3a0

    .line 1641
    :goto_36a
    new-instance v13, Lcom/android/server/display/WifiDisplayController$18;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 1765
    .local v13, "listener":Landroid/media/RemoteDisplay$Listener;
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v13, v2, v4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1773
    move-object/from16 v0, p0

    iget-boolean v2, v0, mWifiDisplayCertMode:Z

    if-eqz v2, :cond_3ab

    const/16 v18, 0x78

    .line 1776
    .local v18, "rtspTimeout":I
    :goto_389
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v18

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d5

    .line 1624
    .end local v13    # "listener":Landroid/media/RemoteDisplay$Listener;
    .end local v18    # "rtspTimeout":I
    :cond_39b
    const/16 v20, 0x780

    const/16 v19, 0x438

    goto :goto_335

    .line 1635
    :catch_3a0
    move-exception v10

    .line 1636
    .local v10, "e":Lorg/json/JSONException;
    const-string v2, "WifiDisplayController"

    invoke-virtual {v10}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36a

    .line 1773
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v13    # "listener":Landroid/media/RemoteDisplay$Listener;
    :cond_3ab
    const/16 v18, 0x1e

    goto :goto_389
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1203
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1204
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1206
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1210
    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1212
    iget-object v1, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 1215
    :cond_4b
    return-void
.end method

.method private updateScanState()V
    .registers 4

    .prologue
    .line 1013
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScanState() mScanRequested = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mScanRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDiscoverPeersInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mDiscoverPeersInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-boolean v0, p0, mScanRequested:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, mWfdEnabled:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_54

    .line 1017
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    if-nez v0, :cond_53

    .line 1018
    const-string v0, "WifiDisplayController"

    const-string v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, mDiscoverPeersInProgress:Z

    .line 1020
    invoke-direct {p0}, handleScanStarted()V

    .line 1021
    invoke-direct {p0}, tryDiscoverPeers()V

    .line 1045
    :cond_53
    :goto_53
    return-void

    .line 1024
    :cond_54
    iget-boolean v0, p0, mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_53

    .line 1026
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1029
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mFullScanTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1030
    const/16 v0, 0x64b

    iput v0, p0, mRequestedScanChannel:I

    .line 1037
    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_74

    iget-object v0, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_53

    .line 1038
    :cond_74
    const-string v0, "WifiDisplayController"

    const-string v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, mDiscoverPeersInProgress:Z

    .line 1040
    invoke-direct {p0}, stopPeerDiscovery()V

    .line 1041
    invoke-direct {p0}, handleScanFinished()V

    goto :goto_53
.end method

.method private updateSettings()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 363
    iget-object v8, p0, mContext:Landroid/content/Context;

    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v9, "display"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 365
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    .line 366
    .local v5, "wifiDisplayStatus":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v10, :cond_29

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v8

    if-ne v8, v10, :cond_29

    .line 369
    const-string v6, "WifiDisplayController"

    const-string/jumbo v7, "updateSettings(), WifiDisplayController don\'t care for CONN_STATE_HOMESYNC_SCREEN_MIRRORING case."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_28
    :goto_28
    return-void

    .line 375
    :cond_29
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 377
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 380
    .local v3, "turningWifiDisplayOn":Z
    const-string/jumbo v8, "wifi_display_on"

    invoke-static {v2, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_ae

    move v3, v6

    .line 387
    :goto_3a
    const-string/jumbo v8, "wifi_display_certification_on"

    invoke-static {v2, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b0

    move v8, v6

    :goto_44
    iput-boolean v8, p0, mWifiDisplayCertMode:Z

    .line 390
    iput v11, p0, mWifiDisplayWpsConfig:I

    .line 391
    iget-boolean v8, p0, mWifiDisplayCertMode:Z

    if-eqz v8, :cond_55

    .line 392
    const-string/jumbo v8, "wifi_display_wps_config"

    invoke-static {v2, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, mWifiDisplayWpsConfig:I

    .line 398
    :cond_55
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSettings, turningWifiDisplayOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWifiP2pConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mWifiP2pConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mRemoteDisplayConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mRemoteDisplayConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWifiP2pEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mWifiP2pEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz v3, :cond_1a1

    .line 402
    iget-boolean v7, p0, mWifiP2pEnabled:Z

    iput-boolean v7, p0, mWifiP2pPrevState:Z

    .line 404
    invoke-direct {p0}, isSideSyncConnected()Z

    move-result v7

    if-nez v7, :cond_a4

    invoke-direct {p0}, isSideSyncAppRunning()Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 405
    :cond_a4
    iput-boolean v6, p0, mWaitForAction:Z

    .line 406
    const v6, 0x22085

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    :cond_ae
    move v3, v7

    .line 380
    goto :goto_3a

    :cond_b0
    move v8, v7

    .line 387
    goto :goto_44

    .line 408
    :cond_b2
    iget-boolean v7, p0, mWifiP2pConnected:Z

    if-eqz v7, :cond_c4

    iget-boolean v7, p0, mRemoteDisplayConnected:Z

    if-nez v7, :cond_c4

    .line 409
    iput-boolean v6, p0, mWaitForAction:Z

    .line 410
    const v6, 0x22072

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 412
    :cond_c4
    iget-boolean v7, p0, mHDMIConnected:Z

    if-eqz v7, :cond_d0

    .line 413
    const v6, 0x22074

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 415
    :cond_d0
    iget-boolean v7, p0, mWaitForAction:Z

    if-nez v7, :cond_ea

    invoke-direct {p0}, getCPUPowerSavingMode()I

    move-result v7

    if-ne v7, v6, :cond_ea

    invoke-direct {p0}, getPowerSavingMode()I

    move-result v7

    if-ne v7, v6, :cond_ea

    .line 416
    iput-boolean v6, p0, mWaitForAction:Z

    .line 417
    const v6, 0x22088

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 419
    :cond_ea
    invoke-direct {p0}, isHotspotOn()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 420
    iput-boolean v6, p0, mWaitForAction:Z

    .line 421
    const v6, 0x22075

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 423
    :cond_fa
    invoke-direct {p0}, isWifiIbssEnabled()Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 424
    iput-boolean v6, p0, mWaitForAction:Z

    .line 425
    const v6, 0x22090

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 427
    :cond_10a
    iget-boolean v6, p0, mLimitedContentsEnabled:Z

    if-eqz v6, :cond_141

    .line 428
    iget-object v6, p0, mLimitedContentsType:Ljava/lang/String;

    if-nez v6, :cond_11b

    .line 429
    const-string v6, "WifiDisplayController"

    const-string v7, "UHD : UHD extra data is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 433
    :cond_11b
    iget-object v6, p0, mLimitedContentsType:Ljava/lang/String;

    const-string/jumbo v7, "recording"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 434
    const v6, 0x22087

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 435
    :cond_12e
    iget-object v6, p0, mLimitedContentsType:Ljava/lang/String;

    const-string/jumbo v7, "playback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 436
    const v6, 0x22086

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 440
    :cond_141
    iget-boolean v6, p0, mWifiP2pEnabled:Z

    if-nez v6, :cond_203

    .line 441
    iget-object v6, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v6, :cond_203

    .line 442
    iput-boolean v3, p0, mWifiDisplayOnSetting:Z

    .line 443
    iget-object v6, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v7, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 445
    const/4 v4, 0x0

    .line 447
    .local v4, "userId":I
    :try_start_153
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 449
    iget-object v6, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v6, :cond_185

    iget-object v6, p0, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_185

    .line 450
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_display_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_177} :catch_179

    goto/16 :goto_28

    .line 454
    :catch_179
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "WifiDisplayController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 451
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_185
    :try_start_185
    iget-object v6, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_28

    iget-object v6, p0, mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_28

    .line 452
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_display_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_19f} :catch_179

    goto/16 :goto_28

    .line 461
    .end local v4    # "userId":I
    :cond_1a1
    iget-boolean v8, p0, mRemoteDisplayConnected:Z

    if-eqz v8, :cond_1af

    .line 462
    iput-boolean v6, p0, mWaitForAction:Z

    .line 463
    const v6, 0x22070

    invoke-direct {p0, v6}, requestPopup(I)V

    goto/16 :goto_28

    .line 467
    :cond_1af
    iput-boolean v7, p0, mWaitForAction:Z

    .line 470
    const-string v6, "WifiDisplayController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSettings, mWifiP2pPrevState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mWifiP2pPrevState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRestartTriggered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mRestartTriggered:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isWifiConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, isWifiConnected(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v6, p0, mWifiDisplayOnSetting:Z

    if-eqz v6, :cond_203

    iget-boolean v6, p0, mWifiP2pPrevState:Z

    if-nez v6, :cond_203

    iget-boolean v6, p0, mRestartTriggered:Z

    if-nez v6, :cond_203

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, isWifiConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_203

    .line 474
    iget-object v6, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v7, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 478
    :cond_203
    iput-boolean v3, p0, mWifiDisplayOnSetting:Z

    .line 482
    invoke-direct {p0}, updateWfdEnableState()V

    goto/16 :goto_28
.end method

.method private updateWfdEnableState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 919
    iget-boolean v1, p0, mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, mWifiP2pEnabled:Z

    if-eqz v1, :cond_3c

    .line 921
    iget-boolean v1, p0, mWfdEnabled:Z

    if-nez v1, :cond_3b

    iget-boolean v1, p0, mWfdEnabling:Z

    if-nez v1, :cond_3b

    .line 922
    iput-boolean v2, p0, mWfdEnabling:Z

    .line 924
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 925
    .local v0, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 926
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 927
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 930
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtection(Z)V

    .line 932
    const/16 v1, 0x1c44

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 933
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 934
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 990
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_3b
    :goto_3b
    return-void

    .line 959
    :cond_3c
    iget-boolean v1, p0, mWfdEnabled:Z

    if-nez v1, :cond_44

    iget-boolean v1, p0, mWfdEnabling:Z

    if-eqz v1, :cond_58

    .line 960
    :cond_44
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 961
    .restart local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 962
    iget-object v1, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 980
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_58
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mFullScanTimer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 984
    iput-boolean v4, p0, mWfdEnabling:Z

    .line 985
    iput-boolean v4, p0, mWfdEnabled:Z

    .line 986
    invoke-direct {p0}, reportFeatureState()V

    .line 987
    invoke-direct {p0}, updateScanState()V

    .line 988
    invoke-direct {p0}, disconnect()V

    goto :goto_3b
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/high16 v7, 0x4000000

    const/4 v6, 0x1

    .line 2594
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastWfdState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2598
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2603
    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2604
    .local v2, "platform":Ljava/lang/String;
    const-string v3, "exynos4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2605
    const-string v3, "count"

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2608
    :cond_41
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2611
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastWfdSessionInfo << to AllShare FrameWork !!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "IP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.allshare.intent.action.CAST_GETSTATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2613
    .local v1, "mAllShareCastState":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2614
    if-ne p1, v6, :cond_8e

    .line 2615
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2617
    iget-object v3, p0, mRemoteIP:Ljava/lang/String;

    if-eqz v3, :cond_88

    .line 2618
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_IPADDR"

    iget-object v4, p0, mRemoteIP:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    :cond_88
    :goto_88
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2626
    return-void

    .line 2622
    :cond_8e
    const-string v3, "com.sec.android.allshare.intent.extra.CAST_STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_88
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_255

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 604
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22e

    .line 606
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_255
    return-void
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 865
    iget-object v3, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 866
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 867
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_27
    const/4 v2, 0x1

    .line 871
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_28
    return v2
.end method

.method public isDongleRenameAvailable()Z
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 778
    if-nez p1, :cond_b

    .line 779
    :try_start_3
    const-string v4, "WifiDisplayController"

    const-string v5, "isWifiConnected context is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_a
    return v3

    .line 783
    :cond_b
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 784
    .local v2, "manager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 785
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1f

    .line 786
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    goto :goto_a

    .line 788
    :cond_1f
    const-string v4, "WifiDisplayController"

    const-string v5, "NetworkInfo is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_a

    .line 791
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    :catch_27
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "WifiDisplayController"

    const-string v5, "nullpointerexception is occred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 540
    const-string v0, "WifiDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 543
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 547
    const-string v0, "WifiDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, isRunningHomeSync:Z

    .line 550
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 883
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renameDongle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->setDeviceName(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public requestClearConnectedDisplayInfo()V
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 861
    return-void
.end method

.method public requestConnect(ILjava/lang/String;)V
    .registers 6
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 658
    iput p1, p0, mConnectedMode:I

    .line 659
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 660
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 661
    const/4 v2, 0x0

    iput-boolean v2, p0, mPinRequired:Z

    .line 662
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_8

    .line 666
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_23
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v2, -0x1

    iput v2, p0, mConnectedMode:I

    .line 645
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 646
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 648
    const/4 v2, 0x0

    iput-boolean v2, p0, mPinRequired:Z

    .line 650
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_9

    .line 653
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_24
    return-void
.end method

.method public requestConnectWithPin(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2575
    iget-object v2, p0, mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2576
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2577
    const/4 v2, 0x1

    iput-boolean v2, p0, mPinRequired:Z

    .line 2578
    invoke-direct {p0, v0}, connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_6

    .line 2582
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_21
    return-void
.end method

.method public requestDisableWiFiP2P()V
    .registers 4

    .prologue
    .line 556
    const-string v0, "WifiDisplayController"

    const-string v1, "disabling WiFi P2P"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_13

    .line 559
    const-string v0, "WifiDisplayController"

    const-string v1, "mWifiP2pManager is null!! check!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_12
    :goto_12
    return-void

    .line 564
    :cond_13
    invoke-direct {p0}, isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 565
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_12
.end method

.method public requestDisconnect()V
    .registers 1

    .prologue
    .line 915
    invoke-direct {p0}, disconnect()V

    .line 916
    return-void
.end method

.method public requestPause()V
    .registers 2

    .prologue
    .line 897
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_d

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 901
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 903
    :cond_d
    return-void
.end method

.method public requestResume()V
    .registers 2

    .prologue
    .line 906
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_d

    .line 908
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestScreenMirroringEnable(Z)V

    .line 910
    iget-object v0, p0, mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 912
    :cond_d
    return-void
.end method

.method public requestSaveConnectedDisplayInfo()V
    .registers 4

    .prologue
    .line 670
    iget-object v0, p0, mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 715
    return-void
.end method

.method public requestStartScan()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 612
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "requestStartScan()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-boolean v0, p0, mWifiP2pEnabled:Z

    if-nez v0, :cond_17

    .line 617
    iput-boolean v2, p0, mScanRequested:Z

    .line 618
    const-string v0, "WifiDisplayController"

    const-string v1, "mWifiP2pEnabled = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_16
    :goto_16
    return-void

    .line 624
    :cond_17
    iget-boolean v0, p0, mScanRequested:Z

    if-nez v0, :cond_16

    .line 625
    iput-boolean v2, p0, mScanRequested:Z

    .line 626
    invoke-direct {p0}, updateScanState()V

    goto :goto_16
.end method

.method public requestStartSettings()V
    .registers 4

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    const-string v1, "cause"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, mRestartTriggered:Z

    .line 521
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method public requestStopScan()V
    .registers 3

    .prologue
    .line 632
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "requestStopScan()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-boolean v0, p0, mScanRequested:Z

    if-eqz v0, :cond_12

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, mScanRequested:Z

    .line 637
    invoke-direct {p0}, updateScanState()V

    .line 639
    :cond_12
    return-void
.end method

.method public restartWifiDisplay()V
    .registers 3

    .prologue
    .line 2586
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "restartWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    const/4 v0, 0x1

    iput-boolean v0, p0, mRestartTriggered:Z

    .line 2588
    invoke-direct {p0}, disconnect()V

    .line 2590
    return-void
.end method

.method public setCancelValue()V
    .registers 3

    .prologue
    .line 572
    const-string v0, "WifiDisplayController"

    const-string/jumbo v1, "setCancelValue"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnectionCanceledByUser:Z

    .line 575
    return-void
.end method

.method public setScanningChannel(I)V
    .registers 5
    .param p1, "requestedChannel"    # I

    .prologue
    .line 890
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanningChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iput p1, p0, mRequestedScanChannel:I

    .line 893
    return-void
.end method
