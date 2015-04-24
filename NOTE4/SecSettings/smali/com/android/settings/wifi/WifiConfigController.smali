.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;,
        Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static mCanceltoForget:Z

.field private static mForgetCheck:Z

.field private static mSaved:Z

.field private static mVzwNegativeButton:I

.field private static mVzwNeutralButton:I

.field private static mVzwPositiveButton:I


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_VZW_CANCEL:I

.field private WIFI_VZW_CONNECT:I

.field private WIFI_VZW_EDIT:I

.field private WIFI_VZW_FORGET:I

.field private WIFI_VZW_NONE:I

.field private WIFI_VZW_SAVE:I

.field private bIsChangedSecurity:Z

.field private bIsChangedSsid:Z

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eToast:Landroid/widget/Toast;

.field private hpToast:Landroid/widget/Toast;

.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAutoGenFirstTime:Z

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInXlSetupWizard:Z

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRetry:Z

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimNum:I

.field private mSsidView:Landroid/widget/EditText;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private pToast:Landroid/widget/Toast;

.field passwordWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;

.field simOperator:Ljava/lang/String;

.field simslot2only:Ljava/lang/String;

.field simstate:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    .line 136
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 137
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 138
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    .line 238
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 239
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 240
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    return-void

    .line 154
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 140
    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 141
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 143
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 172
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 202
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 203
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 204
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 205
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 213
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 218
    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 219
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 220
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 221
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 241
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2571
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 2602
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 253
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    .line 254
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 255
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 140
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 141
    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 143
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 172
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 202
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 203
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 204
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 205
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 213
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 214
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 218
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 219
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 220
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 221
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 225
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 226
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 241
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2571
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 2602
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 269
    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 270
    iput-object p6, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 272
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZZ)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "savedAP"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 140
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 141
    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 143
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 172
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 202
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 203
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 204
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 205
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 213
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 214
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 218
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 219
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 220
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 221
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 225
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 226
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 241
    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2571
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 2602
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 261
    sput-boolean p6, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    .line 262
    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040280

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 825
    const v1, 0x7f100258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 827
    return-void
.end method

.method private checkIp4vAddress(Landroid/net/LinkProperties;)Z
    .locals 5
    .param p1, "mLinkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x0

    .line 2087
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2088
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2089
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    .line 2096
    :cond_0
    :goto_1
    return v2

    .line 2092
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    .line 2093
    const/4 v2, 0x1

    goto :goto_1

    .line 2088
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 7
    .param p1, "inetAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 1358
    const-string v4, "WifiConfigController"

    const-string v5, "generateBlankFields"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v3, -0x1

    .line 1361
    .local v3, "networkPrefixLength":I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1363
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a04d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    const/16 v3, 0x18

    .line 1377
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1380
    :try_start_0
    invoke-static {p1, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    .line 1381
    .local v2, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1382
    .local v0, "addr":[B
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 1383
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1389
    .end local v0    # "addr":[B
    .end local v2    # "netPart":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1391
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a04cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    :cond_2
    return-void

    .line 1368
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1369
    if-ltz v3, :cond_4

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 1370
    :cond_4
    const/16 v3, 0x18

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v1

    .line 1373
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v3, 0x18

    goto :goto_0

    .line 1385
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1384
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1352
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    :goto_0
    return-object v1

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1353
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;
    .locals 9
    .param p1, "mLinkProperties"    # Landroid/net/LinkProperties;
    .param p2, "getType"    # I

    .prologue
    .line 2100
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2101
    .local v4, "ipv6Addr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2102
    .local v1, "getStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2103
    .local v6, "startIdx":I
    const/4 v0, 0x0

    .line 2104
    .local v0, "endIdx":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2105
    .local v5, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2106
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_0

    .line 2107
    add-int/lit8 v6, v3, 0x2

    .line 2108
    move v3, v6

    .line 2110
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    if-eqz v6, :cond_2

    .line 2111
    move v0, v3

    .line 2112
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    .line 2113
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 2120
    .end local v1    # "getStr":Ljava/lang/String;
    .local v2, "getStr":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 2115
    .end local v2    # "getStr":Ljava/lang/String;
    .restart local v1    # "getStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2105
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 2120
    .end local v1    # "getStr":Ljava/lang/String;
    .restart local v2    # "getStr":Ljava/lang/String;
    goto :goto_2
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 831
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 832
    const-string v1, "WifiConfigController"

    const-string v2, "Force level of wifi signal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 835
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 2877
    if-nez p1, :cond_1

    move v0, v1

    .line 2886
    :cond_0
    :goto_0
    return v0

    .line 2880
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2881
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2880
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2886
    goto :goto_0
.end method

.method private initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 47
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    .line 274
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 275
    .local v42, "salesCode":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 276
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 278
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 279
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 280
    if-nez p3, :cond_5

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 282
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 283
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    .line 285
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    .line 288
    .local v41, "res":Landroid/content/res/Resources;
    const/16 v20, 0x0

    .line 290
    .local v20, "bConnectingState":Z
    const v4, 0x7f0c004c

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 296
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x1090008

    const v9, 0x7f0c005d

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v6, v7, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 301
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x1090008

    const v9, 0x7f0c005e

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v6, v7, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x7f0a045e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100601

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005fa

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 312
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 316
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c003a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 317
    .local v15, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v15, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 321
    .end local v15    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    new-instance v37, Lcom/android/settings/Utils$LengthFilter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 323
    .local v37, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a03ff

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    aput-object v37, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 336
    new-instance v15, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c003a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v4, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 337
    .restart local v15    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v15, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 341
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v4, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005e9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005ef

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 346
    new-instance v16, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x7f04029f

    const v7, 0x1020014

    const v9, 0x7f0c003d

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v6, v7, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 349
    .local v16, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 354
    .end local v16    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100618

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100619

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f10061e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a2

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 367
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 370
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059e

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 729
    .end local v15    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2
    :goto_2
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_40

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_40

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v6, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_3f

    .line 732
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 734
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 735
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 736
    if-nez v20, :cond_3e

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a0422

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 738
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 774
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-nez v4, :cond_4

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 777
    :cond_4
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 778
    return-void

    .line 280
    .end local v20    # "bConnectingState":Z
    .end local v37    # "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    .end local v41    # "res":Landroid/content/res/Resources;
    :cond_5
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 351
    .restart local v15    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v20    # "bConnectingState":Z
    .restart local v37    # "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    .restart local v41    # "res":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1002bc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 372
    .end local v15    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    .line 375
    .local v30, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v45

    .line 376
    .local v45, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v44

    .line 379
    .local v44, "signalLevel":Ljava/lang/String;
    move-object/from16 v31, v30

    .line 380
    .local v31, "group2":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v34

    .line 381
    .local v34, "info":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v38

    .line 383
    .local v38, "level":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100075

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 384
    .local v35, "infoMsg":Landroid/widget/TextView;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-eq v0, v4, :cond_8

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-eq v0, v4, :cond_8

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-eq v0, v4, :cond_8

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_24

    .line 388
    :cond_8
    const/16 v20, 0x1

    .line 393
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_25

    .line 397
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f10061a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31    # "group2":Landroid/view/ViewGroup;
    check-cast v31, Landroid/view/ViewGroup;

    .line 402
    .restart local v31    # "group2":Landroid/view/ViewGroup;
    :goto_5
    if-eqz v45, :cond_a

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isReconnecting()I

    move-result v32

    .line 404
    .local v32, "iShow":I
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_26

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_26

    .line 407
    const v4, 0x7f0a0447

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a046c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 412
    .end local v32    # "iShow":I
    :cond_a
    :goto_6
    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_c

    .line 413
    :cond_b
    if-eqz v44, :cond_c

    .line 414
    const v4, 0x7f0a0446

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 418
    :cond_c
    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_d

    .line 419
    const v4, 0x7f0a0448

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Mbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 422
    :cond_d
    const v4, 0x7f0a0445

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 425
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_f

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    .line 427
    .local v22, "config_details":Landroid/net/wifi/WifiConfiguration;
    if-eqz v22, :cond_f

    .line 428
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 429
    const v4, 0x7f0a03b5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 431
    :cond_e
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 432
    const v4, 0x7f0a03b6

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 438
    .end local v22    # "config_details":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    const/16 v43, 0x0

    .line 439
    .local v43, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_16

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    .line 441
    .local v21, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v6, :cond_27

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 443
    const/16 v43, 0x1

    .line 445
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v46

    .line 446
    .local v46, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v46, :cond_10

    move-object/from16 v0, v46

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_10

    .line 447
    const v4, 0x7f0a044a

    move-object/from16 v0, v46

    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 459
    .end local v46    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_10
    :goto_7
    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_15

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v24

    .line 461
    .local v24, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v24, :cond_14

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_14

    .line 462
    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v4, :cond_11

    .line 463
    const v4, 0x7f0a1514

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 464
    :cond_11
    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v4, :cond_12

    .line 465
    const v4, 0x7f0a04cf

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 466
    :cond_12
    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v4, :cond_13

    .line 467
    const v4, 0x7f0a04cb

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 468
    :cond_13
    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v4, :cond_14

    .line 469
    const v4, 0x7f0a04cd

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 471
    :cond_14
    if-eqz v34, :cond_15

    .line 472
    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v18

    .line 473
    .local v18, "ap_mac":Ljava/lang/String;
    if-eqz v18, :cond_15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 474
    const v4, 0x7f0a1505

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 477
    .end local v18    # "ap_mac":Ljava/lang/String;
    .end local v24    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_15
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v6, :cond_28

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 479
    const/16 v43, 0x1

    .line 487
    .end local v21    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2a

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 491
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v4, :cond_18

    .line 492
    const/4 v4, -0x1

    move/from16 v0, v38

    if-eq v0, v4, :cond_17

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_2b

    .line 493
    :cond_17
    const/16 v4, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 500
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, v4, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    if-eqz v4, :cond_19

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 502
    .local v28, "expiration":J
    const-wide/16 v6, 0x0

    cmp-long v4, v28, v6

    if-nez v4, :cond_2c

    .line 503
    const v4, 0x7f0a058a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a058c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 505
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_19

    const-string v4, "WifiConfigController"

    const-string v6, "Shared network\nAccess Unlimited"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v28    # "expiration":J
    :cond_19
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v4, :cond_1b

    .line 517
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100618

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100619

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f10061e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 528
    if-eqz v43, :cond_1b

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100619

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f10061a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_1b
    const-string v4, "TGY"

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_1c

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v6, "SIM"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v40

    .line 537
    .local v40, "pos":I
    if-ltz v40, :cond_1c

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 541
    .end local v40    # "pos":I
    :cond_1c
    const-string v4, "SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 542
    const-string v4, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 543
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_1d

    .line 544
    const-string v4, "WifiConfigController"

    const-string v6, "--Found access point SFR WiFi Mobile"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_1e

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v6, "SIM"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v40

    .line 548
    .restart local v40    # "pos":I
    if-ltz v40, :cond_1e

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 554
    .end local v40    # "pos":I
    :cond_1e
    const/16 v19, 0x0

    .line 556
    .local v19, "bCCMode":Z
    const-string v4, "security.mdpp"

    const-string v6, "None"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 557
    .local v39, "mdppProperty":Ljava/lang/String;
    const-string v4, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mdpp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v4, "Enabled"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "Enforcing"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    .line 560
    .local v26, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v26, :cond_21

    .line 561
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v25

    .line 562
    .local v25, "eapMethod":I
    const/4 v4, 0x6

    move/from16 v0, v25

    if-eq v0, v4, :cond_20

    const/4 v4, 0x7

    move/from16 v0, v25

    if-ne v0, v4, :cond_21

    .line 563
    :cond_20
    const/16 v19, 0x1

    .line 568
    .end local v25    # "eapMethod":I
    .end local v26    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v4, :cond_2f

    .line 569
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 570
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_2d

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005ec

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v4, :cond_23

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 574
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v33

    .line 575
    .local v33, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v33, :cond_22

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 578
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 589
    .end local v33    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1002bc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f1005b9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a2

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059e

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 607
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 608
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    .line 390
    .end local v19    # "bCCMode":Z
    .end local v39    # "mdppProperty":Ljava/lang/String;
    .end local v43    # "showAdvancedFields":Z
    :cond_24
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 399
    :cond_25
    move-object/from16 v31, v30

    goto/16 :goto_5

    .line 409
    .restart local v32    # "iShow":I
    :cond_26
    const v4, 0x7f0a0447

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-static {v6, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 451
    .end local v32    # "iShow":I
    .restart local v21    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v43    # "showAdvancedFields":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v24

    .line 454
    .restart local v24    # "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v24, :cond_10

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_10

    .line 455
    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v4, :cond_10

    .line 456
    const v4, 0x7f0a044a

    move-object/from16 v0, v24

    iget v6, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v6}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 480
    .end local v24    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_28
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v6, :cond_29

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 482
    const/16 v43, 0x1

    goto/16 :goto_8

    .line 484
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 487
    .end local v21    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2a
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto/16 :goto_9

    .line 495
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_a

    .line 507
    .restart local v28    # "expiration":J
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v28

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v28

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 509
    .local v23, "dateString":Ljava/lang/String;
    const v4, 0x7f0a058a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a058d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v23, v9, v10

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v6}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 511
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_19

    const-string v4, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared network\nExpires on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 581
    .end local v23    # "dateString":Ljava/lang/String;
    .end local v28    # "expiration":J
    .restart local v19    # "bCCMode":Z
    .restart local v39    # "mdppProperty":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v4, :cond_23

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 583
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v33

    .line 584
    .restart local v33    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v33, :cond_23

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_c

    .line 610
    .end local v33    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a2

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 613
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v45

    .line 615
    if-nez v45, :cond_30

    if-nez v44, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v4, :cond_39

    :cond_31
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v4, :cond_39

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059e

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 617
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 618
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 620
    :cond_32
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 621
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v4, :cond_33

    .line 622
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 624
    :cond_33
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_35

    .line 626
    const/16 v4, 0x8

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 627
    if-eqz v35, :cond_35

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v4, :cond_34

    .line 629
    const v4, 0x7f0a05a9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v9, v6, v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :cond_35
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 670
    const-string v4, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 672
    .local v5, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .line 673
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "isEnterpriseNetwork"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 675
    .local v27, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x0

    const-string v12, "getAllowUserPolicyChanges"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 677
    .local v17, "allowCr":Landroid/database/Cursor;
    if-eqz v27, :cond_37

    if-eqz v17, :cond_37

    .line 679
    :try_start_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 680
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 681
    const-string v4, "isEnterpriseNetwork"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "isEnterpriseNetwork"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "getAllowUserPolicyChanges"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 685
    :cond_36
    const/16 v36, 0x0

    .line 687
    .local v36, "isVendorAp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v36

    .line 690
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    if-nez v4, :cond_3d

    if-nez v36, :cond_3d

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 692
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v36    # "isVendorAp":Z
    :cond_37
    :goto_e
    if-eqz v27, :cond_38

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 703
    :cond_38
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 636
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v17    # "allowCr":Landroid/database/Cursor;
    .end local v27    # "enterpriseCr":Landroid/database/Cursor;
    :cond_39
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-eq v0, v4, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v4, :cond_3b

    .line 637
    const-string v4, "VZW"

    const-string v6, "ALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 640
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 642
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059e

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 661
    :cond_3b
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v4, :cond_3c

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v45

    if-ne v0, v4, :cond_3c

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a1

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 665
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100600

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 693
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v17    # "allowCr":Landroid/database/Cursor;
    .restart local v27    # "enterpriseCr":Landroid/database/Cursor;
    .restart local v36    # "isVendorAp":Z
    :cond_3d
    if-nez v36, :cond_37

    .line 694
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 695
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_e

    .line 698
    .end local v36    # "isVendorAp":Z
    :catchall_0
    move-exception v4

    throw v4

    .line 740
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v17    # "allowCr":Landroid/database/Cursor;
    .end local v19    # "bCCMode":Z
    .end local v27    # "enterpriseCr":Landroid/database/Cursor;
    .end local v30    # "group":Landroid/view/ViewGroup;
    .end local v31    # "group2":Landroid/view/ViewGroup;
    .end local v34    # "info":Landroid/net/wifi/WifiInfo;
    .end local v35    # "infoMsg":Landroid/widget/TextView;
    .end local v38    # "level":I
    .end local v39    # "mdppProperty":Ljava/lang/String;
    .end local v43    # "showAdvancedFields":Z
    .end local v44    # "signalLevel":Ljava/lang/String;
    .end local v45    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const-string v6, ""

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 741
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_3

    .line 744
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a0422

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059e

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 747
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 748
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 749
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_3

    .line 752
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 753
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    sput v4, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    goto/16 :goto_3

    .line 756
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-nez v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_43

    :cond_42
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v4, :cond_43

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 759
    :cond_43
    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v6, :cond_44

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a1508

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 763
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto/16 :goto_3

    .line 764
    :cond_44
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v6, :cond_45

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a059f

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 767
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto/16 :goto_3

    .line 769
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v6, 0x7f0a05a3

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v13, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v14, :cond_1

    .line 1284
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v8

    .line 1286
    .local v8, "result":I
    if-eqz v8, :cond_1

    move v0, v12

    .line 1347
    .end local v8    # "result":I
    :goto_1
    return v0

    .line 1279
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 1291
    :cond_1
    const/4 v9, 0x0

    .line 1292
    .local v9, "selectedPosition":I
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1295
    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 1297
    if-ne v9, v13, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 1298
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    .local v1, "host":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1301
    .local v7, "portStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1302
    .local v5, "exclusionList":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1305
    :cond_3
    const/4 v2, 0x0

    .line 1306
    .local v2, "port":I
    const/4 v8, 0x0

    .line 1308
    .restart local v8    # "result":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1309
    if-eqz v5, :cond_4

    .line 1310
    invoke-static {v1, v7, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1315
    :cond_4
    :goto_2
    if-nez v8, :cond_9

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10061e

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1319
    .local v3, "user":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1320
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v12

    .line 1321
    goto/16 :goto_1

    .line 1312
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1313
    .local v6, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0a0185

    goto :goto_2

    .line 1323
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "user":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1324
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_7
    :goto_3
    move v0, v13

    .line 1347
    goto/16 :goto_1

    .line 1328
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "portStr":Ljava/lang/String;
    .restart local v8    # "result":I
    :cond_8
    if-eqz v5, :cond_7

    .line 1329
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3

    :cond_9
    move v0, v12

    .line 1333
    goto/16 :goto_1

    .line 1335
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_a
    const/4 v0, 0x2

    if-ne v9, v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1336
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 1338
    .local v11, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v12

    .line 1339
    goto/16 :goto_1

    .line 1341
    :cond_b
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1342
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_c

    move v0, v12

    .line 1343
    goto/16 :goto_1

    .line 1345
    :cond_c
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 20
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 2503
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const/16 v18, 0x3f2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 2504
    .local v9, "certs":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 2505
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .end local v9    # "certs":[Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v9, v17

    .line 2530
    .restart local v9    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2531
    .local v12, "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "WifiConfigController"

    const-string v18, "****Trying to Load certificates from CCM*****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const-string v17, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2534
    :try_start_0
    const-string v17, "knox_ccm_policy"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    .line 2536
    .local v8, "ccmVersion":Ljava/lang/String;
    :goto_1
    const-string v17, "3.0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2537
    const-string v17, "WifiConfigController"

    const-string v18, "Fetching WiFi aliases from CCM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v7

    .line 2539
    .local v7, "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 2540
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    .line 2541
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2542
    .local v6, "ccmCertAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " [KNOX]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2546
    .end local v6    # "ccmCertAlias":Ljava/lang/String;
    .end local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccmVersion":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 2547
    .local v11, "e":Landroid/os/RemoteException;
    const-string v17, "WifiConfigController"

    const-string v18, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2550
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 2552
    .restart local v9    # "certs":[Ljava/lang/String;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v17, 0x1090008

    move/from16 v0, v17

    invoke-direct {v3, v10, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2554
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2555
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2556
    return-void

    .line 2508
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v17, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2509
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v5, "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "USRCERT_"

    const/16 v19, 0x3f2

    invoke-virtual/range {v17 .. v19}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 2511
    .local v15, "installedCerts":[Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 2512
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    .line 2513
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_5
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 2514
    aget-object v17, v9, v13

    aget-object v18, v15, v16

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2515
    aget-object v17, v9, v13

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2513
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 2512
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2521
    .end local v13    # "i":I
    .end local v16    # "j":I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 2524
    .end local v5    # "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "installedCerts":[Ljava/lang/String;
    .restart local v9    # "certs":[Ljava/lang/String;
    :cond_7
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 2525
    .local v4, "array":[Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v17

    .line 2526
    const/16 v17, 0x0

    const/16 v18, 0x1

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2527
    move-object v9, v4

    goto/16 :goto_0

    .line 2535
    .end local v4    # "array":[Ljava/lang/String;
    .restart local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2544
    .restart local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "ccmVersion":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 2477
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2478
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 2479
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2489
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 2481
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2482
    :cond_2
    if-eqz v0, :cond_0

    .line 2483
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2486
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2492
    if-eqz p1, :cond_0

    .line 2493
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2494
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2495
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2498
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100611

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    :cond_0
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10060e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1914
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1915
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100610

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1931
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    :cond_0
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2015
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2019
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1005ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100614

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2021
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10060d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1909
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1910
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2559
    if-eqz p2, :cond_0

    .line 2561
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 2562
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2563
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2564
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2569
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 2562
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1919
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1920
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 2411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2412
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2413
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9
    .param p1, "eapMethod"    # I

    .prologue
    const v8, 0x7f100611

    const v7, 0x7f10060b

    const/16 v6, 0x8

    const v5, 0x7f10060d

    const/4 v4, 0x0

    .line 1799
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10060a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100610

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10060e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1005ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1806
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100614

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1812
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1896
    :goto_0
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v2, :cond_1

    .line 1897
    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_9

    .line 1898
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSimCheckFields()V

    .line 1905
    :cond_1
    :goto_1
    return-void

    .line 1815
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1816
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1817
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1818
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 1821
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10060f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1822
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1823
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1824
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    .line 1828
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_2

    .line 1829
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1830
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1832
    :cond_2
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_3

    .line 1833
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    const-string v2, "CMCC-AUTO"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1834
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1835
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1838
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1839
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 1844
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_4

    .line 1845
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1846
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1848
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1849
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_0

    .line 1855
    :pswitch_4
    const/4 v1, 0x0

    .line 1856
    .local v1, "immView":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_7

    .line 1857
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    .line 1858
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1859
    .restart local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    .line 1860
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1863
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_6

    .line 1864
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1865
    .restart local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    .line 1866
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1869
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    .line 1870
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1871
    .restart local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_7

    .line 1872
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1876
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1877
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1878
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1879
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    .line 1880
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1881
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_0

    .line 1884
    .end local v1    # "immView":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1886
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_8

    .line 1887
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1888
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1890
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1891
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1892
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_0

    .line 1901
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100626

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1902
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100626

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 25

    .prologue
    .line 2123
    const/4 v15, 0x0

    .line 2125
    .local v15, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100600

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .line 2131
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    .line 2132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100602

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 2134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100603

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    .line 2135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100604

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    .line 2139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100605

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 2144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100606

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    .line 2148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100607

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    .line 2152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2154
    :cond_1
    if-eqz v15, :cond_7

    .line 2155
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v24

    .line 2156
    .local v24, "staticConfig":Landroid/net/StaticIpConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_11

    .line 2157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 2158
    .local v21, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2159
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/LinkAddress;

    .line 2160
    .local v22, "linkAddress":Landroid/net/LinkAddress;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2172
    .end local v22    # "linkAddress":Landroid/net/LinkAddress;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/RouteInfo;

    .line 2173
    .local v23, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual/range {v23 .. v23}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2179
    .end local v23    # "route":Landroid/net/RouteInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 2180
    .local v17, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v16, 0x0

    .line 2181
    .local v16, "dns":Ljava/net/InetAddress;
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2182
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "dns":Ljava/net/InetAddress;
    check-cast v16, Ljava/net/InetAddress;

    .line 2183
    .restart local v16    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    :cond_5
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2189
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "dns":Ljava/net/InetAddress;
    check-cast v16, Ljava/net/InetAddress;

    .line 2190
    .restart local v16    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    .end local v16    # "dns":Ljava/net/InetAddress;
    .end local v17    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_7

    .line 2228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2275
    .end local v24    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    .line 2276
    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2277
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2278
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2280
    .local v18, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2282
    .local v14, "allowCr":Landroid/database/Cursor;
    if-eqz v18, :cond_b

    if-eqz v14, :cond_b

    .line 2284
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2285
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2286
    const-string v1, "isEnterpriseNetwork"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_b

    .line 2291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2293
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2294
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2295
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    :cond_b
    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2303
    :cond_c
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2306
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "allowCr":Landroid/database/Cursor;
    .end local v18    # "enterpriseCr":Landroid/database/Cursor;
    :cond_d
    return-void

    .line 2165
    .restart local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v22    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v24    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_e
    const/4 v12, 0x1

    .line 2166
    .local v12, "GET_IPV4_ADDR":I
    const/4 v13, 0x2

    .line 2167
    .local v13, "GET_PREFIX_LENGTH":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2186
    .end local v12    # "GET_IPV4_ADDR":I
    .end local v13    # "GET_PREFIX_LENGTH":I
    .end local v22    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v16    # "dns":Ljava/net/InetAddress;
    .restart local v17    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2193
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2196
    .end local v16    # "dns":Ljava/net/InetAddress;
    .end local v17    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_11
    if-eqz v24, :cond_6

    .line 2197
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_12

    .line 2198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2203
    :cond_12
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_13

    .line 2204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2207
    :cond_13
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 2208
    .restart local v17    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v16, 0x0

    .line 2209
    .restart local v16    # "dns":Ljava/net/InetAddress;
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2210
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "dns":Ljava/net/InetAddress;
    check-cast v16, Ljava/net/InetAddress;

    .line 2211
    .restart local v16    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    :cond_14
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2218
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "dns":Ljava/net/InetAddress;
    check-cast v16, Ljava/net/InetAddress;

    .line 2219
    .restart local v16    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2214
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2222
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2236
    .end local v16    # "dns":Ljava/net/InetAddress;
    .end local v17    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v24    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_17
    const/16 v20, 0x0

    .line 2237
    .local v20, "immView":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-nez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-nez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v1, :cond_1c

    .line 2238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_1c

    .line 2239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_18

    .line 2240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 2241
    .restart local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_18

    .line 2242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2245
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_19

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 2247
    .restart local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_19

    .line 2248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2251
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_1a

    .line 2252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 2253
    .restart local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_1a

    .line 2254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2257
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_1b

    .line 2258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 2259
    .restart local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_1b

    .line 2260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2263
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 2264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    .line 2265
    .restart local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_1c

    .line 2266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2271
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100602

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2298
    .end local v20    # "immView":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "allowCr":Landroid/database/Cursor;
    .restart local v18    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f100622

    const v6, 0x7f100623

    const/16 v5, 0x8

    const v4, 0x7f100624

    const/4 v3, 0x0

    .line 2024
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 2025
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2032
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2037
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2039
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2040
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2084
    :cond_1
    :goto_1
    return-void

    .line 2029
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2042
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2045
    :cond_4
    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2049
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2055
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2056
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 2060
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2061
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_7

    .line 2062
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2067
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 2069
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2073
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 2075
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2076
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_1

    .line 2077
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2051
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2081
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 19

    .prologue
    .line 2309
    const/4 v13, 0x0

    .line 2311
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1005f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 2317
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 2318
    const v1, 0x7f1005fb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2319
    const v1, 0x7f1005fc

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2320
    const v1, 0x7f10061b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowProxyAuthenticationOptions()V

    .line 2322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1005fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 2324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1005fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 2328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1005ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 2332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100620

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    .line 2336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100621

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    .line 2338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2341
    :cond_1
    if-eqz v13, :cond_2

    .line 2342
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v17

    .line 2343
    .local v17, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v17, :cond_2

    .line 2344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2347
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 2348
    .local v18, "user":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 2349
    .local v15, "password":Ljava/lang/String;
    if-eqz v18, :cond_2

    if-eqz v15, :cond_2

    .line 2350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10061e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10061f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    .end local v15    # "password":Ljava/lang/String;
    .end local v17    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v18    # "user":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 2382
    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2383
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2384
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2386
    .local v14, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2388
    .local v12, "allowCr":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    .line 2390
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2391
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2392
    const-string v1, "isEnterpriseNetwork"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2396
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2397
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2398
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2404
    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2405
    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2408
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "allowCr":Landroid/database/Cursor;
    .end local v14    # "enterpriseCr":Landroid/database/Cursor;
    :cond_8
    return-void

    .line 2357
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    .line 2358
    const v1, 0x7f1005fb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2359
    const v1, 0x7f1005fc

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2360
    const v1, 0x7f10061b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2361
    const v1, 0x7f10061f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 2364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10061c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 2365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2367
    :cond_a
    if-eqz v13, :cond_2

    .line 2368
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v16

    .line 2369
    .local v16, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v16, :cond_2

    .line 2370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2374
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_b
    const v1, 0x7f1005fb

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2375
    const v1, 0x7f1005fc

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2376
    const v1, 0x7f10061b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2377
    const v1, 0x7f10061f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    goto/16 :goto_0

    .line 2400
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "allowCr":Landroid/database/Cursor;
    .restart local v14    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showSecurityFields()V
    .locals 29

    .prologue
    .line 1479
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v2, :cond_1

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    const-string v2, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1487
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_3

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005ec

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1491
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 1492
    .local v21, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_2

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1495
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1499
    .end local v21    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1501
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 1502
    .restart local v21    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_4

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1530
    .end local v21    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005ec

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_7

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100570

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_5

    .line 1535
    const-string v2, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v2, :cond_5

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1540
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005bd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    .line 1541
    .local v23, "mGetPasswordHidden":Landroid/widget/CheckBox;
    if-eqz v23, :cond_6

    .line 1543
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1544
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1546
    .local v16, "cr":Landroid/database/Cursor;
    if-eqz v16, :cond_6

    .line 1548
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1549
    const-string v2, "getPasswordHidden"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1550
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1551
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1564
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v16    # "cr":Landroid/database/Cursor;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100570

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005bd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0a045d

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 1602
    .end local v23    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_c

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100614

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1508
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_9

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005ec

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1518
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_a

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1524
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1553
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v16    # "cr":Landroid/database/Cursor;
    .restart local v23    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_b
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1556
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1608
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v16    # "cr":Landroid/database/Cursor;
    .end local v23    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    const/4 v15, 0x0

    .line 1612
    .local v15, "bCCMode":Z
    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1613
    .local v24, "mdppProperty":Ljava/lang/String;
    const-string v2, "Enabled"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "Enforcing"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1614
    :cond_d
    const/4 v15, 0x1

    .line 1616
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_1f

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1618
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string v2, "PEAP"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    const-string v2, "TLS"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    const-string v2, "TTLS"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    const-string v2, "PWD"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    const-string v2, "SIM"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    const-string v2, "AKA"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    const-string v2, "AKA\'"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    if-nez v15, :cond_f

    .line 1630
    const-string v2, "FAST"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    :cond_f
    if-nez v15, :cond_10

    .line 1632
    const-string v2, "LEAP"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    :cond_10
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1090008

    move-object/from16 v0, v22

    invoke-direct {v13, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1634
    .local v13, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10060c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1005f7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_11

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1658
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1e

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    .line 1660
    .local v19, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v18

    .line 1661
    .local v18, "eapMethod":I
    move/from16 v17, v18

    .line 1662
    .local v17, "currentIndex":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-eq v2, v4, :cond_1c

    .line 1669
    if-eqz v15, :cond_12

    .line 1670
    const/4 v2, 0x6

    move/from16 v0, v18

    if-le v0, v2, :cond_12

    add-int/lit8 v17, v17, -0x1

    .line 1671
    :cond_12
    if-eqz v15, :cond_13

    .line 1672
    const/4 v2, 0x7

    move/from16 v0, v18

    if-le v0, v2, :cond_13

    add-int/lit8 v17, v17, -0x1

    .line 1677
    :cond_13
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v26

    .line 1678
    .local v26, "phase2Method":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1679
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1681
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v25

    .line 1682
    .local v25, "phase1Value":Ljava/lang/String;
    if-eqz v25, :cond_14

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "fast_provisioning="

    const-string v5, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1685
    :cond_14
    sparse-switch v18, :sswitch_data_0

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1707
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v27

    .line 1713
    .local v27, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v17    # "currentIndex":I
    .end local v18    # "eapMethod":I
    .end local v19    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v25    # "phase1Value":Ljava/lang/String;
    .end local v26    # "phase2Method":I
    .end local v27    # "position":I
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1747
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1748
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1749
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1751
    .local v20, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1753
    .local v14, "allowCr":Landroid/database/Cursor;
    if-eqz v20, :cond_1a

    if-eqz v14, :cond_1a

    .line 1755
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1756
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1757
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1759
    const-string v2, "WifiPolicy"

    const-string v4, "Enterprise Wifi settings not editable"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1761
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1762
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1763
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1764
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1770
    :cond_1a
    if-eqz v20, :cond_1b

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1771
    :cond_1b
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1674
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "allowCr":Landroid/database/Cursor;
    .end local v20    # "enterpriseCr":Landroid/database/Cursor;
    .restart local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v17    # "currentIndex":I
    .restart local v18    # "eapMethod":I
    .restart local v19    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1c
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ne v0, v2, :cond_1d

    add-int/lit8 v17, v17, -0x2

    goto/16 :goto_3

    .line 1675
    :cond_1d
    const/4 v2, 0x5

    move/from16 v0, v18

    if-le v0, v2, :cond_13

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 1688
    .restart local v25    # "phase1Value":Ljava/lang/String;
    .restart local v26    # "phase2Method":I
    :sswitch_0
    packed-switch v26, :pswitch_data_0

    .line 1699
    :pswitch_0
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1690
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 1693
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 1696
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 1719
    .end local v17    # "currentIndex":I
    .end local v18    # "eapMethod":I
    .end local v19    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v25    # "phase1Value":Ljava/lang/String;
    .end local v26    # "phase2Method":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1721
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1724
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1725
    .local v28, "spinnerValue":Ljava/lang/String;
    const-string v2, "PEAP"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1726
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1727
    :cond_20
    const-string v2, "TLS"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1728
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1729
    :cond_21
    const-string v2, "TTLS"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1730
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1731
    :cond_22
    const-string v2, "PWD"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1732
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1733
    :cond_23
    const-string v2, "SIM"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1734
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1735
    :cond_24
    const-string v2, "AKA"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1736
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1737
    :cond_25
    const-string v2, "AKA\'"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1738
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1739
    :cond_26
    const-string v2, "FAST"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1740
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1741
    :cond_27
    const-string v2, "LEAP"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1742
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_5

    .line 1766
    .end local v28    # "spinnerValue":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "allowCr":Landroid/database/Cursor;
    .restart local v20    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    throw v2

    .line 1685
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1688
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showSimCheckFields()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x7f100627

    const v11, 0x7f100628

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1937
    new-array v0, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v0, v7

    const-string v6, "0"

    aput-object v6, v0, v8

    .line 1938
    .local v0, "currentOperator":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v1, v7

    const-string v6, "0"

    aput-object v6, v1, v8

    .line 1940
    .local v1, "currentSimState":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1941
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1942
    .local v5, "tempCurrentSimState":[Ljava/lang/String;
    aget-object v6, v5, v7

    aput-object v6, v1, v7

    .line 1943
    aget-object v6, v5, v8

    aput-object v6, v1, v8

    .line 1948
    .end local v5    # "tempCurrentSimState":[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1949
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1950
    .local v4, "tempCurrentOperator":[Ljava/lang/String;
    aget-object v6, v4, v7

    aput-object v6, v0, v7

    .line 1951
    aget-object v6, v4, v8

    aput-object v6, v0, v8

    .line 1956
    .end local v4    # "tempCurrentOperator":[Ljava/lang/String;
    :goto_1
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sim State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Sim State2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simslot2only : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_0
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operator_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " operator_2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f100626

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1959
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f100626

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1961
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1962
    const-string v6, "46000"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46002"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46007"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    move v2, v8

    .line 1963
    .local v2, "isSim1CMCC":Z
    :goto_2
    const-string v6, "46000"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46002"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46007"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v3, v8

    .line 1965
    .local v3, "isSim2CMCC":Z
    :goto_3
    const-string v6, "1"

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1966
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , QC 1CHIP DSDS project"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    if-eqz v2, :cond_4

    .line 1968
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1969
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1970
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 2007
    :cond_4
    :goto_4
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimNum : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2010
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2012
    .end local v2    # "isSim1CMCC":Z
    .end local v3    # "isSim2CMCC":Z
    :cond_5
    return-void

    .line 1945
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    aput-object v6, v1, v7

    goto/16 :goto_0

    .line 1953
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    aput-object v6, v0, v7

    goto/16 :goto_1

    :cond_8
    move v2, v7

    .line 1962
    goto/16 :goto_2

    .restart local v2    # "isSim1CMCC":Z
    :cond_9
    move v3, v7

    .line 1963
    goto :goto_3

    .line 1973
    .restart local v3    # "isSim2CMCC":Z
    :cond_a
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1974
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , 2CHIP/ 1CHIP DSDA "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    if-eqz v3, :cond_4

    .line 1976
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1977
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1978
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto :goto_4

    .line 1981
    :cond_b
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1982
    const-string v6, "WifiConfigController"

    const-string v7, "No Sim Card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1984
    :cond_c
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1985
    const-string v6, "WifiConfigController"

    const-string v9, "2 Sim Cards"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    if-eqz v2, :cond_d

    .line 1987
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1988
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1989
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1990
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 1992
    :cond_d
    if-eqz v3, :cond_4

    .line 1993
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1994
    if-nez v2, :cond_4

    .line 1995
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1996
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1997
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4

    .line 2001
    :cond_e
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 1 only"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    if-eqz v2, :cond_4

    .line 2003
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2004
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4
.end method

.method private updatePasswordVisibility(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    .line 2933
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 2934
    .local v1, "pos":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v2, 0x90

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 2938
    if-ltz v1, :cond_0

    .line 2940
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    :cond_0
    :goto_1
    return-void

    .line 2934
    :cond_1
    const/16 v2, 0x80

    goto :goto_0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Position is not correct "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1396
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 1475
    :goto_0
    return v10

    .line 1398
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1400
    const v10, 0x7f0a04c7

    goto :goto_0

    .line 1403
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1404
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 1405
    const v10, 0x7f0a04c7

    goto :goto_0

    .line 1409
    :cond_2
    :try_start_0
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_3

    .line 1410
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 1411
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    :cond_3
    const/4 v9, -0x1

    .line 1417
    .local v9, "networkPrefixLength":I
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1418
    .local v8, "networkPrefix":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1419
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_6

    .line 1420
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a04d2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1427
    if-ltz v9, :cond_5

    const/16 v10, 0x20

    if-le v9, v10, :cond_7

    .line 1428
    :cond_5
    const v10, 0x7f0a04ca

    goto :goto_0

    .line 1413
    .end local v8    # "networkPrefix":Ljava/lang/String;
    .end local v9    # "networkPrefixLength":I
    :catch_0
    move-exception v3

    .line 1414
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0a04c7

    goto :goto_0

    .line 1423
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "networkPrefix":Ljava/lang/String;
    .restart local v9    # "networkPrefixLength":I
    :cond_6
    const v10, 0x7f0a04ca

    goto :goto_0

    .line 1431
    :cond_7
    :try_start_1
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1436
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1437
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const v10, 0x7f0a04c8

    goto/16 :goto_0

    .line 1432
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1433
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v10, 0x7f0a04ca

    goto/16 :goto_0

    .line 1439
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .line 1441
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1445
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 1447
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "dns1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1451
    const v10, 0x7f0a04c9

    goto/16 :goto_0

    .line 1442
    .end local v0    # "dns1":Ljava/lang/String;
    .end local v1    # "dns2":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1443
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0a04c8

    goto/16 :goto_0

    .line 1454
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "dns1":Ljava/lang/String;
    .restart local v1    # "dns2":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .line 1455
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1457
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 1461
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1468
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 1472
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1458
    :catch_3
    move-exception v3

    .line 1459
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0a04c9

    goto/16 :goto_0

    .line 1463
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1469
    :catch_4
    move-exception v3

    .line 1470
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0a04c9

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2725
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2730
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 14

    .prologue
    .line 840
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiConfigController"

    const-string v11, "enableSubmitIfAppropriate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v8

    .line 842
    .local v8, "submit":Landroid/widget/Button;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v3

    .line 843
    .local v3, "forget":Landroid/widget/Button;
    if-nez v8, :cond_2

    .line 1002
    :cond_1
    :goto_0
    return-void

    .line 846
    :cond_2
    const/4 v9, 0x0

    .line 847
    .local v9, "trimedSsidLength":I
    const/4 v2, 0x1

    .line 848
    .local v2, "enabled":Z
    const/4 v7, 0x0

    .line 849
    .local v7, "passwordInvalid":Z
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_4

    .line 850
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 851
    const/4 v2, 0x0

    .line 853
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 856
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_1a

    .line 857
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 858
    .local v5, "passLen":I
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_f

    .line 859
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 861
    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (retry dialog)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v7, 0x1

    .line 906
    .end local v5    # "passLen":I
    :cond_5
    :goto_1
    const-string v10, "VZW"

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 907
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_7

    .line 908
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 909
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 911
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 912
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 913
    if-eqz v0, :cond_6

    .line 914
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 922
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 923
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 928
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_23

    .line 929
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_8

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v10, :cond_9

    .line 931
    :cond_8
    const/4 v2, 0x1

    .line 932
    const/4 v7, 0x0

    .line 933
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_9

    .line 934
    const/4 v2, 0x0

    .line 935
    const/4 v7, 0x1

    .line 938
    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 939
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 940
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v10, v11, :cond_1c

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v10, :cond_1c

    .line 941
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 942
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v11, 0x7f0a045d

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(I)V

    .line 943
    if-eqz v0, :cond_a

    .line 944
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 964
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 965
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 977
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 978
    const/4 v2, 0x1

    .line 982
    :goto_5
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_c

    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRetry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " password invalid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_c
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_25

    if-eqz v7, :cond_25

    .line 984
    const/4 v2, 0x0

    .line 990
    :cond_d
    :goto_6
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_e

    if-nez v9, :cond_e

    .line 991
    const/4 v2, 0x0

    .line 994
    :cond_e
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 995
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 997
    const-string v10, "VZW"

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 998
    if-eqz v3, :cond_1

    .line 999
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 864
    .restart local v5    # "passLen":I
    :cond_f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    if-eqz v5, :cond_11

    const/16 v10, 0xd

    if-le v5, v10, :cond_10

    const/16 v10, 0x1a

    if-ne v5, v10, :cond_11

    :cond_10
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_17

    const/16 v10, 0x8

    if-ge v5, v10, :cond_17

    .line 867
    :cond_11
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "password":Ljava/lang/String;
    const-string v10, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 869
    .local v4, "isPasswordHex":Z
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    if-eqz v5, :cond_15

    .line 870
    if-nez v4, :cond_12

    .line 871
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 872
    .local v1, "context":Landroid/content/Context;
    const v10, 0x7f0a0477

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    .line 875
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 877
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 879
    .end local v1    # "context":Landroid/content/Context;
    :cond_12
    const/16 v10, 0x1a

    if-le v5, v10, :cond_13

    .line 880
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 881
    .restart local v1    # "context":Landroid/content/Context;
    const v10, 0x7f0a0478

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x1a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    .line 884
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 886
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 888
    .end local v1    # "context":Landroid/content/Context;
    :cond_13
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_14

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 893
    :cond_15
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_16

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 896
    .end local v4    # "isPasswordHex":Z
    .end local v6    # "password":Ljava/lang/String;
    :cond_17
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-eqz v5, :cond_18

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 899
    :cond_18
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_19

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (saved ap)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 903
    .end local v5    # "passLen":I
    :cond_1a
    const-string v10, "WifiConfigController"

    const-string v11, "mPasswordView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 917
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 918
    if-eqz v0, :cond_6

    .line 919
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    .line 947
    :cond_1c
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_1d

    .line 948
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 949
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_1e

    .line 950
    const/4 v7, 0x1

    .line 959
    :cond_1d
    :goto_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 960
    if-eqz v0, :cond_a

    .line 961
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_3

    .line 951
    :cond_1e
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_21

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_21

    .line 953
    :cond_20
    const/4 v7, 0x1

    goto :goto_7

    .line 954
    :cond_21
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1d

    .line 956
    :cond_22
    const/4 v7, 0x1

    goto :goto_7

    .line 968
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_23
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_b

    .line 970
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_b

    .line 971
    const/4 v2, 0x0

    .line 972
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 980
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 985
    :cond_25
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_27

    :cond_26
    if-eqz v7, :cond_27

    .line 986
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 987
    :cond_27
    const-string v10, "VZW"

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 988
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 18

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v13, :cond_0

    .line 1037
    const/4 v3, 0x0

    .line 1275
    :goto_0
    return-object v3

    .line 1040
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1042
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v13, :cond_1

    .line 1043
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1046
    const/4 v13, 0x1

    iput-boolean v13, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1062
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v13, :pswitch_data_0

    .line 1268
    const/4 v3, 0x0

    goto :goto_0

    .line 1047
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 1048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1051
    :cond_2
    const-string v13, "VZW"

    const-string v14, "ALL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1052
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v13, :cond_3

    .line 1053
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f1005b7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1059
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 1057
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1064
    :pswitch_0
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1271
    :cond_5
    :goto_3
    new-instance v13, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v13}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 1068
    :pswitch_1
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1069
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1070
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_5

    .line 1072
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v6

    .line 1073
    .local v6, "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, "password":Ljava/lang/String;
    const/16 v13, 0xa

    if-eq v6, v13, :cond_6

    const/16 v13, 0x1a

    if-eq v6, v13, :cond_6

    const/16 v13, 0x3a

    if-ne v6, v13, :cond_7

    :cond_6
    const-string v13, "[0-9A-Fa-f]*"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1077
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    goto :goto_3

    .line 1079
    :cond_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto/16 :goto_3

    .line 1085
    .end local v6    # "length":I
    .end local v7    # "password":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v13, :cond_8

    .line 1086
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1090
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_5

    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    .restart local v7    # "password":Ljava/lang/String;
    const-string v13, "[0-9A-Fa-f]{64}"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1093
    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1088
    .end local v7    # "password":Ljava/lang/String;
    :cond_8
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    .line 1095
    .restart local v7    # "password":Ljava/lang/String;
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1101
    .end local v7    # "password":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v13, :cond_d

    .line 1102
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1109
    :goto_5
    new-instance v13, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v13}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1110
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1111
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1114
    .local v10, "spinnerValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 1115
    .local v4, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 1116
    .local v8, "phase1Method":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1117
    .local v9, "phase2Method":I
    const-string v13, "PEAP"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1118
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1122
    packed-switch v9, :pswitch_data_1

    .line 1133
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1200
    .local v1, "caCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v1, ""

    .line 1201
    :cond_a
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1203
    .local v2, "clientCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v2, ""

    .line 1204
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1205
    const-string v13, " [KNOX]"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 1208
    :cond_c
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 1209
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1210
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->isShown()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 1217
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1103
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v8    # "phase1Method":I
    .end local v9    # "phase2Method":I
    .end local v10    # "spinnerValue":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v13, :cond_e

    .line 1104
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_5

    .line 1106
    :cond_e
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1107
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_5

    .line 1124
    .restart local v4    # "eapMethod":I
    .restart local v8    # "phase1Method":I
    .restart local v9    # "phase2Method":I
    .restart local v10    # "spinnerValue":Ljava/lang/String;
    :pswitch_4
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1127
    :pswitch_5
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1130
    :pswitch_6
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1136
    :cond_f
    const-string v13, "FAST"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1137
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1138
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1139
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v14, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1141
    packed-switch v9, :pswitch_data_2

    .line 1152
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1143
    :pswitch_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1146
    :pswitch_8
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1149
    :pswitch_9
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1156
    :cond_10
    const-string v13, "TLS"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1157
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1171
    :cond_11
    :goto_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    .line 1158
    :cond_12
    const-string v13, "TTLS"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1159
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1160
    :cond_13
    const-string v13, "PWD"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1161
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1162
    :cond_14
    const-string v13, "SIM"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1163
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1164
    :cond_15
    const-string v13, "AKA"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1165
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1166
    :cond_16
    const-string v13, "AKA\'"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1167
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1168
    :cond_17
    const-string v13, "LEAP"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1169
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    .line 1219
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v2    # "clientCert":Ljava/lang/String;
    :cond_18
    sget-boolean v13, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v13, :cond_19

    .line 1220
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->simnum:I

    goto/16 :goto_3

    .line 1223
    :cond_19
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1228
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v8    # "phase1Method":I
    .end local v9    # "phase2Method":I
    .end local v10    # "spinnerValue":Ljava/lang/String;
    :pswitch_a
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_1a

    .line 1230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1231
    .restart local v7    # "password":Ljava/lang/String;
    const-string v13, "[0-9A-Fa-f]{64}"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1232
    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1237
    .end local v7    # "password":Ljava/lang/String;
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    .line 1238
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    sget-object v13, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    aget v5, v13, v14

    .line 1240
    .local v5, "iType":I
    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_3

    .line 1234
    .end local v5    # "iType":I
    .restart local v7    # "password":Ljava/lang/String;
    :cond_1b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 1245
    .end local v7    # "password":Ljava/lang/String;
    :pswitch_b
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 1246
    new-instance v13, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v13}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1247
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 1248
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    .line 1250
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1254
    .local v11, "wapiAsCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    const-string v11, ""

    .line 1255
    :cond_1c
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_1e

    const-string v13, ""

    :goto_9
    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1260
    .local v12, "wapiUserCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    const-string v12, ""

    .line 1261
    :cond_1d
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    .line 1262
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 1263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_1f

    const-string v13, ""

    :goto_a
    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_3

    .line 1256
    .end local v12    # "wapiUserCert":Ljava/lang/String;
    :cond_1e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "keystore://WAPIAS_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    .line 1263
    .restart local v12    # "wapiUserCert":Ljava/lang/String;
    :cond_1f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "keystore://WAPIUSR_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 1062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1122
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1141
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getDialogButton(I)Z
    .locals 2
    .param p1, "Position"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 783
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 785
    :pswitch_0
    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v1, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 787
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getVzwButton(I)I
    .locals 1
    .param p1, "Position"    # I

    .prologue
    .line 1014
    const/4 v0, -0x1

    .line 1016
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 1029
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 1032
    :goto_0
    return v0

    .line 1018
    :pswitch_0
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 1019
    goto :goto_0

    .line 1022
    :pswitch_1
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 1023
    goto :goto_0

    .line 1026
    :pswitch_2
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 1027
    goto :goto_0

    .line 1016
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 2670
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isNeedtoForgetNetwork()Z
    .locals 2

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1007
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    if-eqz v1, :cond_1

    .line 1008
    :cond_0
    const/4 v0, 0x1

    .line 1010
    :cond_1
    return v0
.end method

.method public isRetryDialog()Z
    .locals 1

    .prologue
    .line 2674
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const v8, 0x7f100628

    const v5, 0x7f100627

    const/4 v4, 0x0

    .line 2739
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 2740
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f1005bd

    if-ne v0, v3, :cond_4

    .line 2742
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2743
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getPasswordHidden"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2745
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2747
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2748
    const-string v0, "getPasswordHidden"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2749
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    .line 2750
    .local v7, "pos":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 2754
    if-ltz v7, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 2757
    :cond_0
    const-string v0, "WifiConfigController"

    const-string v2, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    .end local v7    # "pos":I
    .end local p1    # "view":Landroid/widget/CompoundButton;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2821
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_1
    :goto_2
    return-void

    .line 2750
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v7    # "pos":I
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_2
    const/16 v0, 0x80

    goto :goto_0

    .line 2759
    .end local v7    # "pos":I
    :cond_3
    :try_start_1
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->updatePasswordVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2762
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2775
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v2, 0x7f100619

    if-ne v0, v2, :cond_6

    .line 2776
    if-eqz p2, :cond_5

    .line 2777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10061a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2779
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10061a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2781
    :cond_6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v2, 0x7f100623

    if-ne v0, v2, :cond_7

    .line 2782
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 2784
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    .line 2785
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 2786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f100624

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 2788
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v2, 0x7f100624

    if-ne v0, v2, :cond_8

    .line 2789
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 2791
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    .line 2792
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 2793
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f100623

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 2795
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_8
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v2, 0x7f10061e

    if-ne v0, v2, :cond_a

    .line 2796
    if-eqz p2, :cond_9

    .line 2797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10061f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2801
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto/16 :goto_2

    .line 2799
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f10061f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2802
    :cond_a
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 2803
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2804
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2806
    iput v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 2807
    const-string v0, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(CheckBox) mSimNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2809
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 2811
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_c
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2812
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2813
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2814
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2815
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 2816
    const-string v0, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(CheckBox) mSimNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2818
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2419
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2420
    .local v0, "focusedView":Landroid/view/View;
    const/4 v2, 0x5

    if-ne p2, v2, :cond_e

    .line 2421
    if-eqz v0, :cond_0

    .line 2422
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2423
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2424
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2425
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2473
    :cond_0
    :goto_0
    return v1

    .line 2427
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2428
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2430
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2431
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100611

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2432
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2434
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2435
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2437
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2438
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2439
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2440
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2441
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 2442
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2443
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 2445
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2446
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 2448
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2449
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2450
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 2451
    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2452
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2453
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 2454
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2455
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2456
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 2457
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2458
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2459
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 2460
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2461
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 2462
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 2463
    :cond_c
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2464
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2465
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 2466
    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2467
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2468
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 2473
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x5

    const/4 v1, 0x6

    .line 2825
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 2826
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2828
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    .line 2829
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 2830
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 2833
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 2843
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 2844
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_6

    .line 2845
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2860
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2862
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$4;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2868
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 2869
    return-void

    .line 2835
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    .line 2836
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 2837
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 2838
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 2840
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0

    .line 2847
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2848
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2849
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1

    .line 2851
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 2852
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1

    .line 2853
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 2854
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2874
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2735
    return-void
.end method

.method public updateShowAdvancedOptions()V
    .locals 3

    .prologue
    const v2, 0x7f10061a

    .line 806
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100619

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateShowPassword()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f1005bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 803
    :cond_0
    return-void

    .line 797
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public updateShowProxyAuthenticationOptions()V
    .locals 3

    .prologue
    const v2, 0x7f10061f

    .line 814
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 820
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
