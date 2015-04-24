.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field mAlertDlg:Landroid/app/AlertDialog;

.field private mAttentionView:Landroid/webkit/WebView;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mFromSearch:Z

.field private mIsFromHelp:Z

.field private mIsLightTheme:Z

.field private mIsRaceCondition:Z

.field private mIsTablet:Z

.field private mMassStorageActive:Z

.field private mNcmEnabled:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTargetPreferece:Landroid/preference/CheckBoxPreference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTetheredData:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private wifiAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 170
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsFromHelp:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    .line 197
    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 219
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherEnabling:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    .line 221
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsTablet:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsLightTheme:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 227
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    .line 228
    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    .line 233
    iput v2, p0, Lcom/android/settings/TetherSettings;->mTetheredData:I

    .line 235
    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 440
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 812
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/TetherSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/settings/TetherSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/TetherSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 1843
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1844
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1845
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1850
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1844
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1843
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1850
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 415
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 418
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->generateDefaultSSID()V

    .line 438
    :cond_0
    return-void
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1400
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSPR()Z
    .locals 2

    .prologue
    .line 1836
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1557
    const-string v4, "usb"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1568
    .local v1, "um":Landroid/hardware/usb/UsbManager;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1570
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1571
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0a081a

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1579
    :goto_0
    return-void

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_enabled"

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v6, v2, :cond_1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1966
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1968
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1969
    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    .line 1968
    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    .line 1969
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 1408
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1409
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1414
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1418
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1429
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1420
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1426
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1523
    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 1553
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1554
    return-void

    .line 1525
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v2, :cond_1

    .line 1526
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1527
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_0

    .line 1528
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 1533
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1534
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1535
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 1536
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1537
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0a0157

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1538
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 1541
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1542
    :cond_3
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0a0821

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->checkBluetoothVisibility()V

    goto :goto_0

    .line 1547
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 1523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 1294
    const/4 v6, 0x0

    .line 1295
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 1296
    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 1297
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 1296
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1295
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 1301
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1302
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 1363
    :goto_2
    return-void

    .line 1304
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 1305
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0158

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1361
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "bluetooth_tethering_enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1308
    :cond_5
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0157

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3

    .line 1312
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 1313
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const-string v18, "bluetooth.pan.tether_on"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1317
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 1318
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_7

    .line 1319
    const v17, 0x7f0a0823

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1322
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1334
    .end local v16    # "summary":Ljava/lang/String;
    :goto_5
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    goto/16 :goto_3

    .line 1323
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_8

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0822

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1326
    :cond_8
    if-eqz v6, :cond_9

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0826

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1329
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0821

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1346
    .end local v8    # "bluetoothTethered":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const-string v18, "bluetooth.pan.tether_on"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a0825

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 1361
    .end local v7    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 1061
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1064
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1067
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isUsbTetheringEnabled"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1076
    .local v3, "isUsbTetheringEnabled":I
    if-nez v3, :cond_4

    .line 1077
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1078
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1087
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1089
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_6

    .line 1090
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0a0559

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1096
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v11, "isWifiTetheringEnabled"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1097
    .local v4, "isWifiTetheringEnabled":I
    if-nez v4, :cond_7

    .line 1098
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v9, :cond_1

    .line 1099
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1100
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1103
    :cond_1
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v9, :cond_2

    .line 1104
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1105
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v9, v8}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 1160
    :cond_2
    :goto_2
    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "false"

    aput-object v7, v5, v8

    .line 1161
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v10, "isBluetoothEnabled"

    invoke-static {v7, v9, v10, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1162
    .local v1, "isBluetoothEnabled":I
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isBluetoothTetheringEnabled"

    invoke-static {v7, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1165
    .local v2, "isBluetoothTetheringEnabled":I
    if-eqz v1, :cond_3

    if-nez v2, :cond_e

    .line 1167
    :cond_3
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1168
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const-string v9, "bluetooth.pan.tether_on"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1169
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f0a0825

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1175
    :goto_3
    return-void

    .line 1079
    .end local v1    # "isBluetoothEnabled":I
    .end local v2    # "isBluetoothTetheringEnabled":I
    .end local v4    # "isWifiTetheringEnabled":I
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/TetherSettings;->mUsbTetherEnabling:Z

    if-ne v9, v7, :cond_5

    .line 1080
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1081
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1084
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1092
    :cond_6
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0a055a

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    .line 1109
    .restart local v4    # "isWifiTetheringEnabled":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a

    move v0, v7

    .line 1112
    .local v0, "isAirplaneMode":Z
    :goto_4
    const/4 v6, 0x1

    .line 1113
    .local v6, "wifiHotspotAvailable":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "persist.sys.wifi_lock"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "wifi_lock.enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1115
    const/4 v6, 0x0

    .line 1118
    :cond_8
    if-nez v0, :cond_b

    if-eqz v6, :cond_b

    .line 1120
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    .line 1121
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1124
    :cond_9
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v9, :cond_2

    .line 1125
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .end local v0    # "isAirplaneMode":Z
    .end local v6    # "wifiHotspotAvailable":Z
    :cond_a
    move v0, v8

    .line 1109
    goto :goto_4

    .line 1129
    .restart local v0    # "isAirplaneMode":Z
    .restart local v6    # "wifiHotspotAvailable":Z
    :cond_b
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_c

    .line 1130
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1133
    :cond_c
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v9, :cond_d

    .line 1134
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1137
    :cond_d
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v9, :cond_2

    .line 1138
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1139
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v9, v8}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1172
    .end local v0    # "isAirplaneMode":Z
    .end local v6    # "wifiHotspotAvailable":Z
    .restart local v1    # "isBluetoothEnabled":I
    .restart local v2    # "isBluetoothTetheringEnabled":I
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 1180
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 1182
    .local v5, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/4 v14, 0x1

    .line 1183
    .local v14, "usbAvailable":Z
    :goto_0
    const/4 v15, 0x0

    .line 1184
    .local v15, "usbError":I
    move-object/from16 v3, p1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v11, v3, v7

    .line 1185
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v10, v4, v6

    .line 1186
    .local v10, "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1187
    if-nez v15, :cond_0

    .line 1188
    invoke-virtual {v5, v11}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    .line 1185
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1182
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "regex":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    .end local v14    # "usbAvailable":Z
    .end local v15    # "usbError":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 1184
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "s":Ljava/lang/String;
    .restart local v14    # "usbAvailable":Z
    .restart local v15    # "usbError":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_1

    .line 1193
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    .line 1194
    .local v17, "usbTethered":Z
    move-object/from16 v3, p2

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v8, :cond_9

    aget-object v11, v3, v7

    .line 1195
    .restart local v11    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v9, :cond_8

    aget-object v10, v4, v6

    .line 1196
    .restart local v10    # "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "usb"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    :cond_4
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "rndis"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1197
    :cond_5
    const/16 v17, 0x1

    .line 1195
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1198
    :cond_7
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "ncm"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1201
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a081d

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1194
    .end local v10    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_3

    .line 1206
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_9
    const/16 v16, 0x0

    .line 1207
    .local v16, "usbErrored":Z
    move-object/from16 v3, p3

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v8, :cond_c

    aget-object v11, v3, v7

    .line 1208
    .restart local v11    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_7
    if-ge v6, v9, :cond_b

    aget-object v10, v4, v6

    .line 1209
    .restart local v10    # "regex":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v16, 0x1

    .line 1208
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1207
    .end local v10    # "regex":Ljava/lang/String;
    :cond_b
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_6

    .line 1215
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_c
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 1216
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v17, :cond_12

    .line 1217
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1218
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0815

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1279
    :cond_d
    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 1287
    :cond_e
    :goto_9
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 1290
    :cond_f
    return-void

    .line 1224
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sidesync_usb_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1225
    .local v12, "sidesyncDB":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_11

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0814

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 1230
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0815

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1235
    .end local v12    # "sidesyncDB":I
    :cond_12
    if-eqz v14, :cond_17

    .line 1236
    if-nez v15, :cond_16

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0814

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1242
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mNcmEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1247
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    sget v18, Lcom/android/settings/TetherSettings;->mSettingValue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1251
    :cond_15
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    goto/16 :goto_8

    .line 1240
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a081a

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_a

    .line 1254
    :cond_17
    if-eqz v16, :cond_18

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a081a

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1258
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0817

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1263
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0818

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1283
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_9
.end method


# virtual methods
.method public checkBluetoothVisibility()V
    .locals 4

    .prologue
    .line 803
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 804
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    .line 805
    const-string v2, "TetherSettings"

    const-string v3, "visibility is disabled"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0829

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 810
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public generateDefaultSSID()V
    .locals 20

    .prologue
    .line 1883
    const/4 v10, 0x0

    .line 1884
    .local v10, "number":Ljava/lang/String;
    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 1886
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    .line 1887
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 1890
    :cond_0
    if-nez v10, :cond_1

    .line 1891
    const-string v10, ""

    .line 1894
    :cond_1
    const-string v15, ""

    .line 1895
    .local v15, "tempSSID":Ljava/lang/String;
    const-string v4, ""

    .line 1896
    .local v4, "defaultSsid":Ljava/lang/String;
    const-string v3, ""

    .line 1898
    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1899
    const v16, 0x7f0a0637

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1905
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 1906
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 1907
    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1908
    move-object v3, v6

    .line 1916
    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1917
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1922
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1924
    .local v11, "randomUUID":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1942
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    .line 1951
    .end local v11    # "randomUUID":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1952
    return-void

    .line 1901
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1902
    .local v9, "mSplitSsid":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    .line 1910
    .end local v9    # "mSplitSsid":[Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1911
    .local v12, "rnd":Ljava/util/Random;
    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    .line 1912
    .local v13, "sequence":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1913
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1927
    .end local v12    # "rnd":Ljava/util/Random;
    .end local v13    # "sequence":I
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v11    # "randomUUID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1928
    .local v8, "mSplitPwd":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 1931
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1932
    .local v7, "mPwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 1933
    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1934
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1932
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1936
    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1945
    .end local v5    # "i":I
    .end local v7    # "mPwd":Ljava/lang/StringBuilder;
    .end local v8    # "mSplitPwd":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1948
    .end local v11    # "randomUUID":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1956
    const v0, 0x7f0a0e62

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1432
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1433
    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    if-nez p1, :cond_1

    .line 1436
    if-ne p2, v4, :cond_2

    .line 1437
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    .line 1438
    iput v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 1445
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 1479
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1480
    return-void

    .line 1450
    :cond_2
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 1458
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_3

    .line 1459
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1460
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1465
    :cond_3
    const/4 v0, 0x0

    .line 1467
    .local v0, "wifiSavedState":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1471
    :goto_1
    if-ne v0, v5, :cond_4

    .line 1472
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1473
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1476
    .end local v0    # "wifiSavedState":I
    :cond_4
    :goto_2
    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 1452
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const-string v2, "bluetooth.pan.tether_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 1455
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 1468
    .restart local v0    # "wifiSavedState":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1854
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1855
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1856
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 1862
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1863
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1865
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_0
    sput-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 1870
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1874
    :goto_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1875
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0636

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1880
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1872
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    const-string v19, "TETHER_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 244
    :cond_0
    const v19, 0x7f0700dd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_2

    const/4 v10, 0x1

    .line 247
    .local v10, "isAirplaneMode":Z
    :goto_0
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 248
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setHasOptionsMenu(Z)V

    .line 251
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mIsLightTheme:Z

    .line 253
    const-string v19, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string v20, "no_config_tethering"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 256
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 257
    new-instance v19, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 404
    :goto_1
    return-void

    .line 245
    .end local v10    # "isAirplaneMode":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 261
    .restart local v10    # "isAirplaneMode":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 262
    .local v3, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 263
    .local v4, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v4, :cond_5

    .line 264
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    .line 265
    .local v7, "btState":I
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    .line 267
    sget-boolean v19, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v19, :cond_4

    .line 268
    const-string v19, "TetherSettings"

    const-string v20, "onCreate:Bluetooth is on, call getProfileProxy"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 274
    .end local v7    # "btState":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    const-string v19, "TMO"

    const-string v20, "ALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const v20, 0x7f0a080f

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setTitle(I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const v20, 0x7f0205ce

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setIcon(I)V

    .line 283
    :cond_6
    :goto_2
    const-string v19, "enable_wifi_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 285
    const-string v19, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 286
    const-string v19, "enable_switch_wifi_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 287
    const-string v19, "enable_switch_wifi_ap_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/settings/SettingsTextSwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 290
    const-string v19, "wifi_ap_ssid_and_security"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 291
    .local v17, "wifiApSettings":Landroid/preference/Preference;
    const-string v19, "usb_tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 293
    const-string v19, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 296
    const-string v19, "tethering_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 299
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 300
    const-string v19, "tethering_help"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->removePreference(Ljava/lang/String;)V

    .line 304
    :cond_7
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 307
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 308
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 309
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v16, 0x1

    .line 312
    .local v16, "usbAvailable":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    .line 313
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mWifiRegexs.length : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v12, :cond_c

    aget-object v15, v5, v9

    .line 315
    .local v15, "temp":Ljava/lang/String;
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "debug : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 277
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "temp":Ljava/lang/String;
    .end local v16    # "usbAvailable":Z
    .end local v17    # "wifiApSettings":Landroid/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    const-string v19, "NEWCO"

    const-string v20, "ALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const v20, 0x7f0a0810

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_2

    .line 279
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const v20, 0x7f0a0808

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_2

    .line 311
    .restart local v8    # "cm":Landroid/net/ConnectivityManager;
    .restart local v17    # "wifiApSettings":Landroid/preference/Preference;
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 312
    .restart local v16    # "usbAvailable":Z
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 317
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_c
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ">>> wifiAvailable : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v19, "VZW"

    const-string v20, "ALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "SPRINT"

    const-string v20, "ALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 321
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    .line 329
    :cond_e
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<<< wifiAvailable : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 332
    .local v11, "isKioskContainer":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_12

    if-nez v11, :cond_12

    const/4 v6, 0x1

    .line 335
    .local v6, "bluetoothAvailable":Z
    :goto_6
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 336
    .local v18, "wm":Landroid/net/wifi/WifiManager;
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 337
    .local v13, "msg":Landroid/os/Message;
    const/16 v19, 0x15

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    .line 338
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TetherSettings;->mTetheredData:I

    .line 340
    if-eqz v16, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 345
    :cond_f
    :goto_7
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 350
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v19

    if-nez v19, :cond_16

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v19

    if-nez v19, :cond_14

    .line 354
    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsTextSwitchPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 387
    :goto_9
    if-eqz v6, :cond_17

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 391
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothPan;

    .line 392
    .local v14, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "bluetooth.pan.tether_on"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    .end local v14    # "pan":Landroid/bluetooth/BluetoothPan;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1070013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 402
    new-instance v19, Landroid/webkit/WebView;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 403
    new-instance v19, Landroid/webkit/WebView;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    goto/16 :goto_1

    .line 332
    .end local v6    # "bluetoothAvailable":Z
    .end local v13    # "msg":Landroid/os/Message;
    .end local v18    # "wm":Landroid/net/wifi/WifiManager;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 343
    .restart local v6    # "bluetoothAvailable":Z
    .restart local v13    # "msg":Landroid/os/Message;
    .restart local v18    # "wm":Landroid/net/wifi/WifiManager;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 361
    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 364
    :cond_15
    new-instance v19, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b

    .line 380
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 389
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 395
    .restart local v14    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "bluetooth.pan.tether_on"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_a
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 25
    .param p1, "id"    # I

    .prologue
    .line 486
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 490
    .local v13, "locale":Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 491
    .local v6, "am":Landroid/content/res/AssetManager;
    const-string v21, "html/%y%z/tethering_help.html"

    const-string v22, "%y"

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 492
    .local v17, "path":Ljava/lang/String;
    const-string v21, "%z"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x5f

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 493
    const/16 v19, 0x1

    .line 494
    .local v19, "useCountry":Z
    const/4 v10, 0x0

    .line 496
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 500
    if-eqz v10, :cond_0

    .line 502
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 506
    :cond_0
    :goto_0
    const-string v21, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v22, "%y"

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 507
    .local v18, "url":Ljava/lang/String;
    const-string v22, "%z"

    if-eqz v19, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x5f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 509
    const-string v21, "%x"

    const-string v22, "usb_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 527
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 530
    .local v16, "parent":Landroid/view/ViewParent;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 531
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 534
    :cond_2
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 535
    .local v12, "layout":Landroid/widget/LinearLayout;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 537
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 541
    .restart local v16    # "parent":Landroid/view/ViewParent;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 542
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 545
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 546
    .local v14, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0f0003

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0f0003

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0f0168

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    const-string v22, "#FAFAFA"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 553
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a082c

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 559
    .local v3, "HelpDialog":Landroid/app/AlertDialog;
    new-instance v21, Lcom/android/settings/TetherSettings$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v8, v3

    .line 787
    .end local v3    # "HelpDialog":Landroid/app/AlertDialog;
    .end local v6    # "am":Landroid/content/res/AssetManager;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "layout":Landroid/widget/LinearLayout;
    .end local v13    # "locale":Ljava/util/Locale;
    .end local v14    # "p":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "useCountry":Z
    :goto_3
    return-object v8

    .line 497
    .restart local v6    # "am":Landroid/content/res/AssetManager;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "locale":Ljava/util/Locale;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v19    # "useCountry":Z
    :catch_0
    move-exception v9

    .line 498
    .local v9, "ignored":Ljava/lang/Exception;
    const/16 v19, 0x0

    .line 500
    if-eqz v10, :cond_0

    .line 502
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 503
    :catch_1
    move-exception v21

    goto/16 :goto_0

    .line 500
    .end local v9    # "ignored":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    if-eqz v10, :cond_4

    .line 502
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 503
    :cond_4
    :goto_4
    throw v21

    .line 507
    .restart local v18    # "url":Ljava/lang/String;
    :cond_5
    const-string v21, ""

    goto/16 :goto_1

    .line 510
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 511
    const-string v21, "%x"

    const-string v22, "wifi_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 513
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 514
    const-string v21, "%x"

    const-string v22, "usb_wifi_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 517
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->wifiAvailable:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 518
    const-string v21, "%x"

    const-string v22, "usb_bluetooth_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 522
    :cond_9
    const-string v21, "%x"

    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 573
    .end local v6    # "am":Landroid/content/res/AssetManager;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "locale":Ljava/util/Locale;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .end local v19    # "useCountry":Z
    :cond_a
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 575
    .local v5, "activity":Landroid/app/Activity;
    new-instance v21, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v5, v1, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 576
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    goto/16 :goto_3

    .line 577
    .end local v5    # "activity":Landroid/app/Activity;
    :cond_b
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 578
    const-string v21, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 579
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    .local v4, "USBTetheringWarningDialog":Landroid/app/AlertDialog$Builder;
    new-instance v20, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 583
    .local v20, "warnningmsg":Landroid/widget/TextView;
    const v21, 0x7f0a1797

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsTablet:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsLightTheme:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 585
    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    :cond_c
    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextSize(F)V

    .line 587
    const/16 v21, 0x1e

    const/16 v22, 0x1e

    const/16 v23, 0x1e

    const/16 v24, 0x1e

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 588
    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 590
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 594
    const v21, 0x7f0a1798

    new-instance v22, Lcom/android/settings/TetherSettings$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    const/high16 v21, 0x1040000

    new-instance v22, Lcom/android/settings/TetherSettings$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_3

    .line 610
    .end local v4    # "USBTetheringWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v20    # "warnningmsg":Landroid/widget/TextView;
    :cond_d
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 611
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    .line 612
    .restart local v13    # "locale":Ljava/util/Locale;
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ja"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const-string v11, "ja"

    .line 613
    .local v11, "language":Ljava/lang/String;
    :goto_5
    const-string v18, ""

    .line 620
    .restart local v18    # "url":Ljava/lang/String;
    const-string v21, "file:///android_asset/html/%y/tethering_attention.html"

    const-string v22, "%y"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 630
    new-instance v7, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 631
    .local v7, "attention_view":Landroid/webkit/WebView;
    const-string v21, "DCM"

    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 635
    .restart local v16    # "parent":Landroid/view/ViewParent;
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 636
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 638
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/TetherSettings;->mAttentionView:Landroid/webkit/WebView;

    .line 642
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v21

    if-nez v21, :cond_11

    .line 643
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x1040014

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f5

    new-instance v23, Lcom/android/settings/TetherSettings$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 673
    .local v8, "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_3

    .line 612
    .end local v7    # "attention_view":Landroid/webkit/WebView;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "language":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_f
    const-string v11, "en"

    goto/16 :goto_5

    .line 640
    .restart local v7    # "attention_view":Landroid/webkit/WebView;
    .restart local v11    # "language":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    .line 675
    :cond_11
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x1040014

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f5

    new-instance v23, Lcom/android/settings/TetherSettings$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    new-instance v22, Lcom/android/settings/TetherSettings$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 714
    .restart local v8    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_3

    .line 717
    .end local v7    # "attention_view":Landroid/webkit/WebView;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "language":Ljava/lang/String;
    .end local v13    # "locale":Ljava/util/Locale;
    .end local v18    # "url":Ljava/lang/String;
    :cond_12
    const-string v21, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    const-string v21, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    :cond_13
    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 718
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f0a050f

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$10;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a0804

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_3

    .line 726
    :cond_14
    const/16 v21, 0xd

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 727
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f0a0022

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$11;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a0550

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_3

    .line 735
    :cond_15
    const/16 v21, 0xc

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 736
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f0a04e7

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$13;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f5

    new-instance v23, Lcom/android/settings/TetherSettings$12;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$12;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a0550

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_3

    .line 751
    :cond_16
    const-string v21, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x6

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 752
    new-instance v21, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v22, 0x7f0a050f

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a08f4

    new-instance v23, Lcom/android/settings/TetherSettings$14;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$14;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    const v22, 0x7f0a0806

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto/16 :goto_3

    .line 787
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 503
    .restart local v6    # "am":Landroid/content/res/AssetManager;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "locale":Ljava/util/Locale;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v19    # "useCountry":Z
    :catch_2
    move-exception v21

    goto/16 :goto_0

    :catch_3
    move-exception v22

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 1974
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1975
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    const/4 v0, 0x1

    const v1, 0x7f0a1653

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1980
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1018
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1020
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 1021
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1022
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 1024
    sget-boolean v2, Lcom/android/settings/TetherSettings;->DBG:Z

    if-eqz v2, :cond_0

    .line 1025
    const-string v2, "TetherSettings"

    const-string v3, "onDestory:close profile proxy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1029
    if-eqz v0, :cond_1

    .line 1030
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1031
    :cond_1
    const/4 v1, 0x0

    .line 1034
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 1984
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2016
    :cond_0
    :goto_0
    return v5

    .line 1986
    :pswitch_0
    const/4 v0, 0x0

    .line 1989
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1990
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1991
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1992
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string v2, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1993
    const-string v2, "helphub:section"

    const-string v3, "tethering_tmo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2010
    .end local v1    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1994
    .restart local v1    # "pickIntent":Landroid/content/Intent;
    :cond_1
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1995
    const-string v2, "helphub:section"

    const-string v3, "tethering_vzw"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1997
    :cond_2
    const-string v2, "helphub:section"

    const-string v3, "tethering"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2001
    .end local v1    # "pickIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2002
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2003
    .restart local v1    # "pickIntent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "tethering"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 969
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 971
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 975
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1366
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1367
    .local v1, "key":Ljava/lang/String;
    const-string v2, "enable_wifi_ap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1370
    .local v0, "enable":Z
    if-eqz v0, :cond_1

    .line 1371
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1376
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    return v3

    .line 1373
    .restart local v0    # "enable":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 22
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1583
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 1585
    .local v8, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1586
    const-string v18, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1589
    :cond_0
    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 1593
    .local v15, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mOpenDetailMenu:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1594
    :cond_1
    sget v18, Lcom/android/settings/TetherSettings;->mSettingValue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 1595
    sget v18, Lcom/android/settings/TetherSettings;->mSettingValue:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    .line 1596
    .local v17, "value":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v7, p2

    .line 1597
    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 1598
    .local v7, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1599
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1606
    .end local v7    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v17    # "value":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1607
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isSPR()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0021

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1610
    const/16 v18, 0x0

    .line 1832
    :goto_1
    return v18

    .line 1595
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 1612
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    .line 1613
    .local v13, "newState":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sidesync_usb_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 1615
    .local v14, "sidesyncDB":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_7

    .line 1617
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1618
    .local v12, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0550

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1619
    const v18, 0x7f0a081c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1620
    const v18, 0x104000a

    new-instance v19, Lcom/android/settings/TetherSettings$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$15;-><init>(Lcom/android/settings/TetherSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1641
    const/high16 v18, 0x1040000

    new-instance v19, Lcom/android/settings/TetherSettings$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$16;-><init>(Lcom/android/settings/TetherSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1648
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1832
    .end local v12    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v13    # "newState":Z
    .end local v14    # "sidesyncDB":I
    :cond_6
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v18

    goto :goto_1

    .line 1650
    .restart local v13    # "newState":Z
    .restart local v14    # "sidesyncDB":I
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_8

    .line 1652
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1653
    .restart local v12    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0550

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1654
    const v18, 0x7f0a081b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1655
    const v18, 0x104000a

    new-instance v19, Lcom/android/settings/TetherSettings$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/settings/TetherSettings$17;-><init>(Lcom/android/settings/TetherSettings;Z)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1665
    const/high16 v18, 0x1040000

    new-instance v19, Lcom/android/settings/TetherSettings$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$18;-><init>(Lcom/android/settings/TetherSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1672
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 1675
    .end local v12    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_8
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1679
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1680
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1683
    :cond_a
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1685
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1686
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1689
    :cond_b
    if-eqz v13, :cond_12

    .line 1690
    const-string v18, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1691
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1745
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "usb_tethering_enabled"

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_13

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1692
    :cond_d
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1693
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1694
    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_3

    .line 1696
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 1697
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1698
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_3

    .line 1701
    :cond_f
    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1702
    const-string v18, "TetherSettings"

    const-string v19, "onPreferenceTreeClick:3"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 1704
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1705
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0a0550

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0a051c

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0a051e

    new-instance v20, Lcom/android/settings/TetherSettings$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$20;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0a051d

    new-instance v20, Lcom/android/settings/TetherSettings$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings$19;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mAlertDlg:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 1734
    :cond_10
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_3

    .line 1737
    .end local v11    # "info":Landroid/net/NetworkInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 1738
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z

    .line 1739
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_3

    .line 1743
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_3

    .line 1745
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1749
    .end local v13    # "newState":Z
    .end local v14    # "sidesyncDB":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 1750
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isSPR()Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0020

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v19, "bluetooth.pan.tether_on"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1753
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1755
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1756
    .local v6, "bluetoothTetherState":Z
    const-string v18, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 1758
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1760
    .local v3, "allowInternetSharing":Z
    if-nez v3, :cond_16

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 1762
    .local v5, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const-string v18, "TetherSettings"

    const-string v19, "Internet Sharing is restricted by MDM."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v19, "bluetooth.pan.tether_on"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x1040762

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 1765
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1768
    .end local v5    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_16
    if-eqz v6, :cond_19

    .line 1769
    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v19, "bluetooth.pan.tether_on"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1772
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1773
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1775
    :cond_17
    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1799
    :cond_18
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1818
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "bluetooth_tethering_enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1801
    :cond_19
    const/4 v10, 0x0

    .line 1803
    .local v10, "errored":Z
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v16

    .line 1804
    .local v16, "tethered":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1805
    .local v4, "bluetoothIface":Ljava/lang/String;
    if-eqz v4, :cond_1a

    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1a

    .line 1807
    const/4 v10, 0x1

    .line 1810
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 1811
    .restart local v5    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v5, :cond_1b

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1812
    :cond_1b
    if-eqz v10, :cond_1c

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0826

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1815
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0a0825

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_5

    .line 1818
    .end local v4    # "bluetoothIface":Ljava/lang/String;
    .end local v5    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v10    # "errored":Z
    .end local v16    # "tethered":[Ljava/lang/String;
    :cond_1d
    const/16 v18, 0x0

    goto :goto_6

    .line 1821
    .end local v3    # "allowInternetSharing":Z
    .end local v6    # "bluetoothTetherState":Z
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 1822
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1828
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1829
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 980
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    .line 981
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mOpenDetailMenu:Z

    .line 982
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 983
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 985
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mOpenDetailMenu:Z

    .line 986
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/android/settings/TetherSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 988
    .local v1, "extra_bundle":Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    .local v2, "targetKey":Ljava/lang/String;
    sget v5, Lcom/android/settings/TetherSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 991
    .local v0, "bValue":Z
    :goto_0
    const-string v5, "enable_switch_wifi_ap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 993
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 999
    :cond_0
    :goto_1
    const-string v5, "enable_bluetooth_tethering"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1000
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    .line 1005
    .end local v0    # "bValue":Z
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "targetKey":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mFromSearch:Z

    if-eqz v5, :cond_2

    .line 1006
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1010
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "usb_tethering_enabled"

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v3

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_tethering_enabled"

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-ne v7, v3, :cond_7

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1014
    return-void

    .restart local v1    # "extra_bundle":Landroid/os/Bundle;
    .restart local v2    # "targetKey":Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 989
    goto :goto_0

    .line 995
    .restart local v0    # "bValue":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1001
    :cond_5
    const-string v5, "usb_tether_settings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1002
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    goto :goto_2

    .end local v0    # "bValue":Z
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v2    # "targetKey":Ljava/lang/String;
    :cond_6
    move v5, v4

    .line 1010
    goto :goto_3

    :cond_7
    move v3, v4

    .line 1012
    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 408
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 887
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 889
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v5, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 891
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 892
    if-eqz v1, :cond_0

    .line 893
    const v5, 0x7f0a09a3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 964
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 900
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 901
    new-instance v5, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 902
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 903
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 905
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 906
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 909
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 910
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 911
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 912
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 913
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 915
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 916
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 918
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 920
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 922
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isWifiTetheringEnabled"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 923
    .local v4, "isWifiTetheringEnabled":I
    if-nez v4, :cond_4

    .line 924
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v5, :cond_3

    .line 928
    :cond_3
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_4

    .line 930
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 931
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiApKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 955
    :cond_4
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v5, :cond_5

    .line 956
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 957
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 959
    :cond_5
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_6

    .line 961
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 963
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1038
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1040
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1044
    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1045
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1047
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 1054
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_tethering_enabled"

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bluetooth_tethering_enabled"

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_4

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1054
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1056
    goto :goto_2
.end method
