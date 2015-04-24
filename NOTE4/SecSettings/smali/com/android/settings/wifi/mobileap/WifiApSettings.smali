.class public Lcom/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# static fields
.field private static final DBG:Z

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isNoHotSpotModeWarningShown:Z

.field private isOverflowMenuOpen:Z

.field private isRoaming:Z

.field private key_compare:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;

.field private mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsFromHelp:Z

.field private mIsTablet:Z

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;

.field public mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misLightTheme:Z

.field private noHotspotModeWarningDialog:Landroid/app/AlertDialog;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private toast:Landroid/widget/Toast;

.field private wps_tether_pin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 162
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 164
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 165
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 166
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 167
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 180
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 182
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    .line 200
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 226
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 231
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 232
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 233
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 236
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    .line 521
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1103
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1138
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1358
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$23;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/PinDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mPinDialog:Lcom/android/settings/wifi/mobileap/PinDialog;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/mobileap/WifiApSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "x3"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSettings;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .param p1, "oldConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1617
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-ne v1, v2, :cond_0

    .line 1619
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v2, :cond_0

    .line 1620
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v1, v2, :cond_0

    .line 1621
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v1, p3, :cond_0

    .line 1622
    packed-switch p3, :pswitch_data_0

    .line 1638
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1627
    :pswitch_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private createHelpStep1Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1667
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 1668
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1669
    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1671
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400dd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1673
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1674
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1685
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1686
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1687
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1688
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1690
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 1300
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1301
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1302
    const/4 v0, -0x1

    .line 1303
    .local v0, "mRvfMode":I
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1305
    :cond_0
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1398
    sparse-switch p1, :sswitch_data_0

    .line 1412
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1400
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1402
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1404
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1406
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1408
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1410
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1398
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/16 v0, 0x4b0

    .line 1416
    packed-switch p1, :pswitch_data_0

    .line 1430
    :goto_0
    :pswitch_0
    return v0

    .line 1418
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1420
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 1422
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 1426
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 1428
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 1416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1452
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1462
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 1483
    :cond_1
    :goto_0
    return-void

    .line 1463
    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1470
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 1472
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1473
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 1474
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v1, :cond_1

    .line 1475
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1478
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v1, :cond_1

    .line 1479
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1309
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1310
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0xc5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1311
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1315
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 1316
    .local v1, "ret":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1318
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 1319
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v2, :cond_0

    .line 1320
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 1324
    :cond_0
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1438
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1440
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1442
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1443
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1445
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1448
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1573
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1576
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1578
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1581
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1582
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 1583
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1584
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0a0503

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1587
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1588
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1589
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1591
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 1614
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1594
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1595
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1597
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1599
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1600
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1601
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0a04f8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1603
    const-string v0, "VZW"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1604
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1605
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    .line 1611
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1612
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0

    .line 1607
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setMaxClient(I)V

    goto :goto_1
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 1435
    return-void
.end method

.method private showInvalidActionToast()V
    .locals 3

    .prologue
    const v2, 0x7f0a1758

    .line 1713
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    .line 1719
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1722
    :cond_0
    return-void

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    .prologue
    .line 1327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1328
    .local v0, "noHotspotModeWarning":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0550

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1329
    const v1, 0x7f0a0557

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1330
    const v1, 0x7f0a08f4

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$20;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1336
    const v1, 0x7f0a08f5

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$21;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1345
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    .line 1355
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1356
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 448
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v10, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;>;"
    const/16 v17, 0x0

    .line 451
    .local v17, "staList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v17

    .line 456
    :cond_0
    const/4 v15, 0x0

    .line 457
    .local v15, "num":I
    if-eqz v17, :cond_1

    .line 458
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v15, v2, 0x12

    .line 459
    const-string v2, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "staList.length() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_1
    if-nez v15, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->requestFocus()Z

    .line 466
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 467
    if-eqz v17, :cond_a

    if-lez v15, :cond_a

    .line 468
    const/4 v7, 0x0

    .line 469
    .local v7, "buf":Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 470
    .local v18, "tok":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 473
    .local v19, "tokLength":I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v21, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x2000

    move/from16 v0, v21

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v7    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "bufReadLine":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 475
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 476
    .local v11, "dhcpLeaseInfo":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v15, :cond_3

    .line 477
    array-length v2, v11

    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v2, v0, :cond_6

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_6

    .line 479
    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    aget-object v2, v18, v13

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v21, v18, v13

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 481
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 482
    const v2, 0x7f0a0501

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "deviceName":Ljava/lang/String;
    :goto_2
    aget-object v2, v18, v13

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "mac":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 488
    .local v5, "ip":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 490
    .local v6, "connectTime":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v1, "device":Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 497
    .end local v1    # "device":Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v3    # "deviceName":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "connectTime":Ljava/lang/String;
    .end local v9    # "bufReadLine":Ljava/lang/String;
    .end local v11    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v13    # "i":I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 498
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    .local v12, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    if-eqz v7, :cond_4

    .line 504
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 509
    .end local v12    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 510
    .local v20, "wifiApConnectedDevices":Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 484
    .end local v7    # "buf":Ljava/io/BufferedReader;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "wifiApConnectedDevices":Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v9    # "bufReadLine":Ljava/lang/String;
    .restart local v11    # "dhcpLeaseInfo":[Ljava/lang/String;
    .restart local v13    # "i":I
    :cond_5
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v3    # "deviceName":Ljava/lang/String;
    goto :goto_2

    .line 476
    .end local v3    # "deviceName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 503
    .end local v11    # "dhcpLeaseInfo":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_7
    if-eqz v8, :cond_8

    .line 504
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    move-object v7, v8

    .line 507
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 505
    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 506
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 508
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 505
    .end local v9    # "bufReadLine":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 506
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 499
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 500
    .local v12, "e":Ljava/lang/NumberFormatException;
    :goto_6
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 503
    if-eqz v7, :cond_4

    .line 504
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 505
    :catch_4
    move-exception v12

    .line 506
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 502
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 503
    :goto_7
    if-eqz v7, :cond_9

    .line 504
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 507
    :cond_9
    :goto_8
    throw v2

    .line 505
    :catch_5
    move-exception v12

    .line 506
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 513
    .end local v7    # "buf":Ljava/io/BufferedReader;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v18    # "tok":[Ljava/lang/String;
    .end local v19    # "tokLength":I
    :cond_a
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 514
    .local v16, "pf":Landroid/preference/Preference;
    const v2, 0x7f0a051a

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    .line 519
    .end local v16    # "pf":Landroid/preference/Preference;
    :cond_b
    return-void

    .line 502
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v18    # "tok":[Ljava/lang/String;
    .restart local v19    # "tokLength":I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_7

    .line 499
    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v12

    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_6

    .line 497
    :catch_7
    move-exception v12

    goto/16 :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x500

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 731
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    .line 733
    .local v0, "isKmodelUI":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 735
    .local v1, "mWidth":I
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 736
    if-eqz p1, :cond_5

    .line 737
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f020141

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 738
    if-nez v0, :cond_3

    .line 739
    if-ge v1, v6, :cond_2

    .line 740
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 793
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 794
    if-eqz p1, :cond_a

    .line 795
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f0204ad

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 796
    if-nez v0, :cond_8

    .line 797
    if-ge v1, v6, :cond_7

    .line 798
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 818
    :cond_1
    :goto_1
    return-void

    .line 742
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 745
    :cond_3
    if-ge v1, v6, :cond_4

    .line 746
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 748
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 752
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 753
    if-nez v0, :cond_6

    .line 754
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 756
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 800
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 803
    :cond_8
    if-ge v1, v6, :cond_9

    .line 804
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 806
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 810
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 811
    if-nez v0, :cond_b

    .line 812
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 814
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 6

    .prologue
    .line 540
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 544
    :try_start_0
    const-string v2, "SPRINT"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    const v2, 0x7f0a0523

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "WPA"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 575
    const-string v2, "VZW"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v3, 0x7f0a052a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 584
    :cond_1
    return-void

    .line 548
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 549
    const v2, 0x7f0a0523

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "WPA2"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 552
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    const v2, 0x7f0a0522

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v1    # "text":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_7

    .line 556
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 558
    :cond_5
    const v2, 0x7f0a0525

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 561
    .end local v1    # "text":Ljava/lang/String;
    :cond_6
    const v2, 0x7f0a0524

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 565
    .end local v1    # "text":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 567
    :cond_8
    const v2, 0x7f0a0523

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 570
    .end local v1    # "text":Ljava/lang/String;
    :cond_9
    const v2, 0x7f0a0522

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "#2898c4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 578
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/util/UnknownFormatConversionException;
    const-string v2, "WifiApSettings"

    invoke-virtual {v0}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public createHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1693
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1695
    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1697
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    .line 1698
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400fa

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1699
    .local v0, "bView":Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1700
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1701
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1702
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1703
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1704
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 1706
    .end local v0    # "bView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 328
    const v4, 0x7f0700f7

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 331
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v4, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 347
    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 348
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v4, :cond_1

    const-string v4, "TMO"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, "NEWCO"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v7, 0x7f0205ce

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setIcon(I)V

    .line 353
    :cond_3
    const-string v4, "MTR"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 354
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v4, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 356
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "DONT_DISPLAY_MPCS_WARNING"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_e

    move v1, v5

    .line 357
    .local v1, "dontDisplayMpcsWarning":Z
    :goto_0
    if-nez v1, :cond_5

    .line 358
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 362
    .end local v1    # "dontDisplayMpcsWarning":Z
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 363
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 365
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 366
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 368
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 369
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    .line 370
    iput-object v11, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->wps_tether_pin:Ljava/lang/String;

    .line 371
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_f

    .line 372
    const-string v4, "enable_switch_wifi_ap"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 373
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v4, v0, v7, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 374
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 393
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 394
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    .line 395
    const-string v4, "wifi_ap_connected_devices"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 396
    const-string v4, "wifi_ap_howto_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 397
    const-string v4, "wifi_ap_howto"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 398
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 399
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    .line 400
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setSelectable(Z)V

    .line 401
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v7, 0x7f0401c8

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 402
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 407
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    .line 408
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 410
    const-string v4, "MTR"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 411
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 412
    .local v2, "netType":I
    const/16 v4, 0xd

    if-eq v2, v4, :cond_7

    .line 414
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 415
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 416
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 420
    .end local v2    # "netType":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 424
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v4, :cond_9

    .line 425
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 426
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 429
    :cond_9
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v4, :cond_b

    const-string v4, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 431
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_b

    .line 432
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v4, :cond_10

    .line 433
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 440
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v4, :cond_d

    const-string v4, "VZW"

    const-string v5, "ALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SPRINT"

    const-string v5, "ALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 442
    :cond_c
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v11, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 444
    :cond_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 445
    return-void

    :cond_e
    move v1, v6

    .line 356
    goto/16 :goto_0

    .line 376
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f0058

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 377
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v3, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 378
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 380
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 385
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-direct {v4, v0, v7, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 386
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 388
    const-string v4, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v7, 0x7f0a0556

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 435
    .end local v3    # "padding":I
    :cond_10
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1369
    const-string v1, "WifiApSettings"

    const-string v2, "WifiApSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    if-nez p1, :cond_0

    .line 1371
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v1, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 1376
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1379
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1383
    const/4 v0, 0x0

    .line 1385
    .local v0, "wifiSavedState":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1389
    :goto_1
    if-ne v0, v3, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1391
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 725
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 726
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 727
    return-void

    .line 725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 274
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 277
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_3

    const-string v1, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SPRINT"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    .line 280
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsHelpFromTetherSettings:Z

    .line 289
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_2

    .line 290
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 309
    const-string v1, "VZW"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SPRINT"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 320
    :cond_2
    :goto_1
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromHelp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 323
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 324
    return-void

    .line 282
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 284
    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    goto :goto_0

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 317
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21
    .param p1, "dialogId"    # I

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 950
    .local v14, "ctx":Landroid/content/Context;
    new-instance v14, Landroid/view/ContextThemeWrapper;

    .end local v14    # "ctx":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004e

    invoke-direct {v14, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 952
    .restart local v14    # "ctx":Landroid/content/Context;
    const-string v2, "layout_inflater"

    invoke-virtual {v14, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 956
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 957
    const-string v2, "VZW"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    new-instance v2, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 961
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 1100
    :goto_1
    return-object v2

    .line 960
    :cond_0
    new-instance v2, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    goto :goto_0

    .line 965
    :cond_1
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 967
    const v2, 0x7f040274

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 968
    .local v15, "customView":Landroid/view/View;
    const v2, 0x7f1005d2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 969
    .local v17, "lv":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v20

    .line 971
    .local v20, "timeoutItems":[Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 974
    .local v10, "adapter":Landroid/widget/ListAdapter;
    new-instance v10, Landroid/widget/ArrayAdapter;

    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    const v2, 0x7f040275

    move-object/from16 v0, v20

    invoke-direct {v10, v14, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 983
    .restart local v10    # "adapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 984
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 987
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 996
    new-instance v19, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    .local v19, "timeoutDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a04fb

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ce

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1004
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    .line 1006
    .end local v10    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "customView":Landroid/view/View;
    .end local v17    # "lv":Landroid/widget/ListView;
    .end local v19    # "timeoutDialog":Landroid/app/AlertDialog$Builder;
    .end local v20    # "timeoutItems":[Ljava/lang/CharSequence;
    :cond_2
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1007
    const-string v2, "WifiApSettings"

    const-string v3, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v9, "OpenSecurityWarningDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0550

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1010
    const v2, 0x7f040271

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 1011
    .restart local v15    # "customView":Landroid/view/View;
    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_3

    .line 1013
    const v2, 0x7f1005ce

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1015
    :cond_3
    const v2, 0x7f1005cf

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1016
    .local v12, "bChangeSecurity":Landroid/widget/Button;
    const v2, 0x7f1005d0

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1017
    .local v13, "bContinue":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    const v2, 0x7f0a08f5

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1043
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    .line 1045
    .end local v9    # "OpenSecurityWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v12    # "bChangeSecurity":Landroid/widget/Button;
    .end local v13    # "bContinue":Landroid/widget/Button;
    .end local v15    # "customView":Landroid/view/View;
    :cond_4
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 1046
    const v2, 0x7f040270

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f1005cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 1048
    .local v18, "not_show_again":Landroid/widget/CheckBox;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v11, "b":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a017f

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1051
    const v2, 0x7f0a08f4

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1063
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    .line 1065
    .end local v11    # "b":Landroid/app/AlertDialog$Builder;
    .end local v18    # "not_show_again":Landroid/widget/CheckBox;
    :cond_5
    const/16 v2, 0x38

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1100
    :cond_6
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1075
    :cond_7
    const/16 v2, 0x39

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    .line 1084
    const/16 v2, 0x3a

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    .line 1093
    const/16 v2, 0x3b

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 652
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    .line 654
    .local v0, "isKmodelUI":Z
    if-eqz v0, :cond_4

    .line 655
    const v6, 0x7f0a04f7

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 656
    const v6, 0x7f0a04f4

    invoke-interface {p1, v5, v7, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 675
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v6, :cond_5

    .line 677
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 678
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f0204ad

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 681
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 690
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v6, :cond_0

    const-string v6, "TMO"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "NEWCO"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 691
    const v6, 0x7f0a04f5

    invoke-interface {p1, v5, v8, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 692
    .local v3, "menuTimeOut":Landroid/view/MenuItem;
    const v6, 0x7f0204b2

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 693
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 696
    .end local v3    # "menuTimeOut":Landroid/view/MenuItem;
    :cond_0
    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 697
    const/4 v6, 0x4

    const v7, 0x7f0a0535

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 698
    .local v2, "menuLanSettings":Landroid/view/MenuItem;
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 699
    const v6, 0x7f0204af

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 701
    .end local v2    # "menuLanSettings":Landroid/view/MenuItem;
    :cond_1
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-nez v6, :cond_2

    .line 702
    const v6, 0x7f0a1653

    invoke-interface {p1, v5, v9, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 703
    .local v1, "menuHelp":Landroid/view/MenuItem;
    const v6, 0x7f0201f7

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 704
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 707
    .end local v1    # "menuHelp":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v6, :cond_3

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_7

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 711
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 712
    return-void

    .line 658
    :cond_4
    const v6, 0x7f0a04f6

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 659
    const v6, 0x7f0a04f3

    invoke-interface {p1, v5, v7, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 682
    :cond_5
    if-nez v0, :cond_6

    .line 683
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 684
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 686
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 687
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_7
    move v4, v5

    .line 708
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 640
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 644
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 646
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 647
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 827
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 828
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 831
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v0, :cond_1

    .line 832
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 936
    :goto_0
    return v0

    .line 836
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 936
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 838
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 839
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 840
    iput-boolean v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 841
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 842
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    :cond_4
    move v0, v12

    .line 845
    goto :goto_0

    .line 847
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v12

    .line 849
    goto :goto_0

    .line 851
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_7

    .line 852
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_5

    .line 853
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 857
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showInvalidActionToast()V

    :cond_6
    :goto_2
    move v0, v12

    .line 868
    goto :goto_0

    .line 860
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_8

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a04f6

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 865
    :cond_8
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    move v7, v6

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 871
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_9

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0535

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    move v0, v12

    .line 878
    goto/16 :goto_0

    .line 876
    :cond_9
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p0

    move v7, v6

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_3

    .line 882
    :pswitch_4
    const/4 v10, 0x0

    .line 885
    .local v10, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 886
    if-eqz v10, :cond_a

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    if-ne v0, v4, :cond_a

    .line 887
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v11, "pickIntent":Landroid/content/Intent;
    const-string v0, "helphub:section"

    const-string v1, "tethering_vzw"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 902
    .end local v11    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 903
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 890
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a
    if-eqz v10, :cond_2

    :try_start_1
    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 898
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .restart local v11    # "pickIntent":Landroid/content/Intent;
    const-string v0, "helphub:appid"

    const-string v1, "tethering"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 836
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 627
    const-string v0, "VZW"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 630
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 631
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 944
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isOverflowMenuOpen:Z

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 719
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 720
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 588
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 589
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 592
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    const-string v0, "VZW"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 606
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v0, :cond_4

    .line 607
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 608
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 610
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-ne v0, v3, :cond_5

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->noHotspotModeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 614
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->showSoftInput()V

    .line 618
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 822
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 823
    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 8

    .prologue
    .line 1505
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, "staList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1507
    .local v1, "num":I
    if-eqz v2, :cond_0

    .line 1508
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v1, v5, 0x12

    .line 1509
    const-string v5, "WifiApSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllConnectedDevice(), num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_0
    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 1513
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "tok":[Ljava/lang/String;
    array-length v4, v3

    .line 1515
    .local v4, "tokLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1516
    aget-object v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    .end local v0    # "i":I
    .end local v3    # "tok":[Ljava/lang/String;
    .end local v4    # "tokLength":I
    :cond_1
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1495
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1496
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v0, "b":Landroid/os/Bundle;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1498
    const-string v2, "mac"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1500
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 1501
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1502
    :cond_0
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1529
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1531
    return-void

    .line 1529
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 0
    .param p1, "helpDialog"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 1709
    invoke-virtual {p1}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1710
    return-void
.end method
