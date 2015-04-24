.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mCurrentLeftMenuType:I

.field private static mCurrentRightMenuType:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mMultiConnectClicked:Z

.field private static mMultiConnectInProgress:Z

.field private static mMultiConnectionComplete:Z

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

.field private static mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private btnBundle:Z

.field private customActionBarView:Landroid/view/View;

.field private isBtnEnabled:Z

.field private mActivity:Landroid/app/Activity;

.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mButtonBar:Landroid/widget/RelativeLayout;

.field private mCancelConnectDialog:Landroid/app/AlertDialog;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDeviceInfoDialog:Landroid/app/AlertDialog;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDisableMulticonnect:Z

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEndConnectDialog:Landroid/app/AlertDialog;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mHasMotionRecognitionService:Z

.field private mHaveSwitch:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsEmerMode:Z

.field private mIsLandscape:Z

.field private mIsMdpiOrLdpi:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsSetTimer:Z

.field private mIsTablet:Z

.field private mLastGroupFormed:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxClientSupportDialog:Landroid/app/AlertDialog;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMultiButOneDev:Z

.field private mMultiConnect:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pCancel:Landroid/view/MenuItem;

.field private mP2pDone:Landroid/view/MenuItem;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pRename:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanButton:Landroid/widget/Button;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field mTempSsid:Ljava/lang/String;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;

.field protected scanMenuItem:Landroid/view/View;

.field protected scanMenuItemText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 195
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 196
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 199
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 209
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 211
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 212
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 214
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 248
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 249
    const/4 v0, 0x6

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 279
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 284
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 286
    sput-object v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 197
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisableMulticonnect:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 263
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 265
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    .line 266
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 267
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    .line 270
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    .line 272
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 273
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    .line 280
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 281
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 287
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    .line 290
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsEmerMode:Z

    .line 293
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z

    return v0
.end method

.method static synthetic access$1400()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    return p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic access$3700()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$4002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 129
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$4900()Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic access$4902(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pConfigList;

    .prologue
    .line 129
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 129
    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return p0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1783
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1786
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, -0xd9d9da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1789
    :cond_0
    return-void
.end method

.method private addThisDevicePreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2338
    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;-><init>(Landroid/content/Context;)V

    .line 2342
    .local v3, "pref":Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2344
    .local v4, "ssid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2345
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_p2p_device_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2349
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2350
    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 2352
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2355
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x104001a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2356
    .local v0, "deviceTypeStr":Ljava/lang/String;
    const/16 v2, 0x9

    .line 2357
    .local v2, "mDeviceType":I
    if-eqz v0, :cond_3

    .line 2359
    const/4 v5, 0x0

    const/16 v6, 0x2d

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2363
    :goto_0
    const/4 v5, 0x1

    if-lt v2, v5, :cond_2

    const/16 v5, 0xb

    if-le v2, v5, :cond_3

    .line 2364
    :cond_2
    const/16 v2, 0x9

    .line 2367
    :cond_3
    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;->setIcon(I)V

    .line 2369
    invoke-virtual {v3}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "#8e9ca3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2371
    invoke-virtual {v3, v8}, Lcom/android/settings/wifi/p2p/WifiP2pMyDevice;->setEnabled(Z)V

    .line 2373
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2374
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2375
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2376
    return-void

    .line 2360
    :catch_0
    move-exception v1

    .line 2361
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse device type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2058
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2061
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    if-eqz v2, :cond_3

    .line 2065
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 2067
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2068
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 2070
    :cond_2
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2071
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2073
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2074
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 2076
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2077
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2081
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_6

    .line 2082
    const/16 v1, 0x10

    .line 2083
    .local v1, "actionBarFlag":I
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v2, :cond_4

    .line 2084
    or-int/lit8 v1, v1, 0x4

    .line 2089
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    if-eqz v2, :cond_5

    .line 2090
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2091
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2094
    :cond_5
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2095
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 2096
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v2, :cond_9

    move v2, v3

    :goto_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2097
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-nez v2, :cond_a

    .line 2099
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItem:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2106
    :goto_5
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 2087
    .end local v1    # "actionBarFlag":I
    :cond_6
    const/16 v1, 0x16

    .restart local v1    # "actionBarFlag":I
    goto :goto_1

    :cond_7
    move v2, v4

    .line 2090
    goto :goto_2

    :cond_8
    move v2, v4

    .line 2091
    goto :goto_3

    :cond_9
    move v2, v4

    .line 2096
    goto :goto_4

    .line 2102
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v5, :cond_b

    :goto_6
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2104
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItem:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    move v3, v4

    .line 2102
    goto :goto_6
.end method

.method private changeActionBarforK()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1366
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-nez v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1373
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_5

    .line 1374
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1375
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1380
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1377
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1379
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xc

    const/4 v9, 0x0

    .line 1763
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 1764
    .local v3, "partialMacAddr":Ljava/util/Formatter;
    const-string v2, ""

    .line 1765
    .local v2, "macAddrStr":Ljava/lang/String;
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1766
    .local v4, "subString":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1769
    .local v1, "enable":I
    xor-int/lit16 v1, v1, 0x80

    .line 1770
    :try_start_0
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1771
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1775
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 1778
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1775
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v2, 0x0

    .line 1823
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1824
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1826
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1835
    :goto_0
    return-object v0

    .line 1828
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1829
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1830
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1831
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1833
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x11

    .line 2331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2334
    .end local p1    # "mac":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1810
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1811
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1813
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 1814
    const/4 v3, 0x1

    .line 1820
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 1817
    :catch_0
    move-exception v1

    .line 1818
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "WifiP2pSettings"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 1792
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    .line 1793
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    .line 1805
    :goto_0
    return v3

    .line 1797
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1798
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1800
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1801
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 1802
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pSettings"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 2379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2380
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2381
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2382
    return-void
.end method

.method private setP2pMenu(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f02012d

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2116
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 2328
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2119
    :cond_1
    const/4 v0, 0x4

    if-gt p1, v0, :cond_4

    .line 2120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2121
    sput v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 2122
    :cond_2
    sput p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 2127
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2129
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_5

    .line 2130
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020133

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2131
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2143
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 2144
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2145
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2147
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2149
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_a

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0a05d8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2152
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2153
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2154
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v1, 0x7f0a05d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2124
    :cond_4
    sput p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    goto :goto_1

    .line 2133
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 2134
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_7

    .line 2135
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020133

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2137
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 2139
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2140
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 2147
    goto :goto_3

    :cond_a
    move v1, v2

    .line 2149
    goto :goto_4

    .line 2157
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_c

    .line 2158
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020133

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2159
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2171
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_b

    .line 2172
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2173
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2175
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2177
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2179
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f0a05d8

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2181
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2182
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2183
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f0a05d8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 2184
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v3, :cond_12

    :goto_8
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2186
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItemText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a05d8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2161
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_f

    .line 2162
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_e

    .line 2163
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020133

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2165
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_5

    .line 2167
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2168
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 2175
    goto/16 :goto_6

    :cond_11
    move v0, v2

    .line 2177
    goto :goto_7

    :cond_12
    move v1, v2

    .line 2185
    goto :goto_8

    .line 2192
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_14

    .line 2193
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020135

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2194
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2206
    :goto_9
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_13

    .line 2207
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2208
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2210
    :cond_13
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_a
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2212
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_b
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2214
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f0a0941

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2216
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2217
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2218
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f0a0941

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 2219
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v3, :cond_1a

    :goto_c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2221
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItemText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0941

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2196
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_17

    .line 2197
    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_16

    .line 2198
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020135

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2200
    :cond_16
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_9

    .line 2202
    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2203
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_9

    :cond_18
    move v0, v2

    .line 2210
    goto/16 :goto_a

    :cond_19
    move v0, v2

    .line 2212
    goto :goto_b

    :cond_1a
    move v1, v2

    .line 2220
    goto :goto_c

    .line 2227
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2228
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2229
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2230
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f0a05d9

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2232
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-nez v0, :cond_1b

    .line 2233
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f0a05d9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 2234
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2236
    :cond_1b
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_1c

    .line 2237
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2238
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2240
    :cond_1c
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_d
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2242
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_1e

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_1e

    :goto_e
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_1d
    move v0, v2

    .line 2240
    goto :goto_d

    :cond_1e
    move v1, v2

    .line 2242
    goto :goto_e

    .line 2282
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_21

    .line 2283
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2284
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2296
    :goto_f
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_1f

    .line 2297
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2298
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2300
    :cond_1f
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_25

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_25

    move v0, v1

    :goto_10
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2302
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_20

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_20

    move v2, v1

    :cond_20
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2304
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f0a05f9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2306
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2307
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2308
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v1, 0x7f0a05f9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 2286
    :cond_21
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_24

    .line 2287
    :cond_22
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_23

    .line 2288
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2290
    :cond_23
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_f

    .line 2292
    :cond_24
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2293
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_f

    :cond_25
    move v0, v2

    .line 2300
    goto :goto_10

    .line 2316
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_26

    .line 2317
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v3, 0x7f02012e

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2318
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2320
    :cond_26
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_27

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_11
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2322
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_28

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v3, :cond_28

    :goto_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_27
    move v0, v2

    .line 2320
    goto :goto_11

    :cond_28
    move v1, v2

    .line 2322
    goto :goto_12

    .line 2127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "doListen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1840
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    if-eqz p1, :cond_1

    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1844
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1845
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$20;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$20;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1879
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1880
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v0, :cond_2

    .line 1881
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f0a05a6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1885
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1886
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1887
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1890
    if-eqz p2, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 14
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1934
    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1935
    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1936
    .local v1, "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1937
    .local v8, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v12, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1938
    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 1944
    .end local v1    # "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 1945
    .local v9, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v12, 0x7f0a05c9

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1946
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1947
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1949
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v12, 0x7f0a05fb

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1950
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1954
    iget-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v11, :cond_3

    .line 1956
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const v12, 0x7f0a05bb

    invoke-virtual {v11, v12}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1959
    :cond_3
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    if-eqz v11, :cond_4

    .line 1960
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v12, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v11, v12}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1961
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v11}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1963
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1966
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1968
    const/4 v0, 0x0

    .local v0, "availableCount":I
    const/4 v4, 0x0

    .local v4, "failedCount":I
    const/4 v2, 0x0

    .line 1970
    .local v2, "connectedCount":I
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1971
    .restart local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    .line 1972
    .local v3, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v8}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1974
    .local v10, "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    invoke-interface {v3, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1975
    iget-object v11, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v12, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1976
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1977
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 1978
    iget-object v11, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v12, 0x1

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1979
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v11, v10}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1980
    :cond_7
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 1981
    add-int/lit8 v4, v4, 0x1

    .line 1982
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1983
    :cond_8
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v11, :cond_5

    .line 1984
    add-int/lit8 v2, v2, 0x1

    .line 1985
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1989
    :cond_9
    iget v11, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v11, :cond_5

    .line 1990
    iget-object v11, v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v12, 0x0

    iput v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1991
    add-int/lit8 v2, v2, 0x1

    .line 1992
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1997
    .end local v3    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10    # "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_a
    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    .line 1998
    .local v7, "numSelectedPeers":I
    const-string v11, "WifiP2pSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "available : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", failed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", connected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", selected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    if-eqz v0, :cond_b

    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-eqz v11, :cond_c

    .line 2004
    :cond_b
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2005
    :cond_c
    if-nez v2, :cond_d

    .line 2006
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2007
    :cond_d
    if-nez v4, :cond_e

    .line 2008
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2010
    :cond_e
    add-int v11, v2, v4

    if-ne v11, v7, :cond_13

    .line 2011
    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v11, :cond_f

    if-ne v4, v7, :cond_f

    .line 2013
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v12, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pSettings$21;

    invoke-direct {v13, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$21;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2022
    :cond_f
    if-lez v2, :cond_10

    .line 2023
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 2025
    :cond_10
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 2026
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 2028
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 2030
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v11, :cond_11

    .line 2031
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 2032
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 2033
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 2043
    :cond_11
    :goto_2
    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v11, :cond_12

    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-nez v11, :cond_12

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2044
    :cond_12
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 2048
    :goto_3
    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v11, :cond_15

    .line 2049
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v12, 0x1

    const v13, 0x7f0a0603

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2050
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2055
    :goto_4
    return-void

    .line 2037
    :cond_13
    sget-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-nez v11, :cond_11

    .line 2038
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 2039
    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_2

    .line 2046
    :cond_14
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_3

    .line 2052
    :cond_15
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2053
    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_4
.end method

.method private showMultiConnectDevices()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1898
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1899
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1900
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1902
    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    .line 1903
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    const v6, 0x7f0a0600

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setTitle(I)V

    .line 1904
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setOrder(I)V

    .line 1905
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1906
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1910
    .local v3, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1911
    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1912
    .local v4, "temp_peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    .line 1913
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1914
    invoke-virtual {v4, v8}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1917
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v4}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1921
    .end local v1    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v3    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "temp_peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    if-lez v0, :cond_3

    .line 1922
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v5, v6}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1924
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1925
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v5, v8}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    .line 1929
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1930
    return-void
.end method


# virtual methods
.method public connectFromMultiView()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1387
    sput-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    .line 1388
    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0601

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1422
    :goto_0
    return v3

    .line 1393
    :cond_0
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1394
    iput-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1395
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1396
    .local v2, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1397
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_1

    .line 1398
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v5, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 1409
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v2    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1410
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    move v3, v4

    .line 1422
    goto :goto_0

    .line 1412
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x10

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 573
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 574
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sput-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    .line 576
    instance-of v10, v0, Landroid/preference/PreferenceActivity;

    if-eqz v10, :cond_2

    move-object v6, v0

    .line 577
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 578
    .local v6, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v10

    if-nez v10, :cond_1

    .line 579
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 581
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 583
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const v11, 0x7f0a05bb

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_name"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, "ssid":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v10, :cond_2

    .line 589
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v9, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 593
    .end local v6    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    .end local v9    # "ssid":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    const-string v10, "PEER_STATE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 594
    const-string v10, "PEER_STATE"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 595
    .local v2, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 599
    .end local v2    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x1020004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    .line 601
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 603
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 606
    .local v7, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v11, 0x7f0a05c8

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 607
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v12}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 608
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 613
    .end local v7    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v3, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 614
    .local v3, "dpi":I
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v10, :cond_5

    const/16 v10, 0xa0

    if-eq v3, v10, :cond_4

    const/16 v10, 0x78

    if-ne v3, v10, :cond_5

    .line 616
    :cond_4
    iput-boolean v12, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 619
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 640
    const-string v10, "AUTO_FINISH"

    invoke-virtual {v4, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 641
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v10, :cond_6

    .line 642
    const-string v10, "AUTO_FINISH"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 643
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 645
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 646
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_7

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f100077

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    .line 649
    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 650
    new-instance v10, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    .line 652
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 653
    const v8, 0x7f0a05d9

    .line 658
    .local v8, "scanTextId":I
    :goto_1
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setText(I)V

    .line 659
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 660
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 661
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 663
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    const v11, 0x7f020059

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 664
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 678
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 684
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-nez v10, :cond_c

    .line 685
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 689
    return-void

    .line 610
    .end local v1    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v3    # "dpi":I
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "scanTextId":I
    :cond_8
    const v10, 0x7f0a05d2

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 654
    .restart local v3    # "dpi":I
    :cond_9
    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v10, :cond_a

    .line 655
    const v8, 0x7f0a05f9

    .restart local v8    # "scanTextId":I
    goto :goto_1

    .line 657
    .end local v8    # "scanTextId":I
    :cond_a
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v10, :cond_b

    const v8, 0x7f0a0941

    .restart local v8    # "scanTextId":I
    :goto_3
    goto :goto_1

    .end local v8    # "scanTextId":I
    :cond_b
    const v8, 0x7f0a05d8

    goto :goto_3

    .line 687
    .restart local v1    # "clickListener":Landroid/view/View$OnClickListener;
    .restart local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "scanTextId":I
    :cond_c
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 941
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 942
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    .line 943
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 1356
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1357
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1358
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    if-eqz v0, :cond_0

    .line 1359
    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBarforK()V

    .line 1362
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1363
    return-void

    .line 1354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 708
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 709
    if-eqz p1, :cond_0

    .line 710
    const-string v0, "isBtnEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 711
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 718
    .local v6, "activity":Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 720
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 731
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 732
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 734
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 735
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    const v1, 0x7f040290

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 736
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 740
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 742
    .local v7, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v0, "IS_IN_MULTICONNECT"

    sget-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 745
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 765
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v8

    .line 785
    .local v8, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsEmerMode:Z

    .line 792
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 793
    const-string v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 795
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04028d

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f1005af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f1005ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    .line 799
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f1005b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemText:Landroid/view/View;

    .line 800
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    .line 801
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f1005ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemText:Landroid/view/View;

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f100637

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItem:Landroid/view/View;

    .line 806
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f100638

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItemText:Landroid/widget/TextView;

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->scanMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_6

    .line 850
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_4

    .line 853
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 862
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z

    .line 863
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z

    if-eqz v0, :cond_5

    .line 864
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 865
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 880
    :cond_5
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 899
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 937
    return-void

    .line 857
    :cond_6
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const v6, 0x7f0a08f5

    const/4 v0, 0x0

    const v9, 0x7f0a08f4

    .line 1427
    if-ne p1, v7, :cond_1

    .line 1428
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a05d9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a05eb

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1435
    .local v0, "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;

    .line 1590
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 1438
    :cond_1
    if-ne p1, v8, :cond_2

    .line 1439
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a05d8

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a05fa

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1446
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1450
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 1451
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a05d1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a05e4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1457
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1459
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    .line 1460
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a05d3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a05f0

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1465
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1467
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1469
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040292

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1470
    .local v2, "layout":Landroid/view/View;
    const v3, 0x7f10063a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a05dc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1471
    const v3, 0x7f1005d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    const v3, 0x7f10063b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a05b0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1473
    const v3, 0x7f1005d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a01c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$17;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1483
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1485
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/view/View;
    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 1503
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a05c6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a1446

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a1448

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$18;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1533
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1547
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1587
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1125
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "DISABLE_MULTICONNECT"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisableMulticonnect:Z

    .line 1126
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisableMulticonnect:Z

    if-eqz v5, :cond_0

    .line 1127
    const-string v5, "DISABLE_MULTICONNECT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1129
    :cond_0
    const v5, 0x7f0a05d8

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v9

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    .line 1131
    const v3, 0x7f0a05f8

    .line 1132
    .local v3, "msgId":I
    const v1, 0x7f020132

    .line 1134
    .local v1, "iconID":I
    sget v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    if-eq v5, v10, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v5, :cond_2

    .line 1135
    :cond_1
    const v3, 0x7f0a05d9

    .line 1136
    const v1, 0x7f020130

    .line 1138
    :cond_2
    const v5, 0x7f0a05a3

    invoke-interface {p1, v7, v11, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    .line 1139
    const v5, 0x7f0a11e0

    invoke-interface {p1, v7, v10, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    .line 1144
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1145
    const v4, 0x7f0a1449

    .line 1149
    .local v4, "renameTitleId":I
    :goto_2
    invoke-interface {p1, v7, v8, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    .line 1150
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v5

    if-nez v5, :cond_9

    move v5, v6

    :goto_3
    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const v9, 0x7f02012f

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1153
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1155
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_3

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v9, 0x7f100077

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    .line 1157
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v5, :cond_a

    :cond_4
    move v5, v6

    :goto_4
    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1162
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-nez v5, :cond_b

    .line 1163
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1164
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1165
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1172
    :goto_5
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsEmerMode:Z

    if-ne v5, v6, :cond_5

    .line 1173
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 1176
    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v5, :cond_6

    .line 1177
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    const v9, 0x7f02012e

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1178
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    const v9, 0x7f02012d

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1180
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v5, :cond_c

    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_6
    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1182
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v5, :cond_d

    move v5, v6

    :goto_7
    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1185
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pRename:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v9, :cond_e

    sget-boolean v9, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v9, :cond_e

    :goto_8
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1190
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1191
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1196
    :goto_9
    return-void

    .end local v1    # "iconID":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "msgId":I
    .end local v4    # "renameTitleId":I
    :cond_7
    move v5, v7

    .line 1118
    goto/16 :goto_0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "WifiP2pSettings"

    const-string v9, "Fragment not attached to Activity"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1147
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "iconID":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "msgId":I
    :cond_8
    const v4, 0x7f0a144a

    .restart local v4    # "renameTitleId":I
    goto/16 :goto_2

    :cond_9
    move v5, v7

    .line 1150
    goto/16 :goto_3

    :cond_a
    move v5, v7

    .line 1157
    goto/16 :goto_4

    .line 1167
    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1168
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_c
    move v5, v7

    .line 1180
    goto :goto_6

    :cond_d
    move v5, v7

    .line 1182
    goto :goto_7

    :cond_e
    move v6, v7

    .line 1185
    goto :goto_8

    .line 1192
    :cond_f
    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v5, :cond_10

    .line 1193
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_9

    .line 1195
    :cond_10
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v5, :cond_11

    move v5, v8

    :goto_a
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_9

    :cond_11
    const/4 v5, 0x2

    goto :goto_a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 694
    const v1, 0x7f04028c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 697
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10057f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 699
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mButtonBar:Landroid/widget/RelativeLayout;

    .line 703
    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1050
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1051
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "IS_IN_MULTICONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1054
    sput-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1055
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1056
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "IS_IN_MULTICONNECT"

    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1057
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1058
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 1605
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1608
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1279
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1207
    :sswitch_0
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v0, :cond_1

    .line 1208
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_0
    :goto_2
    move v0, v11

    .line 1219
    goto :goto_1

    .line 1210
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_2

    .line 1213
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v0, :cond_3

    .line 1214
    invoke-direct {p0, v11, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_2

    .line 1215
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v0, :cond_0

    .line 1216
    invoke-direct {p0, v6, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_2

    .line 1221
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1222
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_4
    :goto_3
    move v0, v11

    .line 1228
    goto :goto_1

    .line 1223
    :cond_5
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_4

    .line 1224
    sput-boolean v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1225
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1226
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    goto :goto_3

    .line 1230
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1232
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.DEVICE_NAME_DIALOG"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x800000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startActivity(Landroid/content/Intent;)V

    .end local v10    # "intent":Landroid/content/Intent;
    :cond_6
    move v0, v11

    .line 1236
    goto :goto_1

    .line 1238
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    .line 1239
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a05de

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_4
    move v0, v11

    .line 1247
    goto :goto_1

    .line 1245
    :cond_7
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a05de

    const/4 v7, -0x1

    move-object v3, p0

    move-object v4, p0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_4

    .line 1249
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->connectFromMultiView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1250
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    :cond_8
    move v0, v11

    .line 1252
    goto/16 :goto_1

    .line 1254
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1255
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1257
    iput-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1258
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1259
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    move v0, v11

    .line 1260
    goto/16 :goto_1

    .line 1262
    :sswitch_6
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_9

    .line 1263
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1264
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    iput-boolean v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1267
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1268
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    move v0, v11

    .line 1269
    goto/16 :goto_1

    .line 1272
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 1273
    goto/16 :goto_1

    .line 1274
    :catch_0
    move-exception v9

    .line 1275
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string v0, "WifiP2pSettings"

    const-string v1, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x102002c -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1062
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1064
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1065
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1067
    .local v1, "isScreenOn":Z
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 1069
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1070
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1073
    :cond_0
    if-eqz v1, :cond_1

    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z

    if-eqz v3, :cond_1

    .line 1074
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 1076
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "SAMSUNG_P2P"

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1078
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1079
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "IS_INVITED"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1080
    const-string v3, "IS_MULTICONNECT"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1081
    const-string v3, "IS_IN_MULTICONNECT"

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1082
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1084
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1086
    if-eqz v1, :cond_5

    .line 1087
    invoke-direct {p0, v6, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1089
    sput-boolean v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1090
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    if-eqz v3, :cond_3

    .line 1092
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_3

    .line 1093
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1094
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1104
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 1106
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 1108
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    if-eqz v3, :cond_4

    .line 1110
    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1111
    iput-boolean v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z

    .line 1113
    :cond_4
    return-void

    .line 1098
    .restart local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1099
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 1100
    iput-boolean v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 13
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1611
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1612
    const-string v10, "WifiP2pSettings"

    const-string v11, "return, P2P is not enabled..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :goto_0
    return-void

    .line 1616
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 1617
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1619
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1620
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1621
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1622
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1624
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v10, :cond_2

    .line 1625
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 1629
    :cond_2
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v10, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v10

    if-nez v10, :cond_12

    .line 1630
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v11, 0x7f0a05c8

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1631
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setEnabled(Z)V

    .line 1632
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1633
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1635
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1636
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1757
    :cond_5
    :goto_1
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 1640
    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1642
    const/4 v0, 0x0

    .local v0, "av_cnt":I
    const/4 v1, 0x0

    .line 1643
    .local v1, "busy_cnt":I
    const/4 v5, 0x0

    .line 1645
    .local v5, "hasInvited":Z
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v11, 0x7f0a05ca

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1646
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1650
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1651
    .local v7, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v10, :cond_8

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1653
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1654
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1655
    .local v2, "busy_temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v2, v10}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1656
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1657
    add-int/lit8 v1, v1, 0x1

    .line 1667
    .end local v2    # "busy_temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_9
    :goto_3
    iget v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1668
    const/4 v5, 0x1

    goto :goto_2

    .line 1660
    :cond_a
    new-instance v9, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1661
    .local v9, "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v0, v0, 0x1

    .line 1662
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    .line 1663
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v9}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1664
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v11, v9, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 1672
    .end local v7    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v9    # "temp":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    :cond_b
    if-lez v1, :cond_c

    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_d

    .line 1673
    :cond_c
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1675
    :cond_d
    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_e

    .line 1676
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    .line 1678
    :cond_e
    if-eqz v5, :cond_10

    .line 1679
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1680
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1681
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1682
    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_f

    .line 1683
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v10, v11, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1684
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1685
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1686
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1687
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1689
    :cond_f
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x1

    const v12, 0x7f0a0603

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1690
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 1692
    :cond_10
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1693
    iget-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v10, :cond_11

    .line 1694
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1696
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1697
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1700
    :cond_11
    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v10, :cond_5

    .line 1701
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto/16 :goto_1

    .line 1705
    .end local v0    # "av_cnt":I
    .end local v1    # "busy_cnt":I
    .end local v5    # "hasInvited":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_12
    const-string v10, "WifiP2pSettings"

    const-string v11, "show connected devices"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1707
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1708
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1713
    sget-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v10, :cond_13

    .line 1714
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1715
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1716
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1717
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1720
    :cond_13
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v11, 0x7f0a05c9

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1721
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1722
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1724
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 1725
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1726
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1727
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1728
    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1730
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v10, :cond_5

    .line 1731
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1732
    const-string v10, "WifiP2pSettings"

    const-string v11, "I am GO"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1735
    .local v3, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v10, 0x0

    iput v10, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1736
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v12, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 1739
    .end local v3    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_14
    sget-object v10, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1740
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1741
    .local v4, "convertedAddr":Ljava/lang/String;
    if-nez v4, :cond_15

    const-string v4, ""

    .line 1742
    :cond_15
    const-string v10, "WifiP2pSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "I am GC, my GO addr : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", converted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1746
    .restart local v7    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1748
    :cond_17
    const/4 v10, 0x0

    iput v10, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1749
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v12, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1284
    instance-of v4, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 1285
    check-cast v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1286
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v4, :cond_4

    .line 1287
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 1307
    :cond_0
    :goto_0
    instance-of v4, p2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v4, :cond_2

    move-object v2, p2

    .line 1308
    check-cast v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 1309
    .local v2, "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1310
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    sget v5, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v4, v5, :cond_7

    .line 1311
    invoke-virtual {v2, v7}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1312
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 1325
    :cond_1
    :goto_1
    const-string v4, "WifiP2pSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# of Selected Peers : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    .end local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    if-ne p2, v4, :cond_3

    .line 1328
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sget v5, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v4, v5, :cond_a

    .line 1329
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    .line 1330
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 1349
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 1288
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1289
    :cond_5
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v5, v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a05d5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1293
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1294
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_0

    .line 1295
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v4, v5, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1314
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .restart local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_7
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1315
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1317
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4, v8}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1321
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1322
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4, v7}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->setChecked(Z)V

    .line 1323
    :cond_9
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    .line 1333
    .end local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_a
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 1334
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 1335
    .local v3, "temp":Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v4, :cond_b

    move-object v2, v3

    .line 1336
    check-cast v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 1337
    .restart local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v4}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1338
    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1339
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1333
    .end local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1341
    .restart local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_c
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, v2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    .line 1345
    .end local v2    # "peer":Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
    .end local v3    # "temp":Landroid/preference/Preference;
    :cond_d
    const-string v4, "WifiP2pSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelectAll, # of Selected Peers : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1200
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1201
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 948
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 949
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 951
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 953
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 954
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 962
    :cond_1
    const-string v0, "WifiP2pSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), mAutoFinish : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", p2p enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", p2p connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 967
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sendP2pSettingsStartedBroadcast(Z)V

    .line 968
    sput-boolean v9, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 971
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_2

    .line 972
    const/4 v0, 0x6

    sput v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 975
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "SAMSUNG_P2P"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "IS_IN_MULTICONNECT"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 979
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_4

    .line 980
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 983
    :cond_4
    iput-boolean v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 985
    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTalkback:Z

    .line 988
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-direct {v0, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1007
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_9

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "IS_INVITED"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "IS_MULTICONNECT"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1012
    sput-boolean v8, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1014
    :cond_6
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V

    .line 1026
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v0, :cond_8

    .line 1028
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1035
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_a

    .line 1036
    iput-boolean v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1039
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1041
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    if-eqz v0, :cond_9

    .line 1042
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v2, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V

    .line 1043
    iput-boolean v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsSetTimer:Z

    .line 1046
    :cond_9
    return-void

    .line 958
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1030
    :catch_0
    move-exception v7

    .line 1031
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "WifiP2pSettings"

    const-string v2, "IllegalStateException: Recursive entry to executePendingTransactions during calling finish method to close the fragment."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1038
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_a
    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1596
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1599
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_1
    const-string v0, "isBtnEnabled"

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1602
    return-void
.end method
