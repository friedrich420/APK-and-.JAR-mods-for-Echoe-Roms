.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final WIFI_AUTOJOIN:Z

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_HIDEEXCLUDEDAPLIST:Z

.field private static final WIFI_SSIDSTATUSBARINFO:Z

.field public static cancel_network:I

.field public static forget_network:I

.field private static final mEapMethod:Ljava/lang/String;

.field public static mInOffloadDialog:Z

.field public static mIsReconn:I

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static mVerboseLogging:I

.field public static mWpsInProgress:Z

.field static rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static savedNetworksExist:Z

.field private static tempConfig:Landroid/net/wifi/WifiConfiguration;


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private actionBarSwitch:Landroid/widget/Switch;

.field bRetryPopup:Z

.field private helpMenuCheck:Z

.field private isKioskContainer:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field private mAllowUpdateScanList:I

.field private mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

.field private mAutoNetworkSwitchOptionRemoved:Z

.field private mAutojoinMenuItem:Landroid/view/MenuItem;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mDhcpErrorApNetId:I

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForceShowDialog:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mFreeWifiScan:Landroid/preference/Preference;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field private mHasMotionRecognitionService:Z

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mInSecDummyPickerActivity:Z

.field private mInSecPickerActivity:Z

.field private mInSetupWizardWifiScreen:Z

.field private mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsShouldSendResult:Z

.field private mIsShowConnecting:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilePolicyDataEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mNotifyMe:Landroid/preference/CheckBoxPreference;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mPreviousWifiState:I

.field private mProgressCategory:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApCount:I

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mScrollTimer:J

.field private mSecSetupWizardMode:Z

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWatchdogDialogRunnable:Ljava/lang/Runnable;

.field public mWifiAnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

.field private mWifiAssistantCard:Landroid/view/View;

.field public mWifiAutoNetworkSwitchDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    sput-object v2, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 275
    sput v1, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 368
    sput v1, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 372
    sput-object v2, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 375
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    .line 376
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    .line 377
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    .line 378
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_HideExcludedApList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIDEEXCLUDEDAPLIST:Z

    .line 3875
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$28;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$28;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 490
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 296
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 302
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    .line 303
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    .line 308
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 324
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    .line 334
    const v0, 0x493e0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 337
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 349
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 373
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 392
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 473
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 478
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 486
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    .line 488
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 3909
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMobilePolicyDataEnable:Z

    .line 3911
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$29;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$29;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 3969
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$30;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$30;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAutoNetworkSwitchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3990
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$31;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$31;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 491
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 523
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 524
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 529
    return-void
.end method

.method private RemoveNotUsedWpsButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1542
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 181
    sput-object p0, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disableWifiAssistantCardUntilPlatformUpgrade()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiInfo;
    .param p3, "x3"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiInternetServiceCheck()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2579
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2592
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v0, :cond_1

    .line 2593
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2607
    :cond_1
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3428
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3429
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3431
    :cond_0
    return-void
.end method

.method private connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2956
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectNetwork nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v3, :cond_2

    .line 2972
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2973
    .local v2, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 2974
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2975
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2976
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 2977
    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2984
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 2985
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2986
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2987
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2928
    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_1

    .line 2943
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 2944
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2947
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 2948
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2949
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2953
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "lastState"    # Landroid/net/NetworkInfo$DetailedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2612
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 2617
    .local v4, "apMap":Lcom/android/settings/wifi/WifiSettings$Multimap;, "Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 2618
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_7

    .line 2620
    sget-boolean v14, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    if-eq v14, v13, :cond_0

    .line 2621
    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 2622
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/app/Activity;

    if-eqz v13, :cond_0

    move-object/from16 v13, p0

    .line 2623
    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2626
    :cond_0
    const-string v13, "VZW"

    const-string v14, "ALL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2627
    sget-object v13, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    sget-object v14, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2629
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 2630
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_5

    .line 2631
    const-string v13, "WifiSettings"

    const-string v14, "constructAccessPoints config is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2620
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2621
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 2634
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2635
    .local v2, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 2636
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2638
    :cond_6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2640
    const-string v13, "VZW"

    const-string v14, "ALL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2641
    sget-object v13, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2646
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 2647
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v12, :cond_f

    .line 2648
    const/4 v8, 0x3

    .line 2649
    .local v8, "hideLevel":I
    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIDEEXCLUDEDAPLIST:Z

    if-eqz v13, :cond_8

    .line 2650
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "hidden_ap_sinal_strength"

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2653
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 2655
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_9

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[IBSS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2660
    const/4 v7, 0x0

    .line 2661
    .local v7, "found":Z
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .line 2662
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIDEEXCLUDEDAPLIST:Z

    if-eqz v13, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_b

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v13

    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v13

    if-nez v13, :cond_a

    .line 2669
    :cond_b
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_c

    .line 2679
    :cond_c
    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2680
    const/4 v7, 0x1

    goto :goto_4

    .line 2682
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_d
    if-nez v7, :cond_9

    .line 2683
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2684
    .restart local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->WIFI_HIDEEXCLUDEDAPLIST:Z

    if-eqz v13, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->isHiddenAccessPoint(II)Z

    move-result v13

    if-nez v13, :cond_9

    .line 2690
    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    iget-object v13, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2701
    .end local v2    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v7    # "found":Z
    .end local v8    # "hideLevel":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_f
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2702
    return-object v3
.end method

.method private disableWifiAssistantCardUntilPlatformUpgrade()V
    .locals 4

    .prologue
    .line 2504
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2505
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2506
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "assistant_dismiss_platform"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2508
    return-void
.end method

.method private dismissDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 2050
    packed-switch p1, :pswitch_data_0

    .line 2092
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2053
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 2056
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    :goto_1
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "ise":Ljava/lang/IllegalStateException;
    const-string v1, "WifiSettings"

    const-string v2, "Handled error in dialog state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2064
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    .line 2066
    const/16 v1, 0xa

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2070
    :goto_2
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 2067
    :catch_1
    move-exception v0

    .line 2068
    .restart local v0    # "ise":Ljava/lang/IllegalStateException;
    const-string v1, "WifiSettings"

    const-string v2, "Handled error in retry dialog state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2074
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2075
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2076
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 2080
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2082
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 2086
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_0

    .line 2087
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->dismiss()V

    .line 2088
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 2050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;
    .locals 6
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;

    .prologue
    .line 1989
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 1990
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1991
    .local v3, "sr":Landroid/net/wifi/ScanResult;
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1992
    .local v2, "scanrAP":Lcom/android/settings/wifi/AccessPoint;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v5, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v5, :cond_0

    .line 1993
    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 1994
    const/4 v2, 0x0

    .line 1998
    .end local v2    # "scanrAP":Lcom/android/settings/wifi/AccessPoint;
    .end local v3    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v4
.end method

.method private getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;
    .locals 5
    .param p1, "networkId"    # I

    .prologue
    .line 3320
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 3321
    .local v2, "prefScreen":Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v4, :cond_0

    .line 3322
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 3325
    :cond_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3327
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 3328
    .local v3, "preference":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 3329
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 3330
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, p1, :cond_1

    .line 3336
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v3    # "preference":Landroid/preference/Preference;
    :goto_1
    return-object v0

    .line 3325
    .restart local v3    # "preference":Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3336
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 8
    .param p1, "animationId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 2715
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2717
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040283

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2718
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100075

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2719
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2720
    const v4, 0x7f10062a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2721
    .local v0, "img":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2722
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 2723
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const-wide/16 v6, 0x5f

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2729
    return-object v3
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3666
    const/4 v1, 0x0

    .line 3667
    .local v1, "found":Z
    const/4 v3, -0x1

    .line 3668
    .local v3, "newNetId":I
    sget-object v5, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 3669
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3670
    const/4 v1, 0x1

    .line 3671
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 3675
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3678
    .end local v3    # "newNetId":I
    .local v4, "newNetId":I
    :goto_0
    return v4

    .end local v4    # "newNetId":I
    .restart local v3    # "newNetId":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3    # "newNetId":I
    .restart local v4    # "newNetId":I
    goto :goto_0
.end method

.method public static getWifiAssistantApp(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2421
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 2424
    .local v0, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2425
    const/4 v1, 0x0

    .line 2430
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 2733
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2734
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 2735
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2736
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2741
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2990
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2992
    .local v4, "action":Ljava/lang/String;
    const-string v22, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2993
    const-string v19, "wapi_string"

    .line 2995
    .local v19, "wapiEventName":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 2996
    .local v20, "wapiGetEvent":I
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    packed-switch v20, :pswitch_data_0

    .line 3229
    .end local v19    # "wapiEventName":Ljava/lang/String;
    .end local v20    # "wapiGetEvent":I
    :cond_0
    :goto_0
    return-void

    .line 2999
    .restart local v19    # "wapiEventName":Ljava/lang/String;
    .restart local v20    # "wapiGetEvent":I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f0a03d2

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3003
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f0a03d3

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3007
    .end local v19    # "wapiEventName":Ljava/lang/String;
    .end local v20    # "wapiGetEvent":I
    :cond_1
    const-string v22, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 3008
    const-string v22, "wifi_state"

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 3013
    :cond_2
    const-string v22, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 3014
    const-string v22, "WifiSettings"

    const-string v23, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mAllowUpdateScanList = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 3018
    const-string v22, "WifiSettings"

    const-string v23, "SKIP SCAN LIST UPDATE!!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 3037
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 3039
    const-string v22, "WifiSettings"

    const-string v23, "Force scan for 5G APs"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3020
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3023
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3029
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isTalkbackPaused()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 3032
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->speakTTS()V

    .line 3033
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto/16 :goto_1

    .line 3041
    :cond_9
    const-string v22, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 3042
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3044
    const-string v22, "wifiConfiguration"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 3045
    .local v15, "network":Landroid/net/wifi/WifiConfiguration;
    const-string v22, "changeReason"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3046
    .local v16, "reason":I
    if-eqz v15, :cond_0

    .line 3047
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", reason:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "network.status = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "bRetryPopup = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "network.disableReason = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 3054
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3055
    const-string v22, "WifiSettings"

    const-string v23, "=========== call showConnectionFailDialog !!!! "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    .line 3057
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    .line 3062
    .end local v15    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "reason":I
    :cond_a
    const-string v22, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 3063
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 3064
    :cond_b
    const-string v22, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 3071
    const-string v22, "newState"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/SupplicantState;

    .line 3073
    .local v17, "state":Landroid/net/wifi/SupplicantState;
    sget-object v22, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 3074
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 3076
    :cond_c
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> SUPPLICANT_STATE_CHANGED_ACTION SupplicantState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    const-string v22, "networkInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3080
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 3081
    .local v5, "activity":Landroid/app/Activity;
    const-string v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 3083
    .local v6, "connectivity":Landroid/net/ConnectivityManager;
    const/16 v21, 0x0

    .line 3084
    .local v21, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    .line 3085
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v21

    .line 3086
    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 3087
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> SUPPLICANT_STATE_CHANGED_ACTION : wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 3090
    :cond_d
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-nez v22, :cond_0

    sget-object v22, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 3093
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 3098
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v6    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v17    # "state":Landroid/net/wifi/SupplicantState;
    .end local v21    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_e
    const-string v22, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 3099
    const-string v22, "networkInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3101
    .restart local v8    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 3102
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    .line 3104
    .local v10, "isConn":Z
    const-string v22, "network_reconnect"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    sput v22, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    .line 3105
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> SEC_COMMAND_ID_GET_RECONNECT RECEIVED code:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    if-eqz v10, :cond_f

    .line 3108
    const-string v22, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/LinkProperties;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3112
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    move/from16 v22, v0

    if-nez v22, :cond_10

    .line 3113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    if-eqz v10, :cond_10

    .line 3114
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 3117
    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3125
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mCurrentNetworkState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 3127
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3129
    :cond_11
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 3138
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 3139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 3140
    .local v12, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 3141
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3142
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    .line 3145
    :cond_12
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 3146
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 3147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 3149
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 3150
    .local v9, "intent2":Landroid/content/Intent;
    const-string v22, "ssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3151
    const-string v22, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3152
    const-string v22, "security"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3153
    const-string v22, "frequency"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3154
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3156
    .end local v9    # "intent2":Landroid/content/Intent;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3161
    .end local v8    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "isConn":Z
    .end local v12    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_14
    const-string v22, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 3162
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 3163
    :cond_15
    const-string v22, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 3164
    const-string v22, "launch_with"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 3165
    .local v11, "launchWith":I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v11, v0, :cond_0

    .line 3167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 3172
    .end local v11    # "launchWith":I
    :cond_16
    const-string v22, "android.net.wifi.ERROR"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 3173
    const-string v22, "errorCode"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3174
    .local v7, "errorCode":I
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 3177
    :pswitch_2
    const-string v22, "wifiInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 3178
    const-string v22, "netid"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    .line 3179
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3180
    const/16 v22, 0x5

    const/16 v23, 0x7530

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 3183
    .end local v7    # "errorCode":I
    :cond_17
    const-string v22, "android.net.wifi.SHOW_NOTI_MESSAGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 3184
    const-string v22, "info_type"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3185
    .local v14, "msgId":I
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ">>> SHOW_NOTI_MESSAGE RECEIVED code:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_0

    .line 3189
    :sswitch_0
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3190
    const-string v22, "visible"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3191
    const/16 v22, 0x7

    const/16 v23, 0x7530

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 3198
    :sswitch_1
    const-string v22, "visible"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 3199
    .local v18, "visible":Z
    if-eqz v18, :cond_18

    .line 3200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->showAnsExceptionDialog()V

    goto/16 :goto_0

    .line 3202
    :cond_18
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    goto/16 :goto_0

    .line 3208
    .end local v18    # "visible":Z
    :sswitch_2
    const-string v22, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3209
    .local v13, "message":Ljava/lang/String;
    const-string v22, "WifiSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive, message of received: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    if-eqz v13, :cond_0

    .line 3215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3222
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "msgId":I
    :cond_19
    const-string v22, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 3223
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiInternetServiceCheck()V

    goto/16 :goto_0

    .line 3224
    :cond_1a
    const-string v22, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b

    const-string v22, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3226
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiInternetServiceCheck()V

    goto/16 :goto_0

    .line 2997
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3175
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 3186
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 4009
    if-nez p1, :cond_1

    .line 4019
    :cond_0
    :goto_0
    return v1

    .line 4013
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4015
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4016
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isHiddenAccessPoint(II)Z
    .locals 2
    .param p0, "rssi"    # I
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 3753
    packed-switch p1, :pswitch_data_0

    .line 3773
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3755
    :pswitch_0
    const/16 v1, -0x41

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 3760
    :pswitch_1
    const/16 v1, -0x46

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 3765
    :pswitch_2
    const/16 v1, -0x4b

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 3753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isUsimUseable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3723
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3724
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 3725
    .local v2, "simSate":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 3727
    .local v1, "isAirplaneMode":Z
    :goto_0
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-nez v1, :cond_1

    .line 3728
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0479

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3748
    :goto_1
    return v4

    .end local v1    # "isAirplaneMode":Z
    :cond_0
    move v1, v4

    .line 3725
    goto :goto_0

    .line 3732
    .restart local v1    # "isAirplaneMode":Z
    :cond_1
    const-string v6, ""

    const-string v7, "T wifi zone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3733
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3735
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45005"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3736
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a047b

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3739
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    const-string v7, "ollehWiFi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3740
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3742
    .restart local v0    # "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3743
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a047a

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v0    # "imsi":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 3748
    goto :goto_1
.end method

.method private prepareWifiAssistantCard()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2434
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v5, :cond_1

    .line 2501
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2443
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 2446
    .local v2, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2451
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2452
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "assistant_dismiss_platform"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2454
    .local v0, "lastDismissPlatform":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v0, :cond_0

    .line 2462
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 2464
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    if-nez v5, :cond_0

    .line 2465
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040279

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    .line 2467
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    const v6, 0x7f1005e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2468
    .local v3, "setup":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    const v6, 0x7f1005e4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2470
    .local v1, "noThanks":Landroid/widget/Button;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 2471
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2491
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2708
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 2709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 2710
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2712
    :cond_1
    return-void
.end method

.method private setOffMessage()V
    .locals 5

    .prologue
    .line 2517
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2518
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0a0411

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2519
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2521
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2523
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2525
    const v1, 0x7f0a03e4

    .line 2529
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2530
    .local v0, "charSeq":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2533
    .end local v0    # "charSeq":Ljava/lang/CharSequence;
    .end local v1    # "resId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2547
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v2, :cond_1

    .line 2548
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2560
    :cond_1
    return-void

    .line 2527
    :cond_2
    const v1, 0x7f0a03e5

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 2564
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 2565
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f0207a9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 2572
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 3290
    :cond_0
    :goto_0
    return-void

    .line 3267
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    sget v0, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    if-nez v0, :cond_4

    .line 3270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0a0603

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 3271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3272
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    .line 3273
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 3274
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_5

    .line 3275
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    if-eqz v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 3277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3278
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    .line 3279
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 3281
    :cond_5
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_6

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 3282
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 3283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    if-eqz v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3287
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShowConnecting:Z

    goto :goto_0
.end method

.method private showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    .line 3296
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eq v1, v3, :cond_0

    .line 3300
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3301
    const-string v1, "WifiSettings"

    const-string v2, "AP Dialog is aleady showing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :cond_0
    :goto_0
    return-void

    .line 3303
    :cond_1
    const-string v1, "WifiSettings"

    const-string v2, "Show retry popup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getAccessPoint(I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 3305
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_2

    .line 3306
    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. Can not find access point."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3307
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3308
    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3310
    :cond_3
    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 3311
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0bdc

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3313
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2001
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 2003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 2007
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2008
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 2010
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 2011
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "durationTime"    # I
    .param p3, "stopScan"    # Z

    .prologue
    const v7, 0x7f0a059f

    const v6, 0x1040014

    const/high16 v5, 0x1040000

    const/4 v4, 0x0

    .line 2745
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 2746
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v2, :cond_0

    .line 2747
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2749
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2925
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2752
    :pswitch_1
    const-string v2, ""

    const-string v3, "ollehWiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2753
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0464

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2754
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2755
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 2756
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 2762
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2763
    .local v0, "errDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0207ba

    const v3, 0x7f0a0465

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2765
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2767
    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2768
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2778
    :cond_3
    const v2, 0x7f0a089a

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2787
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2791
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 2792
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2797
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 2804
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2805
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2867
    .end local v0    # "errDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2868
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 2869
    const-string v2, "WifiSettings"

    const-string v3, "Ignore wifi connectivity check dialog. WifiInfo is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2872
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2873
    .local v1, "watchdogDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0207bb

    const v3, 0x7f0a0581

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2875
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2876
    const v2, 0x7f0a0582

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$23;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$23;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2887
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2888
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$24;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2898
    :cond_5
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$25;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$25;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2902
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 2903
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/wifi/WifiSettings$26;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSettings$26;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2913
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$27;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$27;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    .line 2920
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2921
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2749
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 8
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 2016
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2017
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getPromptCredentialsEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2019
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2021
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2022
    const-string v0, "getPromptCredentialsEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2038
    :goto_0
    return-void

    .line 2026
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2030
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2033
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2034
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 2036
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 2037
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 2026
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private startWith(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1241
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings activity start with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    packed-switch p1, :pswitch_data_0

    .line 1253
    :goto_0
    :pswitch_0
    return-void

    .line 1244
    :pswitch_1
    const/4 v0, 0x7

    const/16 v1, 0x7530

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 1247
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1250
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAnsExceptionDialog()V

    goto :goto_0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 22

    .prologue
    .line 2199
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2201
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2202
    const v2, 0x7f0a0413

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2205
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v18

    .line 2207
    .local v18, "wifiState":I
    const/4 v13, 0x0

    .line 2208
    .local v13, "filter":Z
    const/4 v15, 0x0

    .line 2209
    .local v15, "mobile":Lcom/android/settings/wifi/AccessPoint;
    const-string v2, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAccessPoints] wifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v2

    sput v2, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    .line 2214
    packed-switch v18, :pswitch_data_0

    .line 2406
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v20, 0x0

    cmp-long v2, v4, v20

    if-eqz v2, :cond_0

    .line 2407
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    const-wide/16 v20, 0x1f4

    cmp-long v2, v4, v20

    if-lez v2, :cond_15

    .line 2408
    const-string v2, "WifiSettings"

    const-string v4, "scroll end"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 2216
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2217
    const-string v2, "WifiSettings"

    const-string v4, "Skip updateAccessPoints"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2220
    :cond_4
    sget-object v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->isLaunched:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2221
    const-string v2, "WifiSettings"

    const-string v4, "Wifi Free Scan: Skip updateAccessPoints"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2225
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v2, v4, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)Ljava/util/List;

    move-result-object v9

    .line 2227
    .local v9, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v2, :cond_6

    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2247
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 2248
    .local v16, "targetScreen":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v2, :cond_7

    .line 2249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object/from16 v16, v0

    .line 2265
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v2, :cond_9

    const-string v2, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2266
    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .line 2267
    .local v8, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 2269
    .end local v8    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v2, :cond_3

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 2273
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 2274
    const v2, 0x7f0a0412

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2277
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 2278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    if-eqz v2, :cond_b

    .line 2279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2282
    :cond_b
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .line 2333
    .restart local v8    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v2, :cond_f

    .line 2334
    if-eqz v8, :cond_c

    .line 2335
    iget-object v2, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "Swisscom_Auto_Login"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2336
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2337
    iget-object v2, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "Swisscom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2338
    move-object v15, v8

    goto :goto_3

    .line 2341
    :cond_d
    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_e

    .line 2342
    const/4 v13, 0x1

    .line 2344
    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 2348
    :cond_f
    const-string v2, ""

    iget-object v4, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2349
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 2355
    .end local v8    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_10
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v2, :cond_11

    .line 2356
    const/4 v2, 0x1

    if-ne v13, v2, :cond_11

    if-eqz v15, :cond_11

    .line 2357
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2358
    const-string v2, "WifiSettings"

    const-string v4, "network removed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 2362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    .line 2363
    .local v17, "wifiIsEnabled":Z
    move/from16 v10, v17

    .line 2365
    .local v10, "allowUserProfiles":Z
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2366
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "false"

    aput-object v4, v6, v2

    .line 2367
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getAllowUserProfiles"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2369
    .local v12, "cr":Landroid/database/Cursor;
    if-eqz v12, :cond_13

    .line 2371
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2372
    const-string v2, "getAllowUserProfiles"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 2373
    .local v11, "columnIndex":I
    if-ltz v11, :cond_12

    .line 2374
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_14

    .line 2375
    const/4 v10, 0x0

    .line 2383
    :cond_12
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2387
    .end local v11    # "columnIndex":I
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 2377
    .restart local v11    # "columnIndex":I
    :cond_14
    move/from16 v10, v17

    goto :goto_4

    .line 2380
    .end local v11    # "columnIndex":I
    :catch_0
    move-exception v2

    .line 2383
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2394
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v10    # "allowUserProfiles":Z
    .end local v12    # "cr":Landroid/database/Cursor;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "targetScreen":Landroid/preference/PreferenceGroup;
    .end local v17    # "wifiIsEnabled":Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 2398
    :pswitch_2
    const v2, 0x7f0a03ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 2402
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto/16 :goto_1

    .line 2410
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2411
    const-string v2, "WifiSettings"

    const-string v4, "force scroll up"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 2214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 3233
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3234
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 3262
    :cond_0
    return-void

    .line 3237
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 3238
    .local v2, "prefScreen":Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v4, :cond_2

    .line 3239
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 3240
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 3243
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_6

    .line 3245
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 3250
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 3251
    if-eqz p1, :cond_4

    .line 3252
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 3254
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 3256
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 3257
    .local v3, "preference":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 3258
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 3259
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3254
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3247
    .end local v1    # "i":I
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiInternetServiceCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3918
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3919
    const-string v0, "WifiSettings"

    const-string v1, "updateWifiInternetServiceCheck() - getActivity() is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :goto_0
    return-void

    .line 3921
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-eqz v0, :cond_2

    .line 3922
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "updateWifiInternetServiceCheck() - mAutoNetworkSwitch is null or removed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3925
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3940
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0577

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 3944
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3927
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0578

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 3928
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3931
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0579

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 3932
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3935
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a057a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 3936
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateWifiState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3340
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3341
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3353
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3416
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 3417
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 3418
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 3419
    :cond_2
    :goto_1
    return-void

    .line 3355
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3356
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHasMotionRecognitionService:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-nez v1, :cond_2

    .line 3358
    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 3359
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    goto :goto_1

    .line 3365
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 3368
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3369
    const-string v1, "WifiSettings"

    const-string v2, "TALK BACK ON !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 3372
    :cond_3
    const v1, 0x7f0a03cd

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 3377
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->closeContextMenu()V

    .line 3378
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 3385
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v1, :cond_4

    .line 3386
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 3387
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 3389
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    .line 3390
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3392
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHasMotionRecognitionService:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v1, :cond_6

    .line 3394
    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3395
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 3397
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v1, :cond_7

    .line 3398
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 3400
    :cond_7
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3401
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3402
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3404
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 3406
    const-string v1, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3407
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto/16 :goto_0

    .line 3353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    .line 1271
    .local v10, "wifiIsEnabled":Z
    const/4 v8, 0x0

    .line 1272
    .local v8, "p2pActionFlag":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1284
    .local v9, "ta":Landroid/content/res/TypedArray;
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const v4, 0x7f0a0409

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1289
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v0, :cond_1

    .line 1290
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f0a0408

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 1291
    const/4 v8, 0x0

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1295
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1296
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isWifiDirectAllowed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1298
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_b

    .line 1300
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1301
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1318
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v0, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v0, :cond_2

    .line 1319
    const/4 v0, 0x0

    const/16 v2, 0x11

    const/4 v3, 0x0

    const v4, 0x7f0a0400

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 1320
    .local v7, "manageNetwork":Landroid/view/MenuItem;
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1321
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1324
    .end local v7    # "manageNetwork":Landroid/view/MenuItem;
    :cond_2
    const-string v0, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1325
    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0a040a

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1328
    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0a0405

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1331
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f0a0407

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1335
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1337
    const/4 v0, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const v4, 0x7f0a0588

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1343
    :cond_4
    const-string v0, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1344
    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0a040a

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1349
    :cond_5
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    .line 1352
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1353
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1354
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1356
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    .line 1362
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_7

    .line 1363
    const/4 v0, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x0

    const v4, 0x7f0a0e57

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020131

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->helpMenuCheck:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1371
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isKioskContainer:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 1372
    :cond_8
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1373
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1375
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1377
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 1381
    :cond_9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1382
    return-void

    .line 1304
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1310
    :cond_b
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cr is NULL !! , mP2pMenuItem.setEnabled(wifiIsEnabled) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1272
    nop

    :array_0
    .array-data 4
        0x7f010032
        0x7f010034
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 3800
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3801
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 954
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    return-object v1
.end method

.method forget()V
    .locals 4

    .prologue
    .line 3683
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 3684
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3686
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forget invalid network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    :goto_0
    return-void

    .line 3690
    :cond_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3704
    .local v0, "salesCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3712
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3713
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3715
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3718
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 3872
    const v0, 0x7f0a0e58

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 2511
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2512
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2513
    return-object v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1387
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1388
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1389
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1390
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1391
    const/4 v4, 0x1

    .line 1394
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public isTalkbackPaused()Z
    .locals 2

    .prologue
    .line 3837
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 3839
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 3840
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 3842
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f070101

    const/4 v13, -0x2

    const/16 v12, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 595
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 597
    const-string v7, "VZW"

    const-string v10, "ALL"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 598
    sput v9, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    .line 599
    sput v9, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 600
    const-string v7, "WifiSettings"

    const-string v10, "vzwViewFlag sets to false, onActivityCreated"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    const-string v7, "nfc"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/NfcManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 605
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 607
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 623
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 638
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mHasMotionRecognitionService:Z

    .line 655
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mHasMotionRecognitionService:Z

    if-eqz v7, :cond_1

    .line 656
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 657
    new-instance v7, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 686
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_2

    .line 687
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 688
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 689
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 695
    :cond_2
    if-eqz v0, :cond_3

    .line 696
    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v7, :cond_3

    .line 698
    new-instance v7, Landroid/speech/tts/TextToSpeech;

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-direct {v7, v0, v10}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 721
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 722
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "wifi_enable_next_on_connect"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 725
    const-string v7, "force_show_dialog"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 726
    const-string v7, "force_show_dialog"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mForceShowDialog:Z

    .line 730
    :cond_4
    if-eqz v0, :cond_5

    .line 731
    const-string v7, "connectivity"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 734
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_5

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 736
    if-eqz v1, :cond_5

    .line 737
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 739
    .local v4, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 745
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_5
    const-string v7, "VZW"

    const-string v10, "ALL"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 746
    sput v9, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 749
    :cond_6
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 752
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_15

    .line 753
    const-string v7, "WifiSettings"

    const-string v10, "onCreate:only_access_points"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sput v8, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 755
    const v7, 0x7f0700f4

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 768
    :cond_7
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_9

    .line 769
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 770
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v7, :cond_8

    .line 771
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 773
    :cond_8
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_17

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v7, :cond_17

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecDummyPickerActivity:Z

    if-nez v7, :cond_17

    .line 774
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 780
    :cond_9
    :goto_1
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_b

    .line 781
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v10, 0x1a40000

    invoke-virtual {v7, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 789
    :cond_b
    const-string v7, "notifyMe"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyMe:Landroid/preference/CheckBoxPreference;

    .line 798
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyMe:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_c

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyMe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 804
    :cond_c
    const-string v7, "wifi_auto_network_switch"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v8, :cond_d

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v7, :cond_d

    sget-boolean v7, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v7, :cond_18

    .line 807
    :cond_d
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_e

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 809
    const-string v7, "WifiSettings"

    const-string v10, "mAutoNetworkSwitch checkbox removed"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_e
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    .line 833
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mPreviousWifiState:I

    .line 836
    new-instance v7, Landroid/widget/Switch;

    invoke-direct {v7, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 838
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0f0058

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 840
    .local v6, "padding":I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v9, v9, v6, v9}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 841
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_f

    .line 842
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020628

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020629

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 847
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v7, :cond_1b

    .line 848
    :cond_10
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v10, 0x14

    invoke-virtual {v7, v12, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 850
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 857
    :cond_11
    :goto_3
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_1c

    .line 858
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 859
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const v12, 0x800015

    invoke-direct {v11, v13, v13, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 863
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v10, 0x7f0a03c9

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setTitle(I)V

    .line 871
    :cond_12
    :goto_4
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_1d

    const-string v7, "VZW"

    const-string v10, "ALL"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x1020004

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 873
    .local v3, "emptyViewForVZW":Landroid/widget/TextView;
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 874
    const/16 v7, 0x30

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 875
    const v7, 0x7f0a0401

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 883
    .end local v3    # "emptyViewForVZW":Landroid/widget/TextView;
    :cond_13
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->prepareWifiAssistantCard()V

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 888
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_14

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_14

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 892
    :cond_14
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-ne v7, v8, :cond_1e

    .line 893
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 897
    :goto_6
    return-void

    .line 756
    .end local v6    # "padding":I
    :cond_15
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_16

    .line 757
    const v7, 0x7f070100

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 758
    const-string v7, "VZW"

    const-string v10, "ALL"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 759
    sput v9, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    goto/16 :goto_0

    .line 762
    :cond_16
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 763
    const-string v7, "VZW"

    const-string v10, "ALL"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 764
    sput v9, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    goto/16 :goto_0

    .line 775
    :cond_17
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v7, :cond_9

    .line 776
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    goto/16 :goto_1

    .line 813
    :cond_18
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_19

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 815
    const/4 v2, 0x0

    .line 821
    .local v2, "defaultValue":I
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v7, v11, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1a

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 823
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiInternetServiceCheck()V

    .line 825
    .end local v2    # "defaultValue":I
    :cond_19
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    goto/16 :goto_2

    .restart local v2    # "defaultValue":I
    :cond_1a
    move v7, v9

    .line 821
    goto :goto_7

    .line 852
    .end local v2    # "defaultValue":I
    .restart local v6    # "padding":I
    :cond_1b
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_3

    .line 866
    :cond_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 867
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v10, 0x7f0a0400

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_4

    .line 878
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 879
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_13

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_13

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_5

    .line 895
    :cond_1e
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 901
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 902
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disableWifiAssistantCardUntilPlatformUpgrade()V

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantCard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3819
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3820
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3821
    return-void
.end method

.method public onAdvancedMenuPressed()V
    .locals 10

    .prologue
    const v3, 0x7f0a040a

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1545
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 1546
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1554
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1572
    :goto_1
    return-void

    .line 1548
    :cond_0
    sput-boolean v6, Lcom/android/settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1560
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 1566
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v0, :cond_3

    .line 1567
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.net.wifi.SECSETUP_WIFI_ADVANCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1569
    :cond_3
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 3435
    const/4 v5, 0x0

    .line 3436
    .local v5, "mController":Lcom/android/settings/wifi/WifiConfigController;
    const/4 v3, 0x0

    .line 3438
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v11, :cond_2

    .line 3439
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v5

    .line 3440
    if-eqz v5, :cond_1

    .line 3441
    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 3451
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/WifiConfigController;->getDialogButton(I)Z

    move-result v4

    .line 3452
    .local v4, "mCanceltoForget":Z
    const-string v11, "VZW"

    const-string v12, "ALL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 3453
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/WifiConfigController;->getVzwButton(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 3599
    .end local v4    # "mCanceltoForget":Z
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    const-string v11, "WifiSettings"

    const-string v12, "onClick() mController is null "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3447
    :cond_2
    const-string v11, "WifiSettings"

    const-string v12, "onClick() mDialog is null "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3455
    .restart local v4    # "mCanceltoForget":Z
    :pswitch_0
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0

    .line 3458
    :pswitch_1
    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 3461
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 3464
    :pswitch_3
    if-eqz v3, :cond_5

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 3465
    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3466
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3467
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3468
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v11, v3, v12}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3469
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3474
    :goto_1
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3475
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3477
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 3471
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v11, v3, v12}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3472
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_1

    .line 3479
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 3480
    .local v8, "networkId":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_6

    .line 3481
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a042b

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3484
    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3485
    iput v8, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3486
    const v11, 0x7f0a042a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3487
    .local v6, "messageRes":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 3488
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 3493
    .end local v6    # "messageRes":Ljava/lang/String;
    .end local v8    # "networkId":I
    :pswitch_4
    if-nez v3, :cond_7

    .line 3494
    const-string v11, "WifiSettings"

    const-string v12, " config null "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_9

    .line 3496
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3499
    :cond_7
    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_9

    .line 3500
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    iget-boolean v11, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v11, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3501
    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiConfigController;->isNeedtoForgetNetwork()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3502
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 3503
    .local v9, "newNetId":I
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3504
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v11, v3, v12}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3505
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3506
    const/4 v11, -0x1

    if-eq v9, v11, :cond_8

    .line 3507
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v9, v11}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3509
    :cond_8
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3510
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 3521
    .end local v9    # "newNetId":I
    :cond_9
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v11, :cond_a

    .line 3522
    const-string v11, "WifiSettings"

    const-string v12, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3524
    :cond_a
    if-eqz v3, :cond_d

    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 3525
    const/4 v2, 0x0

    .line 3526
    .local v2, "caCert":Ljava/lang/String;
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 3527
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 3528
    :cond_b
    const-string v11, "WifiSettings"

    const-string v12, "caCert is null or empty!!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    sput-object v3, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 3530
    const/16 v11, 0xd

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 3533
    :cond_c
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v3, v11}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3536
    .end local v2    # "caCert":Ljava/lang/String;
    :cond_d
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v3, v11}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3543
    :cond_e
    const/4 v11, -0x3

    move/from16 v0, p2

    if-ne v0, v11, :cond_f

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v11, :cond_10

    :cond_f
    if-eqz v4, :cond_11

    .line 3544
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto/16 :goto_0

    .line 3549
    :cond_11
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_16

    .line 3551
    sget-boolean v11, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_12

    .line 3552
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_12

    .line 3553
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v11

    if-nez v11, :cond_12

    .line 3554
    const-string v11, "WifiSettings"

    const-string v12, "disabling AP..."

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 3560
    :cond_12
    sget-boolean v11, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_14

    .line 3561
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v12, :cond_14

    .line 3562
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v11

    if-nez v11, :cond_14

    .line 3563
    const-string v11, "WifiSettings"

    const-string v12, "disconnecting AP..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 3565
    .local v10, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_13

    .line 3566
    const-string v11, "WifiSettings"

    const-string v12, "selectedConfig == null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3570
    :cond_13
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 3571
    .local v7, "msg":Landroid/os/Message;
    const/16 v11, 0xcb

    iput v11, v7, Landroid/os/Message;->what:I

    .line 3572
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3573
    .local v1, "args":Landroid/os/Bundle;
    const-string v11, "netId"

    iget v12, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3574
    const-string v11, "reason"

    const/16 v12, 0xe

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3575
    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3576
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 3582
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v10    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_14
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v11, :cond_0

    .line 3583
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_15

    .line 3585
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3586
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    goto/16 :goto_0

    .line 3588
    :cond_15
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0

    .line 3591
    :cond_16
    const/4 v11, -0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 3592
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3593
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiSettings;->bRetryPopup:Z

    .line 3594
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3595
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/WifiDialog;->dismissKeypad()V

    goto/16 :goto_0

    .line 3453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 1723
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 1724
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 1822
    :cond_0
    :goto_0
    return v3

    .line 1726
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1822
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 1728
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_2

    .line 1729
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    .line 1730
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_3

    .line 1732
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1734
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1736
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1741
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_4

    .line 1742
    const-string v4, "WifiSettings"

    const-string v5, "Invalid network id "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1744
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1755
    :pswitch_3
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v4, :cond_0

    .line 1756
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 1757
    .local v2, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_5

    .line 1758
    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    :cond_5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1763
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xcb

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1764
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1765
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1766
    const-string v4, "reason"

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1768
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 1773
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 1777
    :pswitch_5
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1794
    :pswitch_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 1795
    .restart local v2    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v4, :cond_0

    .line 1796
    if-nez v2, :cond_6

    .line 1797
    const-string v4, "WifiSettings"

    const-string v5, "selectedConfig == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1801
    :cond_6
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autojoin val for selected AP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1803
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1808
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1809
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x47

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1811
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "netId"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    const-string v4, "autojoin"

    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1815
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1816
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 1817
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 1805
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    goto :goto_1

    .line 1726
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 549
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 550
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v2, :cond_0

    const-string v2, "VZW"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "manage_network"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "firstRun"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/WifiSecPickerActivity;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/SetupWizardWifiScreen;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/WifiOffloadDialog;

    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_location_services"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 584
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    .line 590
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 591
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 24
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1607
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1608
    :cond_1
    const-string v2, "WifiSettings"

    const-string v4, "InSecPickerActivity : ignore context menu, in Help mode"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_2
    :goto_0
    return-void

    .line 1611
    .restart local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_3
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_2

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object/from16 v0, p3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/preference/Preference;

    .line 1615
    .local v22, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    .line 1616
    check-cast v22, Lcom/android/settings/wifi/AccessPoint;

    .end local v22    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1619
    const/16 v19, 0x0

    .line 1621
    .local v19, "isVendorAp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v19

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v18

    .line 1625
    .local v18, "isSupportedSecurity":Z
    if-nez v18, :cond_4

    if-nez v19, :cond_4

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1627
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0a040d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1632
    :cond_4
    const/4 v14, 0x0

    .line 1634
    .local v14, "bCCMode":Z
    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1635
    .local v20, "mdppProperty":Ljava/lang/String;
    const-string v2, "Enabled"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Enforcing"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1636
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v16, v0

    .line 1637
    .local v16, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    .line 1638
    .local v15, "eapMethod":I
    const/4 v2, 0x6

    if-eq v15, v2, :cond_6

    const/4 v2, 0x7

    if-ne v15, v2, :cond_7

    .line 1639
    :cond_6
    const/4 v14, 0x1

    .line 1644
    .end local v15    # "eapMethod":I
    .end local v16    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1646
    if-nez v14, :cond_8

    .line 1647
    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const v7, 0x7f0a040b

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1649
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1650
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v2, :cond_9

    .line 1651
    const/4 v2, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const v7, 0x7f0a040c

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    .line 1654
    .local v23, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_11

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1663
    .end local v23    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    :goto_2
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1665
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1666
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1668
    .local v17, "enterpriseCr":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1670
    .local v13, "allowCr":Landroid/database/Cursor;
    if-eqz v17, :cond_c

    if-eqz v13, :cond_c

    .line 1672
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1673
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1674
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1677
    :cond_a
    if-nez v19, :cond_b

    .line 1678
    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const v7, 0x7f0a040d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1680
    :cond_b
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v2, :cond_c

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_c

    .line 1682
    const/4 v2, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const v7, 0x7f0a05a1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    :cond_c
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1690
    :cond_d
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1697
    :cond_e
    if-nez v19, :cond_f

    .line 1698
    const/4 v2, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const v7, 0x7f0a040f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1701
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mNfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v21

    .line 1702
    .local v21, "nfcAdapter":Landroid/nfc/NfcAdapter;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiSettings;->mIsEmerMode:Z

    if-nez v2, :cond_2

    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    .line 1704
    .restart local v23    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v2, :cond_2

    .line 1706
    const/4 v2, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const v7, 0x7f0a0410

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1656
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "allowCr":Landroid/database/Cursor;
    .end local v17    # "enterpriseCr":Landroid/database/Cursor;
    .end local v21    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1658
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1686
    .end local v23    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "allowCr":Landroid/database/Cursor;
    .restart local v17    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 2096
    packed-switch p1, :pswitch_data_0

    .line 2190
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v12

    :cond_0
    :goto_0
    return-object v12

    .line 2100
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2101
    .local v3, "ap":Lcom/android/settings/wifi/AccessPoint;
    if-nez v3, :cond_1

    .line 2102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2103
    new-instance v3, Lcom/android/settings/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2105
    .restart local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2107
    iput-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 2111
    :cond_1
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2112
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 2113
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 2114
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 2124
    :goto_1
    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 2115
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 2116
    new-instance v6, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object v8, p0

    move-object v9, v3

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 2118
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v0, :cond_4

    .line 2119
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 2121
    :cond_4
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 2127
    .end local v3    # "ap":Lcom/android/settings/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 2128
    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto :goto_0

    .line 2134
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 2135
    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto/16 :goto_0

    .line 2140
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    .line 2141
    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 2143
    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto/16 :goto_0

    .line 2147
    :cond_5
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2148
    new-instance v12, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAutoNetworkSwitchDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v2, :cond_6

    :goto_2
    invoke-direct {v12, v0, v1, v5}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2149
    .local v12, "dialog":Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;
    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;->show()V

    goto/16 :goto_0

    .end local v12    # "dialog":Lcom/android/settings/wifi/WifiAutoNetworkSwitchDialog;
    :cond_6
    move v5, v11

    .line 2148
    goto :goto_2

    .line 2154
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2157
    new-instance v13, Lcom/android/settings/wifi/WifiAnsExceptionDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAnsExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v0, v1, v2}, Lcom/android/settings/wifi/WifiAnsExceptionDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    .line 2158
    .local v13, "mWifiAnsExceptiondialog":Landroid/app/Dialog;
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    move-object v12, v13

    .line 2159
    goto/16 :goto_0

    .line 2162
    .end local v13    # "mWifiAnsExceptiondialog":Landroid/app/Dialog;
    :pswitch_7
    const-string v0, "WifiSettings"

    const-string v1, "WIFI_WARNING_CA_CERT_DIALOG_ID show!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a047d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a047c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01ce

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a05a8

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    goto/16 :goto_0

    .line 2096
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v0, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_4

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 1263
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1260
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 534
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView() -:- mSecSetupWizardMode ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v1, :cond_0

    .line 537
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    .line 541
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00b1

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 542
    .local v0, "localInflater":Landroid/view/LayoutInflater;
    invoke-super {p0, v0, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 914
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 919
    return-void
.end method

.method public onHelpMenuPressed()V
    .locals 6

    .prologue
    .line 1505
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1506
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1523
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1507
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1508
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "helphub:section"

    const-string v4, "wifi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1511
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1520
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1515
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_3
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1516
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:appid"

    const-string v4, "wi_fi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public onManageNetworkMenuPressed()V
    .locals 10

    .prologue
    const v3, 0x7f0a0400

    .line 1588
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1589
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1591
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1603
    :goto_0
    return-void

    .line 1598
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v6, 0x7f0a04c2

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 1415
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    :goto_0
    return v9

    .line 1417
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1482
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_0

    .line 1419
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPushBtnPressed()V

    move v9, v12

    .line 1420
    goto :goto_0

    .line 1422
    :pswitch_2
    invoke-direct {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1424
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1425
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1427
    .local v10, "cr":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1429
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1430
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v9, v12

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1438
    :cond_2
    new-instance v11, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings/Settings$WifiP2pSettingsActivity;

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1440
    .local v11, "wifiDirectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v9, v12

    .line 1441
    goto :goto_0

    .line 1434
    .end local v11    # "wifiDirectIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1443
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v10    # "cr":Landroid/database/Cursor;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPinBtnPressed()V

    move v9, v12

    .line 1444
    goto :goto_0

    .line 1447
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onHelpMenuPressed()V

    move v9, v12

    .line 1448
    goto :goto_0

    .line 1454
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onScanMenuPressed()V

    move v9, v12

    .line 1455
    goto :goto_0

    .line 1457
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1458
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_3
    move v9, v12

    .line 1460
    goto :goto_0

    .line 1462
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 1463
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v7, v2

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v9, v12

    .line 1471
    goto/16 :goto_0

    .line 1467
    :cond_4
    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    move-object v3, p0

    move-object v4, p0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1473
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    move v9, v12

    .line 1474
    goto/16 :goto_0

    .line 1476
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onManageNetworkMenuPressed()V

    move v9, v12

    .line 1477
    goto/16 :goto_0

    .line 1479
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onShareProfileMenuPressed()V

    move v9, v12

    .line 1480
    goto/16 :goto_0

    .line 1417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1157
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 1158
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v6, :cond_0

    .line 1159
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1162
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1164
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1165
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1166
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1a

    iput v6, v3, Landroid/os/Message;->what:I

    .line 1168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1169
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "enable"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1171
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-nez v6, :cond_1

    .line 1172
    const-string v6, "WifiSettings"

    const-string v7, "onPause : enable P2P - false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1178
    .local v4, "msg2":Landroid/os/Message;
    const/16 v6, 0x4c

    iput v6, v4, Landroid/os/Message;->what:I

    .line 1180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1181
    .local v1, "args2":Landroid/os/Bundle;
    const-string v6, "lock"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1182
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1183
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-nez v6, :cond_2

    .line 1184
    const-string v6, "WifiSettings"

    const-string v7, "mSkipScanAssocLock set false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-nez v6, :cond_3

    .line 1189
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1190
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1193
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    .line 1194
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1195
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 1197
    :cond_4
    const-string v6, "KTCM"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1198
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    if-eqz v6, :cond_5

    .line 1199
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mRunnableForKTCM:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1203
    :cond_5
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1204
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 1206
    .local v2, "isScreenOn":Z
    sget-boolean v6, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    .line 1207
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v6, :cond_6

    .line 1208
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 1209
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 1213
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1214
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1216
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mHasMotionRecognitionService:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v6, :cond_7

    .line 1218
    sget-object v6, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v6, v7}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1219
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 1222
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1229
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1829
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1830
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1842
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v5, "wifi_auto_network_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1844
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_watchdog_poor_network_test_enabled"

    move-object v5, p2

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1846
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v5, :cond_1

    .line 1847
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1848
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showAutoNetworkSwitchDialog()V

    .line 1985
    :cond_1
    :goto_1
    return v6

    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    move v5, v7

    .line 1844
    goto :goto_0

    .line 1860
    :cond_3
    instance-of v5, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_16

    .line 1861
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1862
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-eqz v5, :cond_4

    .line 1864
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1865
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1866
    .local v4, "mCurrentAP":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v8, :cond_6

    .line 1867
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1868
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    .line 1886
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInSecDummyPickerActivity:Z

    if-eqz v5, :cond_8

    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsFromLocation:Z

    if-nez v5, :cond_8

    .line 1887
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1888
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 1889
    const-string v5, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1890
    const-string v5, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    const-string v5, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1892
    const-string v5, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1893
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1894
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1870
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1871
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getAPBSSID(Lcom/android/settings/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 1872
    const-string v5, "ssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    const-string v5, "bssid"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    const-string v5, "security"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1875
    const-string v5, "frequency"

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1877
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 1882
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mCurrentAP":Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLocationAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1883
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsShouldSendResult:Z

    goto/16 :goto_2

    .line 1899
    :cond_8
    const-string v5, "T wifi zone_secure"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1901
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1926
    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    .line 1927
    .local v3, "isSupportedSecurity":Z
    if-nez v3, :cond_a

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v9, :cond_1

    .line 1929
    :cond_a
    const-string v5, "VZW"

    const-string v8, "ALL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1930
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v5, :cond_11

    .line 1931
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v8, :cond_f

    .line 1932
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 1904
    .end local v3    # "isSupportedSecurity":Z
    :cond_b
    const-string v5, "ollehWiFi"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1906
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    .line 1909
    :cond_c
    const-string v5, "U+zone"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1911
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    .line 1914
    :cond_d
    const-string v5, "U+zone_5G"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1916
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    .line 1919
    :cond_e
    const-string v5, "5G_U+zone"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1921
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_1

    .line 1935
    .restart local v3    # "isSupportedSecurity":Z
    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    if-eq v5, v9, :cond_10

    .line 1936
    const/4 v0, 0x1

    .line 1941
    .local v0, "ManageConnectable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 1939
    .end local v0    # "ManageConnectable":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "ManageConnectable":Z
    goto :goto_3

    .line 1944
    .end local v0    # "ManageConnectable":Z
    :cond_11
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 1947
    :cond_12
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v9, :cond_14

    .line 1949
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1951
    sget-boolean v5, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v5, :cond_13

    .line 1952
    sput-boolean v6, Lcom/android/settings/wifi/WifiSettings;->savedNetworksExist:Z

    .line 1953
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1956
    :cond_13
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1957
    :catch_0
    move-exception v1

    .line 1958
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v5, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1967
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :cond_14
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v5

    if-nez v5, :cond_15

    .line 1968
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f0a05a7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1972
    :cond_15
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1973
    :catch_1
    move-exception v1

    .line 1974
    .restart local v1    # "ex":Ljava/lang/IllegalStateException;
    const-string v5, "WifiSettings"

    const-string v7, "Ignore Illegal state exception here."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1978
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    .end local v3    # "isSupportedSecurity":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1979
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1980
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto/16 :goto_1

    .line 1983
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 15

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 991
    .local v6, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 992
    const-string v0, "WifiSettings"

    const-string v2, "WifiSettings onResume"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    .line 998
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 999
    .local v12, "msg":Landroid/os/Message;
    const/16 v0, 0x4a

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1001
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1002
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "enable"

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1003
    iput-object v7, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    const-string v0, "WifiSettings"

    const-string v2, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_1
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 1011
    .local v13, "msg2":Landroid/os/Message;
    const/16 v0, 0x4c

    iput v0, v13, Landroid/os/Message;->what:I

    .line 1013
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1014
    .local v8, "args2":Landroid/os/Bundle;
    const-string v0, "lock"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    iput-object v8, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1017
    const-string v0, "WifiSettings"

    const-string v2, "mSkipScanAssocLock set true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_2
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1022
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isWifiStateChangeAllowed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1024
    .local v9, "cr":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 1026
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1027
    const-string v0, "isWifiStateChangeAllowed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_4
    const-string v0, "KTCM"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_skip_auto_conn"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    const/4 v14, 0x1

    .line 1038
    .local v14, "ret":Z
    :goto_0
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    if-eqz v14, :cond_5

    .line 1041
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_skip_auto_conn"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1042
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1045
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    .line 1046
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRunnableForKTCM:Ljava/lang/Runnable;

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1070
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "ret":Z
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1077
    if-eqz v6, :cond_6

    .line 1078
    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_6

    .line 1080
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-direct {v0, v6, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1118
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 1119
    const/4 v10, 0x0

    .line 1125
    .local v10, "defaultValue":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1137
    .end local v10    # "defaultValue":I
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v2, 0x7f100570

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const v2, 0x7f1005b7

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1140
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1143
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    const v2, 0x7f100570

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1148
    :cond_a
    sget v0, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v0, :cond_b

    .line 1149
    sget v0, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    .line 1150
    sget v0, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_b

    .line 1151
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 1153
    :cond_b
    return-void

    .line 1031
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1037
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1125
    .restart local v10    # "defaultValue":I
    :cond_d
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1399
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1402
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1406
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1407
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public onScanMenuPressed()V
    .locals 3

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1492
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v0, :cond_2

    .line 1494
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 1499
    :cond_0
    :goto_1
    return-void

    .line 1489
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a05a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1496
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1
.end method

.method public onShareProfileMenuPressed()V
    .locals 10

    .prologue
    const v3, 0x7f0a0588

    const/4 v2, 0x0

    .line 1574
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1585
    :goto_0
    return-void

    .line 1581
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 923
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 924
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_0

    .line 925
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 930
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 932
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 933
    .local v2, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 934
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 935
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 936
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart() :: mLastState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 938
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 939
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart(), wifiNetworkInfo.isConnected() :: mLastInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v3, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 947
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1233
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 1234
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 1237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1238
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 962
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 975
    const-string v0, "wifi_free_wifi_scan"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFreeWifiScan:Landroid/preference/Preference;

    .line 986
    return-void
.end method

.method public onWpsPinBtnPressed()V
    .locals 3

    .prologue
    .line 1528
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 1529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 1530
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    .line 1531
    return-void
.end method

.method public onWpsPushBtnPressed()V
    .locals 3

    .prologue
    .line 1534
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 1535
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 1536
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->RemoveNotUsedWpsButton()V

    .line 1537
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3808
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3811
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3812
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3866
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3868
    :cond_0
    return-void
.end method

.method public showAnsExceptionDialog()V
    .locals 1

    .prologue
    .line 3984
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 3986
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 3988
    :cond_0
    return-void
.end method

.method public showAutoNetworkSwitchDialog()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 3960
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_internet_service_check_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3967
    :cond_0
    :goto_0
    return-void

    .line 3961
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoNetworkSwitchOptionRemoved:Z

    if-nez v0, :cond_0

    .line 3962
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v0, :cond_0

    .line 3963
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 3964
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v0

    if-eq v0, v3, :cond_0

    sget-boolean v0, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    if-eq v0, v3, :cond_0

    .line 3965
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 3966
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public speakTTS()V
    .locals 4

    .prologue
    .line 3846
    const v1, 0x7f0a05a6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3847
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 3848
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 3850
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    const/4 v3, -0x1

    .line 3612
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3614
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_3

    .line 3615
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    .line 3618
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3658
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3659
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3661
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3662
    :cond_2
    :goto_1
    return-void

    .line 3620
    :cond_3
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_5

    .line 3621
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3622
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-connect ap id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3624
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 3625
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3626
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3629
    :cond_5
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3630
    const-string v2, ""

    const-string v3, "ollehWiFi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3631
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3636
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3637
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3638
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3641
    :cond_7
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 3642
    const/4 v0, 0x0

    .line 3643
    .local v0, "caCert":Ljava/lang/String;
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 3644
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3645
    :cond_8
    const-string v2, "WifiSettings"

    const-string v3, "caCert is null or empty!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    sput-object v1, Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 3647
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 3650
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3653
    .end local v0    # "caCert":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
