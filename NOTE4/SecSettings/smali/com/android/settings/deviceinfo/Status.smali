.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mFirstCall:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneHandler:Landroid/os/Handler;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "user_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 240
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 193
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 194
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 195
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 196
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 197
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 198
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 199
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    .line 338
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 571
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 573
    new-instance v0, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 1582
    new-instance v0, Lcom/android/settings/deviceinfo/Status$8;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$8;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1858
    new-instance v0, Lcom/android/settings/deviceinfo/Status$9;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$9;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 1899
    new-instance v0, Lcom/android/settings/deviceinfo/Status$10;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$10;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    .line 1940
    new-instance v0, Lcom/android/settings/deviceinfo/Status$11;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$11;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1284(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/Status;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->setActivationDateStatus([B)V

    return-void
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/Status;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/deviceinfo/Status;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Status;->getOemData(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;

    .prologue
    .line 146
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()[B
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$902([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 146
    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method private changeSysScopeStatus()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f0a01cc

    const/4 v8, -0x1

    .line 1522
    const-string v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1523
    .local v2, "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    .line 1524
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    .line 1525
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    .line 1527
    .local v4, "ut":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1528
    const-wide/16 v4, 0x1

    .line 1531
    :cond_0
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v6, v8, :cond_1

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 1532
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1543
    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1544
    return-void

    .line 1534
    :cond_1
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1535
    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1536
    :cond_2
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v6, v8, :cond_3

    .line 1537
    const v6, 0x7f0a01cd

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1539
    :cond_3
    const v6, 0x7f0a01cb

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1852
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1853
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1855
    return-void
.end method

.method private connectToRilServiceVZW()V
    .locals 3

    .prologue
    .line 1873
    const-string v1, "Status"

    const-string v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1875
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1876
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1877
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 1574
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 1575
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 1576
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 1578
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "devID"    # Ljava/lang/String;

    .prologue
    .line 1624
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1625
    .local v0, "len":I
    const/4 v1, 0x0

    .line 1627
    .local v1, "out":Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1632
    :cond_0
    :goto_0
    return-object v1

    .line 1629
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "esnno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 1642
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1644
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    .local v0, "decESN":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1653
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1677
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1647
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1650
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1656
    :pswitch_2
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1659
    :pswitch_3
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1662
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1665
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1668
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1671
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1674
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1654
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "meidno"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 1687
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, "dmfcode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, "dserialno":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .local v0, "decMEID":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1719
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1743
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 1692
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1695
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1698
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1701
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1704
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1707
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1710
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1713
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1716
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1722
    :pswitch_9
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1725
    :pswitch_a
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1728
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1731
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1734
    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1737
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1740
    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1720
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 439
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 443
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 444
    .local v3, "fileSize":I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 445
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 447
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 453
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 452
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 453
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 454
    :catch_2
    move-exception v2

    .line 455
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 452
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 453
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 456
    :goto_1
    throw v4

    .line 454
    :catch_3
    move-exception v2

    .line 455
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getOemData(II)V
    .locals 7
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 1881
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1882
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1884
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 1885
    .local v3, "fileSize":I
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1886
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1887
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1889
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1890
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getOemData with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1897
    :goto_0
    return-void

    .line 1891
    :catch_0
    move-exception v2

    .line 1892
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 367
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;II)V

    .line 391
    .local v0, "mPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1256
    packed-switch p1, :pswitch_data_0

    .line 1268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1258
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1262
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1265
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 461
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "req":Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 464
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 465
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1566
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1567
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1569
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1143
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1146
    :cond_0
    return-void
.end method

.method private setActivationDateStatus([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 539
    const/4 v12, 0x2

    new-array v8, v12, [B

    .line 540
    .local v8, "newBytes":[B
    const/4 v12, 0x0

    const/4 v13, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v8, v12

    .line 541
    const/4 v12, 0x1

    const/4 v13, 0x0

    aget-byte v13, p1, v13

    aput-byte v13, v8, v12

    .line 542
    const/4 v10, 0x0

    .line 543
    .local v10, "value":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v12, v8

    if-ge v5, v12, :cond_0

    .line 544
    shl-int/lit8 v12, v10, 0x8

    aget-byte v13, v8, v5

    and-int/lit16 v13, v13, 0xff

    add-int v10, v12, v13

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 547
    :cond_0
    move v11, v10

    .line 548
    .local v11, "year":I
    const/4 v12, 0x2

    aget-byte v7, p1, v12

    .line 549
    .local v7, "month":I
    const/4 v12, 0x3

    aget-byte v2, p1, v12

    .line 550
    .local v2, "day":I
    const/4 v12, 0x4

    aget-byte v4, p1, v12

    .line 551
    .local v4, "hour":I
    const/4 v12, 0x5

    aget-byte v6, p1, v12

    .line 552
    .local v6, "minute":I
    const/4 v12, 0x6

    aget-byte v9, p1, v12

    .line 555
    .local v9, "second":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x1

    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 558
    const/4 v12, 0x5

    invoke-virtual {v0, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 559
    const/16 v12, 0xa

    invoke-virtual {v0, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 560
    const/16 v12, 0xc

    invoke-virtual {v0, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 561
    const/16 v12, 0xd

    invoke-virtual {v0, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "date_format"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "dateFormatSetting":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "formatted_date":Ljava/lang/String;
    const-string v12, "factorydatareset"

    invoke-direct {p0, v12, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v12, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    if-eqz v12, :cond_1

    .line 568
    iget-object v12, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnectionVZW:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v12}, Lcom/android/settings/deviceinfo/Status;->unbindService(Landroid/content/ServiceConnection;)V

    .line 569
    :cond_1
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 1481
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1482
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1484
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1491
    :goto_0
    return-void

    .line 1488
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0a0767

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1488
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFirstCallstatus()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    .line 1919
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1920
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1921
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 1923
    .local v3, "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    const/4 v4, 0x4

    .line 1924
    .local v4, "size":I
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1925
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1926
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1936
    :goto_0
    new-instance v3, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .end local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-direct {v3, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    .line 1937
    .restart local v3    # "mFactoryPhone":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1938
    return-void

    .line 1932
    :catch_0
    move-exception v2

    .line 1933
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1927
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1928
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1931
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1932
    :catch_2
    move-exception v2

    .line 1933
    const-string v5, "Status"

    const-string v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1930
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1931
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1934
    :goto_1
    throw v5

    .line 1932
    :catch_3
    move-exception v2

    .line 1933
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "Status"

    const-string v7, "IOException in getOemData!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 1469
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1470
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1472
    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    const v2, 0x7f0a0767

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .param p1, "onOff"    # I

    .prologue
    .line 414
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 419
    .local v3, "fileSize":I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 420
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 421
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 422
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-eqz v1, :cond_0

    .line 428
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 435
    return-void

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 424
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    if-eqz v1, :cond_0

    .line 428
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 429
    :catch_2
    move-exception v2

    .line 430
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 427
    if-eqz v1, :cond_1

    .line 428
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 431
    :cond_1
    :goto_1
    throw v4

    .line 429
    :catch_3
    move-exception v2

    .line 430
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 1167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1170
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 1517
    const-string v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1518
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0a01cd

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1519
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 1424
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1425
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1427
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1428
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1429
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1431
    return-void

    .line 1428
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1429
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0a0767

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 1408
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1409
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1411
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 1412
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 1413
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1414
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1421
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 1417
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0a0767

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 1332
    if-eqz p1, :cond_0

    .line 1333
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    .prologue
    .line 1232
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 1233
    .local v2, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v1

    .line 1235
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1252
    :goto_0
    const-string v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1239
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    goto :goto_0

    .line 1242
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    goto :goto_0

    .line 1245
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    goto :goto_0

    .line 1248
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType(I)V
    .locals 6
    .param p1, "activePhone"    # I

    .prologue
    .line 1173
    const-string v3, "gsm.network.type"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v3, p1, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "networkType":Ljava/lang/String;
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1178
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1181
    .local v1, "subId":[J
    const-string v3, "false"

    const-string v4, "ro.ril.svlte1x"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "LTE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1184
    const-string v0, "1x RTT"

    .line 1223
    .end local v1    # "subId":[J
    :cond_0
    :goto_0
    const-string v3, "Status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkType() => networkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v3, "Unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 1228
    :cond_1
    const-string v3, "network_type"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void

    .line 1186
    :cond_2
    const-string v3, "OMN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "O2U"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1187
    :cond_3
    const-string v3, "LTE"

    const-string v4, "4G"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1189
    const-string v3, "gsm.voice.network.type"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v3, p1, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, "voiceNetworkType":Ljava/lang/String;
    const-string v3, "Unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1193
    move-object v0, v2

    .line 1194
    const-string v3, "Status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_5
    const-string v3, "CDMA-IS95A"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "CDMA-IS95B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1197
    :cond_6
    const-string v0, "CDMA 1x"

    goto/16 :goto_0

    .line 1198
    :cond_7
    const-string v3, "EvDo-rev.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1199
    const-string v0, "CDMA EVDO"

    goto/16 :goto_0

    .line 1200
    :cond_8
    const-string v3, "EvDo-rev.A"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1201
    const-string v0, "CDMA EVDO"

    goto/16 :goto_0

    .line 1202
    :cond_9
    const-string v3, "EvDo-rev.B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1203
    const-string v0, "CDMA EVDO"

    goto/16 :goto_0

    .line 1204
    :cond_a
    const-string v3, "1xRTT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1205
    const-string v0, "CDMA 1x"

    goto/16 :goto_0

    .line 1206
    :cond_b
    const-string v3, "UMTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1207
    const-string v0, "WCDMA"

    goto/16 :goto_0

    .line 1208
    :cond_c
    const-string v3, "HSDPA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "HSUPA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "HSPA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1209
    :cond_d
    const-string v0, "HSPA"

    goto/16 :goto_0

    .line 1210
    :cond_e
    const-string v3, "HSPAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1211
    const-string v0, "HSPA+"

    goto/16 :goto_0

    .line 1212
    :cond_f
    const-string v3, "eHRPD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1213
    const-string v0, "eHRPD"

    goto/16 :goto_0

    .line 1214
    :cond_10
    const-string v3, "LTE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1215
    const-string v0, "LTE"

    goto/16 :goto_0

    .line 1216
    :cond_11
    const-string v3, "GPRS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "EDGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GSM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    const-string v3, "TD-SCDMA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1218
    const-string v0, "TD-SCDMA"

    goto/16 :goto_0

    .line 1220
    :cond_12
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const v8, 0x7f0a00dc

    const v7, 0x7f0a00db

    .line 1273
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 1274
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 1276
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1277
    const-string v4, "service_state"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1285
    const-string v4, "persist.sys.roaming_menu"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1286
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1287
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_0
    :goto_1
    const-string v4, "DCM"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1302
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_1
    :goto_2
    return-void

    .line 1279
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 1280
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    .end local v0    # "dataDisplay":Ljava/lang/String;
    .end local v1    # "dataState":I
    :cond_3
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1293
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStatusRoamingMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1295
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1297
    :cond_5
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1303
    :cond_6
    const-string v4, "TGY"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1304
    :cond_7
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1305
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "China Telecom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1306
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1307
    :cond_8
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CU GSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "China Unicom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHN-UNICOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHN-CUGSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1311
    :cond_9
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1312
    :cond_a
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CMCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHINA MOBILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1314
    :cond_b
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1315
    :cond_c
    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PCCW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PCCW-HKT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1317
    :cond_d
    const-string v4, "operator_name"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a14f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1319
    :cond_e
    const-string v4, "operator_name"

    iget v5, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1322
    :cond_f
    const-string v4, "KDI"

    sget-object v5, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1323
    const-string v4, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1324
    const-string v4, "operator_name"

    const-string v5, "au"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1327
    :cond_10
    const-string v4, "operator_name"

    iget v5, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateStatus(I)V
    .locals 41
    .param p1, "select_sim"    # I

    .prologue
    .line 731
    const/16 v29, 0x0

    .line 732
    .local v29, "selectPhone":Lcom/android/internal/telephony/Phone;
    const/16 v21, 0x0

    .line 733
    .local v21, "manager":Landroid/telephony/TelephonyManager;
    const/16 v25, 0x0

    .line 734
    .local v25, "removablePref":Landroid/preference/Preference;
    const/16 v36, 0x0

    .line 735
    .local v36, "telephony":Ljava/lang/String;
    const/16 v34, 0x0

    .line 736
    .local v34, "state":I
    const/16 v33, 0x0

    .local v33, "simSlotNum":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 737
    move/from16 v0, p1

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    aget-object v29, v37, v33

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v37, v0

    aget-object v21, v37, v33

    .line 741
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v35

    .line 742
    .local v35, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    const/16 v38, 0x0

    aget-wide v38, v35, v38

    invoke-virtual/range {v37 .. v39}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v34

    .line 736
    .end local v35    # "subId":[J
    :cond_0
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 746
    sget-object v5, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_2d

    aget-object v17, v5, v10

    .line 747
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 746
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 752
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len$":I
    :cond_2
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v37

    const-string v38, "CDMA"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-nez v37, :cond_3

    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_22

    .line 753
    :cond_3
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 754
    :cond_4
    const-string v37, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 756
    :cond_5
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v37

    const-string v38, "CDMA"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_6

    .line 757
    const-string v37, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 758
    const-string v37, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 761
    :cond_6
    const-string v37, "min_number"

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0d0036

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 763
    const-string v37, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    const v38, 0x7f0a0755

    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setTitle(I)V

    .line 765
    :cond_7
    const-string v37, "prl_version"

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-nez v37, :cond_b

    .line 768
    const-string v37, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 773
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-eqz v37, :cond_8

    .line 774
    const-string v37, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 775
    const-string v37, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 776
    const-string v37, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 779
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v37

    const-string v38, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual/range {v37 .. v38}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 781
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "devId":Ljava/lang/String;
    const-string v37, "Status"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz v7, :cond_c

    .line 784
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .local v22, "meid":Ljava/lang/StringBuilder;
    const-string v37, "Dec:"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\nHex:0x"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v37, "meid_number"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v37, "Status"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v7    # "devId":Ljava/lang/String;
    .end local v22    # "meid":Ljava/lang/StringBuilder;
    :goto_3
    const-string v37, "SGH-T999N"

    const-string v38, "ro.product.model"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_9

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_9

    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 800
    :cond_9
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 801
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v11

    .line 802
    .local v11, "icc_id":Ljava/lang/String;
    if-eqz v11, :cond_13

    .line 803
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 804
    .local v12, "icc_id_arr":[C
    const-string v13, ""

    .line 805
    .local v13, "icc_id_vzw":Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    if-ge v9, v0, :cond_e

    .line 806
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    add-int/lit8 v38, v9, -0x1

    aget-char v38, v12, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 807
    rem-int/lit8 v37, v9, 0x4

    if-nez v37, :cond_a

    .line 808
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 805
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 770
    .end local v9    # "i":I
    .end local v11    # "icc_id":Ljava/lang/String;
    .end local v12    # "icc_id_arr":[C
    .end local v13    # "icc_id_vzw":Ljava/lang/String;
    :cond_b
    const-string v38, "imei_sv"

    const-string v37, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 791
    .restart local v7    # "devId":Ljava/lang/String;
    :cond_c
    const-string v37, "meid_number"

    const-string v38, "Unknown"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 794
    .end local v7    # "devId":Ljava/lang/String;
    :cond_d
    const-string v37, "meid_number"

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 810
    .restart local v9    # "i":I
    .restart local v11    # "icc_id":Ljava/lang/String;
    .restart local v12    # "icc_id_arr":[C
    .restart local v13    # "icc_id_vzw":Ljava/lang/String;
    :cond_e
    const-string v37, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v13}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v9    # "i":I
    .end local v11    # "icc_id":Ljava/lang/String;
    .end local v12    # "icc_id_arr":[C
    .end local v13    # "icc_id_vzw":Ljava/lang/String;
    :goto_5
    const-string v37, "USC"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    const-string v37, "XAR"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-eqz v37, :cond_17

    .line 819
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_16

    .line 820
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v37

    if-nez v37, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-eqz v37, :cond_15

    .line 821
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_6
    const-string v37, "CTC"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_20

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    .line 856
    .local v6, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v6, :cond_10

    .line 857
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v32

    .line 858
    .local v32, "sid":I
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v23

    .line 859
    .local v23, "nid":I
    const-string v38, "sid_number"

    const/16 v37, -0x1

    move/from16 v0, v32

    move/from16 v1, v37

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    move-object/from16 v37, v0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v38, "nid_number"

    const/16 v37, -0x1

    move/from16 v0, v23

    move/from16 v1, v37

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    move-object/from16 v37, v0

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .end local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v23    # "nid":I
    .end local v32    # "sid":I
    :cond_10
    :goto_9
    const-string v37, "SPR"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_21

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    .line 914
    :goto_a
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v24

    .line 915
    .local v24, "rawNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 916
    .local v8, "formattedNumber":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_12

    .line 917
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v37

    if-eqz v37, :cond_11

    .line 918
    const-string v37, "\\+82"

    const-string v38, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 919
    :cond_11
    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 922
    :cond_12
    const-string v37, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v8}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 927
    const/16 v33, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v37

    if-ge v0, v1, :cond_2b

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v38

    aput-object v38, v37, v33

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v37, v0

    aget-object v37, v37, v33

    const/16 v38, 0x141

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 927
    add-int/lit8 v33, v33, 0x1

    goto :goto_b

    .line 813
    .end local v8    # "formattedNumber":Ljava/lang/String;
    .end local v24    # "rawNumber":Ljava/lang/String;
    .restart local v11    # "icc_id":Ljava/lang/String;
    :cond_13
    const-string v37, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v11}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 815
    .end local v11    # "icc_id":Ljava/lang/String;
    :cond_14
    const-string v37, "icc_id"

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 823
    :cond_15
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0xe

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 825
    :cond_16
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 827
    :cond_17
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 828
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v14

    .line 829
    .local v14, "imei":Ljava/lang/String;
    if-eqz v14, :cond_1a

    .line 830
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 831
    .local v15, "imei_arr":[C
    const-string v16, ""

    .line 832
    .local v16, "imei_vzw":Ljava/lang/String;
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    if-ge v9, v0, :cond_19

    .line 833
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    add-int/lit8 v38, v9, -0x1

    aget-char v38, v15, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 834
    rem-int/lit8 v37, v9, 0x4

    if-nez v37, :cond_18

    .line 835
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 832
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 837
    :cond_19
    const-string v37, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 840
    .end local v9    # "i":I
    .end local v15    # "imei_arr":[C
    .end local v16    # "imei_vzw":Ljava/lang/String;
    :cond_1a
    const-string v37, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v14}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 842
    .end local v14    # "imei":Ljava/lang/String;
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v37

    if-eqz v37, :cond_1c

    .line 843
    const-string v37, "imei"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 845
    :cond_1c
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 850
    :cond_1d
    const-string v37, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 851
    const-string v37, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 859
    .restart local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v23    # "nid":I
    .restart local v32    # "sid":I
    :cond_1e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_7

    .line 860
    :cond_1f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_8

    .line 863
    .end local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v23    # "nid":I
    .end local v32    # "sid":I
    :cond_20
    const-string v37, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 864
    const-string v37, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 870
    :cond_21
    const-string v37, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 874
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v37

    if-nez v37, :cond_23

    const-string v37, "KDI"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_25

    .line 875
    :cond_23
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_d
    const-string v38, "imei_sv"

    const-string v37, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v37, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 904
    const-string v37, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 905
    const-string v37, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 907
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-nez v37, :cond_24

    .line 908
    const-string v37, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 909
    :cond_24
    const-string v37, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 910
    const-string v37, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 911
    const-string v37, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 876
    :cond_25
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_29

    .line 877
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v14

    .line 878
    .restart local v14    # "imei":Ljava/lang/String;
    if-eqz v14, :cond_28

    .line 879
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 880
    .restart local v15    # "imei_arr":[C
    const-string v16, ""

    .line 881
    .restart local v16    # "imei_vzw":Ljava/lang/String;
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_e
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    if-ge v9, v0, :cond_27

    .line 882
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    add-int/lit8 v38, v9, -0x1

    aget-char v38, v15, v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 883
    rem-int/lit8 v37, v9, 0x4

    if-nez v37, :cond_26

    .line 884
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 881
    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 886
    :cond_27
    const-string v37, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 889
    .end local v9    # "i":I
    .end local v15    # "imei_arr":[C
    .end local v16    # "imei_vzw":Ljava/lang/String;
    :cond_28
    const-string v37, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v14}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 891
    .end local v14    # "imei":Ljava/lang/String;
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v37

    if-eqz v37, :cond_2a

    .line 892
    const-string v37, "imei"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 894
    :cond_2a
    const-string v37, "imei"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/telephony/MultiSimManager;->getImei(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 936
    .restart local v8    # "formattedNumber":Ljava/lang/String;
    .restart local v24    # "rawNumber":Ljava/lang/String;
    :cond_2b
    const-string v37, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v38, v38, v39

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2c

    .line 937
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    .line 939
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    move/from16 v37, v0

    if-nez v37, :cond_2d

    .line 940
    const-string v37, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 944
    .end local v8    # "formattedNumber":Ljava/lang/String;
    .end local v24    # "rawNumber":Ljava/lang/String;
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 954
    const-string v37, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 958
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    .line 961
    const-string v37, "ril.serialnumber"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 962
    .local v20, "mRilSerial":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_2e

    const-string v37, "00000000000"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_38

    :cond_2e
    const-string v30, "ro.serialno"

    .line 963
    .local v30, "serial":Ljava/lang/String;
    :goto_f
    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 964
    .local v31, "serialNum":Ljava/lang/String;
    const-string v37, "Status"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "serial:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v37, "Status"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "serialNum:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_39

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-nez v37, :cond_2f

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilServiceVZW()V

    .line 975
    :cond_2f
    :goto_10
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_3a

    .line 976
    const-string v37, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :goto_11
    const-string v37, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_30

    .line 984
    const-string v37, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 987
    :cond_30
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v37

    if-eqz v37, :cond_32

    .line 988
    const-string v37, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 989
    const-string v37, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 990
    const-string v37, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 991
    const-string v37, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 993
    const-string v37, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 994
    const-string v37, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v37

    if-nez v37, :cond_31

    .line 997
    const-string v37, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 998
    :cond_31
    const-string v37, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1000
    :cond_32
    const-string v37, "GT-P3113"

    sget-object v38, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_34

    const-string v37, "GT-P5113"

    sget-object v38, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_34

    const-string v37, "VZW"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "SPR"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "USC"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "VMU"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "BST"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "XAS"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "ACG"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_33

    const-string v37, "LRA"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_34

    .line 1003
    :cond_33
    const-string v37, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1005
    :cond_34
    const-string v37, "DCM"

    sget-object v38, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_35

    .line 1006
    const-string v37, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1007
    const-string v37, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1010
    :cond_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v37

    const-string v38, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v37 .. v38}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3c

    .line 1012
    const-string v37, "ril.eri_ver_1"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "ERI_SysProp":Ljava/lang/String;
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_3b

    .line 1014
    const-string v37, "eri_version"

    const/16 v38, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .end local v4    # "ERI_SysProp":Ljava/lang/String;
    :goto_12
    const/16 v19, 0x0

    .line 1023
    .local v19, "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const/16 v37, 0x7

    move/from16 v0, v37

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    check-cast v19, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1024
    .restart local v19    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    const-string v28, "0"

    .line 1025
    .local v28, "retVal":Ljava/lang/String;
    if-eqz v19, :cond_36

    .line 1026
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v37, 0x0

    const/16 v38, 0x6d

    aput v38, v26, v37

    .line 1027
    .local v26, "reqFields":[I
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v27

    .line 1028
    .local v27, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v27, :cond_36

    .line 1029
    const/16 v37, 0x6d

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "retVal":Ljava/lang/String;
    check-cast v28, Ljava/lang/String;

    .line 1031
    .end local v26    # "reqFields":[I
    .end local v27    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v28    # "retVal":Ljava/lang/String;
    :cond_36
    const-string v37, "1"

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3e

    .line 1032
    if-eqz v19, :cond_3d

    invoke-interface/range {v19 .. v19}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v37

    if-eqz v37, :cond_3d

    .line 1033
    const-string v37, "ims_reg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v38, v0

    const v39, 0x7f0a0353

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v37, "Status"

    const-string v38, "KEY_SMI_STATUS : on"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :goto_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v37

    const-string v38, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v37 .. v38}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3f

    .line 1045
    const-string v37, "persist.sys.roaming_menu"

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_37

    .line 1046
    const-string v37, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 1052
    :cond_37
    :goto_14
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v37

    if-eqz v37, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v37

    if-nez v37, :cond_40

    .line 1053
    const-string v37, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/preference/Preference;

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setFirstCallstatus()V

    .line 1058
    :goto_15
    return-void

    .line 962
    .end local v19    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .end local v28    # "retVal":Ljava/lang/String;
    .end local v30    # "serial":Ljava/lang/String;
    .end local v31    # "serialNum":Ljava/lang/String;
    :cond_38
    const-string v30, "ril.serialnumber"

    goto/16 :goto_f

    .line 971
    .restart local v30    # "serial":Ljava/lang/String;
    .restart local v31    # "serialNum":Ljava/lang/String;
    :cond_39
    const-string v37, "factorydatareset"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 978
    :cond_3a
    const-string v37, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1016
    .restart local v4    # "ERI_SysProp":Ljava/lang/String;
    :cond_3b
    const-string v37, "eri_version"

    const-string v38, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1019
    .end local v4    # "ERI_SysProp":Ljava/lang/String;
    :cond_3c
    const-string v37, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1037
    .restart local v19    # "mImsInterfaceForGeneral":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .restart local v28    # "retVal":Ljava/lang/String;
    :cond_3d
    const-string v37, "ims_reg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v38, v0

    const v39, 0x7f0a0354

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v37, "Status"

    const-string v38, "KEY_SMI_STATUS : off"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1041
    :cond_3e
    const-string v37, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1048
    :cond_3f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStatusRoamingMenu()Z

    move-result v37

    if-nez v37, :cond_37

    .line 1049
    const-string v37, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1056
    :cond_40
    const-string v37, "first_call_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 593
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 597
    .local v12, "intent":Landroid/content/Intent;
    const-string v19, "sim Id"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 598
    const-string v19, "sim Id"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    .line 599
    const-string v19, "Status"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mActivePhone : ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    new-instance v19, Lcom/android/settings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 602
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 605
    const/16 v17, 0x0

    .local v17, "simSlotNum":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    aput-object v19, v20, v17

    .line 605
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 609
    :cond_1
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 610
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 612
    const v19, 0x7f070040

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 613
    const-string v19, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 614
    const-string v19, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 615
    const-string v19, "bt_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 617
    const-string v19, "wimax_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 618
    const-string v19, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0a00c1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 628
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 631
    const-string v19, "VZW"

    sget-object v20, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 632
    new-instance v15, Ljava/io/File;

    const-string v19, "/efs/LastResetDate.txt"

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v15, "resetFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 634
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->isResetFileExist:Ljava/lang/Boolean;

    .line 635
    const/4 v10, 0x0

    .line 637
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 639
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 640
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 641
    .local v4, "calendar":Ljava/util/Calendar;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v19, "MM/dd/yyyy HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    .local v16, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    :goto_2
    :try_start_3
    const-string v5, ""

    .line 650
    .local v5, "dateFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "date_format"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, "dateFormatSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v19

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 653
    .local v7, "date_string":Ljava/lang/String;
    const-string v19, "factorydatareset"

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 655
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v5    # "dateFormat":Ljava/lang/String;
    .end local v6    # "dateFormatSetting":Ljava/lang/String;
    .end local v7    # "date_string":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v8

    move-object v10, v11

    .line 657
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 659
    if-eqz v10, :cond_2

    .line 661
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 671
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "resetFile":Ljava/io/File;
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 672
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    aput-object v20, v19, v17

    .line 672
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 644
    .restart local v4    # "calendar":Ljava/util/Calendar;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "resetFile":Ljava/io/File;
    .restart local v16    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v8

    .line 646
    .local v8, "e":Ljava/text/ParseException;
    :try_start_6
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 659
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v8    # "e":Ljava/text/ParseException;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v19

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v10, :cond_3

    .line 661
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 663
    :cond_3
    :goto_7
    throw v19

    .line 659
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_4
    if-eqz v11, :cond_2

    .line 661
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 662
    :catch_2
    move-exception v19

    goto :goto_4

    .line 676
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "resetFile":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    .line 677
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    move-object/from16 v19, v0

    const-string v20, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    aput-object v20, v19, v17

    .line 677
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 681
    :cond_6
    const-string v19, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 682
    const-string v19, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mEthernetMacAddressPref:Landroid/preference/Preference;

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->hasWimax()Z

    move-result v19

    if-nez v19, :cond_7

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 689
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 692
    :cond_7
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 693
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_9
    if-ge v9, v13, :cond_8

    aget-object v18, v3, v9

    .line 694
    .local v18, "sintent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 697
    .end local v18    # "sintent":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v19

    new-instance v20, Lcom/android/settings/deviceinfo/Status$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$7;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 728
    return-void

    .line 662
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "resetFile":Ljava/io/File;
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v20

    goto/16 :goto_7

    .line 659
    :catchall_1
    move-exception v19

    goto/16 :goto_6

    .line 655
    :catch_5
    move-exception v8

    goto/16 :goto_3
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 1914
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->finish()V

    .line 1915
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1092
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1094
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1096
    invoke-direct {p0, v5}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 1098
    const/4 v1, 0x0

    .local v1, "simSlotNum":I
    :goto_0
    iget v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 1099
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1098
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    .end local v1    # "simSlotNum":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_1

    .line 1106
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_1
    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1112
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 1114
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1118
    :goto_2
    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 1121
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1125
    :goto_3
    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 1127
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 1129
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1134
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1115
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1116
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1122
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1123
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 1130
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1131
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1062
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1064
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 1068
    iget v1, p0, Lcom/android/settings/deviceinfo/Status;->mActivePhone:I

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->updateStatus(I)V

    .line 1069
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 1071
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1075
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1080
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1082
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1084
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 1087
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1088
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1975
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1976
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->finish()V

    .line 1978
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 1549
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 1550
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 1551
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 1552
    return-void
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "activePhone"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1339
    const/4 v1, 0x0

    .line 1340
    .local v1, "preferenceStrength":Landroid/preference/Preference;
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSignalStrength() slotId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / activePhone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*** "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    new-array v6, v6, [Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    .line 1343
    const/4 v5, 0x0

    .local v5, "simSlotNum":I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneCount:I

    if-ge v5, v6, :cond_1

    .line 1344
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    aput-object v7, v6, v5

    .line 1345
    if-ne p2, v5, :cond_0

    .line 1346
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v6, v5

    .line 1343
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1350
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1351
    if-eqz v1, :cond_2

    .line 1352
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1354
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    .line 1355
    .local v4, "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v3

    .line 1357
    .local v3, "signalAsu":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1394
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "signalAsu":I
    .end local v4    # "signalDbm":I
    :cond_2
    :goto_1
    return-void

    .line 1363
    :cond_3
    if-eqz v1, :cond_2

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1366
    .restart local v2    # "r":Landroid/content/res/Resources;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v4

    .line 1367
    .restart local v4    # "signalDbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v3

    .line 1368
    .restart local v3    # "signalAsu":I
    const-string v6, "Combination"

    const-string v7, "Combination"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1370
    const/4 v6, -0x1

    if-eq v6, v3, :cond_4

    const/16 v6, 0x63

    if-eq v6, v3, :cond_4

    const/16 v6, 0xff

    if-ne v6, v3, :cond_5

    .line 1371
    :cond_4
    const/16 v4, -0x71

    .line 1372
    const/4 v3, 0x0

    .line 1383
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a00e8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1388
    const-string v6, "Status"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Status] updateSignalStrength : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a00e7

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a00e8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1375
    :cond_6
    const-string v6, "gsm.network.type"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-static {v6, p2, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "networkType":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v6, v3, :cond_7

    const/16 v6, 0x63

    if-eq v6, v3, :cond_7

    const/16 v6, 0xff

    if-eq v6, v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1378
    :cond_7
    const/16 v4, -0x71

    .line 1379
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1555
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 1556
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 1558
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1559
    const-wide/16 v2, 0x1

    .line 1562
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1563
    return-void
.end method
